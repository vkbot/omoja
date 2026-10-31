.class public Lcom/example/navistart/LocServ;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static h:Landroidx/fragment/app/h;

.field public static i:Ljava/lang/Boolean;

.field public static j:Z

.field public static k:Landroid/location/LocationManager;

.field public static l:[B

.field public static m:Lorg/json/JSONObject;

.field public static n:Ljava/lang/Boolean;


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public d:Li7/m;

.field public e:F

.field public f:J

.field public final g:Le0/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lcom/example/navistart/LocServ;->i:Ljava/lang/Boolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sput-boolean v1, Lcom/example/navistart/LocServ;->j:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    sput-object v1, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 10
    .line 11
    sput-object v1, Lcom/example/navistart/LocServ;->l:[B

    .line 12
    .line 13
    sput-object v1, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 14
    .line 15
    sput-object v0, Lcom/example/navistart/LocServ;->n:Ljava/lang/Boolean;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/example/navistart/LocServ;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/example/navistart/LocServ;->e:F

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/example/navistart/LocServ;->f:J

    .line 36
    .line 37
    new-instance v0, Le0/i0;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, p0, v1}, Le0/i0;-><init>(Landroid/location/LocationListener;I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/example/navistart/LocServ;->g:Le0/i0;

    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 1
        0x2at
        -0x26t
        0x5dt
        -0x5ft
        0x66t
        0x2t
        0x18t
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 1
        0x66t
        -0x4bt
        0x3et
        -0xet
        0x3t
        0x70t
        0x6et
        0x53t
    .end array-data
.end method

.method public static a(Landroid/location/Location;)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v2, v1, [B

    .line 6
    .line 7
    fill-array-data v2, :array_0

    .line 8
    .line 9
    .line 10
    new-array v3, v1, [B

    .line 11
    .line 12
    fill-array-data v3, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    new-array v2, v2, [B

    .line 31
    .line 32
    fill-array-data v2, :array_2

    .line 33
    .line 34
    .line 35
    new-array v3, v1, [B

    .line 36
    .line 37
    fill-array-data v3, :array_3

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 52
    .line 53
    new-array v2, v1, [B

    .line 54
    .line 55
    fill-array-data v2, :array_4

    .line 56
    .line 57
    .line 58
    new-array v3, v1, [B

    .line 59
    .line 60
    fill-array-data v3, :array_5

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    float-to-double v3, v3

    .line 72
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 76
    .line 77
    new-array v2, v1, [B

    .line 78
    .line 79
    fill-array-data v2, :array_6

    .line 80
    .line 81
    .line 82
    new-array v3, v1, [B

    .line 83
    .line 84
    fill-array-data v3, :array_7

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 99
    .line 100
    const/4 v2, 0x7

    .line 101
    new-array v2, v2, [B

    .line 102
    .line 103
    fill-array-data v2, :array_8

    .line 104
    .line 105
    .line 106
    new-array v3, v1, [B

    .line 107
    .line 108
    fill-array-data v3, :array_9

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    float-to-double v3, v3

    .line 120
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 124
    .line 125
    const/4 v2, 0x5

    .line 126
    new-array v3, v2, [B

    .line 127
    .line 128
    fill-array-data v3, :array_a

    .line 129
    .line 130
    .line 131
    new-array v4, v1, [B

    .line 132
    .line 133
    fill-array-data v4, :array_b

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    float-to-double v4, v4

    .line 145
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    new-instance v0, Lorg/json/JSONObject;

    .line 149
    .line 150
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    .line 163
    .line 164
    const/4 v4, 0x4

    .line 165
    new-array v5, v4, [B

    .line 166
    .line 167
    fill-array-data v5, :array_c

    .line 168
    .line 169
    .line 170
    new-array v6, v1, [B

    .line 171
    .line 172
    fill-array-data v6, :array_d

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    const/4 v6, 0x1

    .line 180
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    new-array v5, v2, [B

    .line 188
    .line 189
    fill-array-data v5, :array_e

    .line 190
    .line 191
    .line 192
    new-array v7, v1, [B

    .line 193
    .line 194
    fill-array-data v7, :array_f

    .line 195
    .line 196
    .line 197
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    const/4 v7, 0x2

    .line 202
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x3

    .line 210
    new-array v5, v5, [B

    .line 211
    .line 212
    fill-array-data v5, :array_10

    .line 213
    .line 214
    .line 215
    new-array v7, v1, [B

    .line 216
    .line 217
    fill-array-data v7, :array_11

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    .line 230
    .line 231
    new-array v5, v4, [B

    .line 232
    .line 233
    fill-array-data v5, :array_12

    .line 234
    .line 235
    .line 236
    new-array v7, v1, [B

    .line 237
    .line 238
    fill-array-data v7, :array_13

    .line 239
    .line 240
    .line 241
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    const/16 v7, 0xb

    .line 246
    .line 247
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    .line 253
    .line 254
    const/4 v5, 0x6

    .line 255
    new-array v5, v5, [B

    .line 256
    .line 257
    fill-array-data v5, :array_14

    .line 258
    .line 259
    .line 260
    new-array v7, v1, [B

    .line 261
    .line 262
    fill-array-data v7, :array_15

    .line 263
    .line 264
    .line 265
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    const/16 v7, 0xc

    .line 270
    .line 271
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    const/4 v5, 0x6

    .line 279
    new-array v5, v5, [B

    .line 280
    .line 281
    fill-array-data v5, :array_16

    .line 282
    .line 283
    .line 284
    new-array v7, v1, [B

    .line 285
    .line 286
    fill-array-data v7, :array_17

    .line 287
    .line 288
    .line 289
    invoke-static {v5, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const/16 v7, 0xd

    .line 294
    .line 295
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    .line 301
    .line 302
    sget-object v3, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 303
    .line 304
    new-array v4, v4, [B

    .line 305
    .line 306
    fill-array-data v4, :array_18

    .line 307
    .line 308
    .line 309
    new-array v5, v1, [B

    .line 310
    .line 311
    fill-array-data v5, :array_19

    .line 312
    .line 313
    .line 314
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 322
    .line 323
    new-array v3, v2, [B

    .line 324
    .line 325
    fill-array-data v3, :array_1a

    .line 326
    .line 327
    .line 328
    new-array v4, v1, [B

    .line 329
    .line 330
    fill-array-data v4, :array_1b

    .line 331
    .line 332
    .line 333
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    if-eqz p0, :cond_2

    .line 345
    .line 346
    const/16 v0, 0xd

    .line 347
    .line 348
    new-array v0, v0, [B

    .line 349
    .line 350
    fill-array-data v0, :array_1c

    .line 351
    .line 352
    .line 353
    new-array v3, v1, [B

    .line 354
    .line 355
    fill-array-data v3, :array_1d

    .line 356
    .line 357
    .line 358
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    if-nez p0, :cond_1

    .line 367
    .line 368
    sget-boolean p0, Lcom/example/navistart/LocServ;->j:Z

    .line 369
    .line 370
    if-eqz p0, :cond_0

    .line 371
    .line 372
    goto :goto_0

    .line 373
    :cond_0
    const/16 p0, 0xa

    .line 374
    .line 375
    new-array p0, p0, [B

    .line 376
    .line 377
    fill-array-data p0, :array_1e

    .line 378
    .line 379
    .line 380
    new-array v0, v1, [B

    .line 381
    .line 382
    fill-array-data v0, :array_1f

    .line 383
    .line 384
    .line 385
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    const/16 v0, 0x1a

    .line 390
    .line 391
    new-array v0, v0, [B

    .line 392
    .line 393
    fill-array-data v0, :array_20

    .line 394
    .line 395
    .line 396
    new-array v1, v1, [B

    .line 397
    .line 398
    fill-array-data v1, :array_21

    .line 399
    .line 400
    .line 401
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    sput-boolean v6, Lcom/example/navistart/LocServ;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .line 410
    return-void

    .line 411
    :cond_1
    :try_start_1
    sget-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;

    .line 412
    .line 413
    new-array v3, v2, [B

    .line 414
    .line 415
    fill-array-data v3, :array_22

    .line 416
    .line 417
    .line 418
    new-array v4, v1, [B

    .line 419
    .line 420
    fill-array-data v4, :array_23

    .line 421
    .line 422
    .line 423
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    new-instance v4, Lorg/json/JSONObject;

    .line 428
    .line 429
    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    new-array p0, v2, [B

    .line 433
    .line 434
    fill-array-data p0, :array_24

    .line 435
    .line 436
    .line 437
    new-array v2, v1, [B

    .line 438
    .line 439
    fill-array-data v2, :array_25

    .line 440
    .line 441
    .line 442
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 447
    .line 448
    .line 449
    move-result-wide v4

    .line 450
    const-wide v6, 0x400ccccccccccccdL    # 3.6

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    div-double/2addr v4, v6

    .line 456
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    .line 458
    .line 459
    goto :goto_0

    .line 460
    :catch_0
    const/16 p0, 0xa

    .line 461
    .line 462
    :try_start_2
    new-array p0, p0, [B

    .line 463
    .line 464
    fill-array-data p0, :array_26

    .line 465
    .line 466
    .line 467
    new-array v0, v1, [B

    .line 468
    .line 469
    fill-array-data v0, :array_27

    .line 470
    .line 471
    .line 472
    invoke-static {p0, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    const/16 v0, 0x11

    .line 477
    .line 478
    new-array v0, v0, [B

    .line 479
    .line 480
    fill-array-data v0, :array_28

    .line 481
    .line 482
    .line 483
    new-array v1, v1, [B

    .line 484
    .line 485
    fill-array-data v1, :array_29

    .line 486
    .line 487
    .line 488
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 493
    .line 494
    .line 495
    :catch_1
    :cond_2
    :goto_0
    return-void

    .line 496
    nop

    .line 497
    :array_0
    .array-data 1
        0x7et
        0x52t
        -0x78t
        -0x7et
        0x1et
        -0x43t
        0x7bt
        -0x42t
    .end array-data

    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    :array_1
    .array-data 1
        0x12t
        0x33t
        -0x4t
        -0x15t
        0x6at
        -0x38t
        0x1ft
        -0x25t
    .end array-data

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_2
    .array-data 1
        -0x24t
        0x4ct
        0x37t
        0x71t
        -0x6at
        -0x1et
        0x21t
        0x7at
        -0x2bt
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    nop

    .line 523
    :array_3
    .array-data 1
        -0x50t
        0x23t
        0x59t
        0x16t
        -0x1t
        -0x6at
        0x54t
        0x1et
    .end array-data

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    :array_4
    .array-data 1
        0x7t
        -0x9t
        -0x40t
        -0x7et
        -0x3t
        0x33t
        0x2bt
        -0x7ct
    .end array-data

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_5
    .array-data 1
        0x66t
        -0x6ct
        -0x5dt
        -0x9t
        -0x71t
        0x52t
        0x48t
        -0x3t
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_6
    .array-data 1
        -0xdt
        -0x6bt
        0x16t
        0x5t
        0x15t
        0x65t
        -0x8t
        -0x79t
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    :array_7
    .array-data 1
        -0x6et
        -0x7t
        0x62t
        0x6ct
        0x61t
        0x10t
        -0x64t
        -0x1et
    .end array-data

    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_8
    .array-data 1
        -0x33t
        -0x37t
        -0x3ft
        0x40t
        0x27t
        0x2bt
        0x6at
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    :array_9
    .array-data 1
        -0x51t
        -0x54t
        -0x60t
        0x32t
        0x4et
        0x45t
        0xdt
        -0x77t
    .end array-data

    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_a
    .array-data 1
        -0x3at
        0x6ct
        0x29t
        -0x5ct
        -0x72t
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    nop

    .line 587
    :array_b
    .array-data 1
        -0x4bt
        0x1ct
        0x4ct
        -0x3ft
        -0x16t
        0x41t
        0x6ct
        -0x60t
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :array_c
    .array-data 1
        0x0t
        0x55t
        0xft
        -0x48t
    .end array-data

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    :array_d
    .array-data 1
        0x79t
        0x30t
        0x6et
        -0x36t
        0x7at
        -0x55t
        -0x80t
        0x39t
    .end array-data

    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :array_e
    .array-data 1
        -0x54t
        -0x3ft
        0x5bt
        -0x3et
        0x53t
    .end array-data

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    nop

    .line 617
    :array_f
    .array-data 1
        -0x3ft
        -0x52t
        0x35t
        -0x4at
        0x3bt
        0x4t
        -0x36t
        -0x4dt
    .end array-data

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    :array_10
    .array-data 1
        -0xft
        0x2t
        -0x31t
    .end array-data

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_11
    .array-data 1
        -0x6bt
        0x63t
        -0x4at
        0x21t
        -0x6ct
        -0xft
        0x10t
        0x4ft
    .end array-data

    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :array_12
    .array-data 1
        -0x2ft
        0x7dt
        -0x13t
        0x62t
    .end array-data

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :array_13
    .array-data 1
        -0x47t
        0x12t
        -0x68t
        0x10t
        -0x35t
        -0x4dt
        0xbt
        -0x4at
    .end array-data

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    :array_14
    .array-data 1
        -0x66t
        0x7dt
        0x27t
        0x71t
        -0x6bt
        0x71t
    .end array-data

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    nop

    .line 661
    :array_15
    .array-data 1
        -0x9t
        0x14t
        0x49t
        0x4t
        -0x1ft
        0x14t
        -0x49t
        -0x1t
    .end array-data

    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :array_16
    .array-data 1
        0x48t
        0x27t
        -0xdt
        -0x63t
        -0x51t
        0x55t
    .end array-data

    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    nop

    .line 677
    :array_17
    .array-data 1
        0x3bt
        0x42t
        -0x70t
        -0xet
        -0x3ft
        0x31t
        -0x32t
        -0x5et
    .end array-data

    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    :array_18
    .array-data 1
        0x47t
        0x4et
        -0x1ct
        -0x39t
    .end array-data

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_19
    .array-data 1
        0x33t
        0x27t
        -0x77t
        -0x5et
        0x71t
        -0x2ft
        -0x49t
        0x22t
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_1a
    .array-data 1
        0x3dt
        -0x54t
        -0x48t
        -0x3bt
        0x1et
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    nop

    .line 707
    :array_1b
    .array-data 1
        0x5bt
        -0x3bt
        -0x40t
        -0x60t
        0x7at
        0x33t
        -0x3ft
        0x61t
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_1c
    .array-data 1
        0x1t
        -0x7bt
        -0x58t
        -0x48t
        0x24t
        -0x6bt
        -0x32t
        -0x54t
        0x4t
        -0x46t
        -0x67t
        -0x59t
        0x16t
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    nop

    .line 727
    :array_1d
    .array-data 1
        0x40t
        -0x18t
        -0x37t
        -0x38t
        0x65t
        -0x20t
        -0x46t
        -0x3dt
    .end array-data

    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :array_1e
    .array-data 1
        -0x20t
        0x14t
        -0x1et
        0x5ct
        -0x62t
        -0xbt
        -0x38t
        -0x46t
        -0x3et
        0x36t
    .end array-data

    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    nop

    .line 745
    :array_1f
    .array-data 1
        -0x59t
        0x44t
        -0x4ft
        0x11t
        -0x1t
        -0x65t
        -0x57t
        -0x23t
    .end array-data

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_20
    .array-data 1
        0x37t
        0x41t
        -0x64t
        -0x51t
        -0x2ft
        -0x56t
        0x22t
        -0x66t
        0x34t
        0x45t
        -0x6at
        -0x4bt
        -0x61t
        -0x7ct
        0x3bt
        -0x25t
        0x2ft
        0x61t
        -0x66t
        -0x5t
        -0x30t
        -0x7ft
        0x4t
        -0x16t
        0x30t
        0x53t
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    nop

    .line 771
    :array_21
    .array-data 1
        0x5ft
        0x20t
        -0x11t
        -0x71t
        -0x41t
        -0x3bt
        0x56t
        -0x46t
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_22
    .array-data 1
        0x7bt
        -0x7et
        -0x20t
        0x55t
        -0x57t
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    nop

    .line 787
    :array_23
    .array-data 1
        0x8t
        -0xet
        -0x7bt
        0x30t
        -0x33t
        0x6ct
        0x21t
        0x6dt
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_24
    .array-data 1
        0x6bt
        0x7ft
        -0x62t
        -0x26t
        -0x7at
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    nop

    .line 803
    :array_25
    .array-data 1
        0x18t
        0xft
        -0x5t
        -0x41t
        -0x1et
        0x3et
        -0x15t
        0x28t
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_26
    .array-data 1
        -0x4at
        0x4bt
        -0x76t
        0x5ft
        -0x6et
        0x6dt
        -0x54t
        0x34t
        -0x6ct
        0x69t
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    nop

    .line 821
    :array_27
    .array-data 1
        -0xft
        0x1bt
        -0x27t
        0x12t
        -0xdt
        0x3t
        -0x33t
        0x53t
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_28
    .array-data 1
        -0x27t
        0x6ft
        -0x66t
        -0x52t
        0x3bt
        0x55t
        -0x64t
        0x12t
        -0x40t
        0x79t
        -0x2bt
        -0x5at
        0x7at
        0x4ct
        -0x6ft
        0x5t
        -0x29t
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    nop

    .line 843
    :array_29
    .array-data 1
        -0x4dt
        0x1ct
        -0xbt
        -0x40t
        0x1bt
        0x25t
        -0x3t
        0x60t
    .end array-data
.end method


# virtual methods
.method public final b()V
    .locals 10

    .line 1
    sget-object v0, Lcom/example/navistart/LocServ;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    sget-object v0, Lcom/example/navistart/LocServ;->l:[B

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x200

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    sput-object v0, Lcom/example/navistart/LocServ;->l:[B

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0x29

    .line 20
    .line 21
    :try_start_0
    new-array v0, v0, [B

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    new-array v2, v1, [B

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    sget-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    new-array v0, v1, [B

    .line 48
    .line 49
    fill-array-data v0, :array_2

    .line 50
    .line 51
    .line 52
    new-array v2, v1, [B

    .line 53
    .line 54
    fill-array-data v2, :array_3

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/location/LocationManager;

    .line 66
    .line 67
    sput-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 68
    .line 69
    :cond_1
    sget-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    new-array v3, v2, [B

    .line 73
    .line 74
    fill-array-data v3, :array_4

    .line 75
    .line 76
    .line 77
    new-array v4, v1, [B

    .line 78
    .line 79
    fill-array-data v4, :array_5

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    new-instance v0, Lorg/json/JSONObject;

    .line 93
    .line 94
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lcom/example/navistart/LocServ;->m:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 98
    .line 99
    :try_start_1
    sget-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 100
    .line 101
    new-array v3, v2, [B

    .line 102
    .line 103
    fill-array-data v3, :array_6

    .line 104
    .line 105
    .line 106
    new-array v4, v1, [B

    .line 107
    .line 108
    fill-array-data v4, :array_7

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    if-eqz v0, :cond_2

    .line 122
    .line 123
    :try_start_2
    invoke-static {v0}, Lcom/example/navistart/LocServ;->a(Landroid/location/Location;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 124
    .line 125
    .line 126
    :cond_2
    :try_start_3
    sget-object v3, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 127
    .line 128
    new-array v0, v2, [B

    .line 129
    .line 130
    fill-array-data v0, :array_8

    .line 131
    .line 132
    .line 133
    new-array v1, v1, [B

    .line 134
    .line 135
    fill-array-data v1, :array_9

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 143
    .line 144
    .line 145
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    const-wide/16 v5, 0x3e8

    .line 147
    .line 148
    const/4 v7, 0x0

    .line 149
    move-object v8, p0

    .line 150
    :try_start_4
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 154
    .line 155
    iget-object v1, v8, Lcom/example/navistart/LocServ;->g:Le0/i0;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :catch_1
    move-object v8, p0

    .line 162
    :catch_2
    :goto_1
    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    .line 164
    sput-object v0, Lcom/example/navistart/LocServ;->i:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_3
    :cond_3
    move-object v8, p0

    .line 168
    :catch_4
    :goto_2
    return-void

    .line 169
    :array_0
    .array-data 1
        -0x53t
        0x2bt
        0x67t
        -0x1at
        -0xbt
        -0xbt
        -0x4ft
        -0x3bt
        -0x44t
        0x20t
        0x71t
        -0x7t
        -0xdt
        -0x11t
        -0x5at
        -0x7et
        -0x5dt
        0x2bt
        0x2dt
        -0x2bt
        -0x27t
        -0x21t
        -0x70t
        -0x48t
        -0x61t
        0x1at
        0x40t
        -0x25t
        -0x25t
        -0x32t
        -0x7at
        -0x52t
        -0x6dt
        0x9t
        0x4ct
        -0x29t
        -0x25t
        -0x38t
        -0x64t
        -0x5ct
        -0x7et
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    nop

    .line 195
    :array_1
    .array-data 1
        -0x34t
        0x45t
        0x3t
        -0x6ct
        -0x66t
        -0x64t
        -0x2bt
        -0x15t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_2
    .array-data 1
        0x4ct
        0x2et
        0x45t
        0x13t
        -0x76t
        -0x42t
        -0x7bt
        -0x26t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :array_3
    .array-data 1
        0x20t
        0x41t
        0x26t
        0x72t
        -0x2t
        -0x29t
        -0x16t
        -0x4ct
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_4
    .array-data 1
        0x0t
        -0x50t
        0x73t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_5
    .array-data 1
        0x67t
        -0x40t
        0x0t
        -0x3et
        -0x17t
        -0x5at
        0x43t
        0x6ct
    .end array-data

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_6
    .array-data 1
        -0x4t
        0x4ft
        -0x4bt
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :array_7
    .array-data 1
        -0x65t
        0x3ft
        -0x3at
        -0x13t
        0x4ct
        -0x66t
        -0x80t
        0x32t
    .end array-data

    :array_8
    .array-data 1
        0x7bt
        -0x77t
        0x13t
    .end array-data

    :array_9
    .array-data 1
        0x1ct
        -0x7t
        0x60t
        0x5bt
        -0x41t
        -0x23t
        0x37t
        0x3et
    .end array-data
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/example/navistart/LocServ;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/example/navistart/LocServ;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/example/navistart/LocServ;->k:Landroid/location/LocationManager;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/example/navistart/LocServ;->g:Le0/i0;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, v0, Li7/m;->e:Li7/g;

    .line 39
    .line 40
    invoke-virtual {v0}, Li7/g;->e()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 45
    .line 46
    sput-object v0, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 47
    .line 48
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    sput-object v0, Lcom/example/navistart/LocServ;->i:Ljava/lang/Boolean;

    .line 51
    .line 52
    new-instance v0, Le0/h0;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-direct {v0, p0, v1}, Le0/h0;-><init>(Lcom/example/navistart/LocServ;I)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v1, 0x2710

    .line 59
    .line 60
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/example/navistart/LocServ;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 63
    .line 64
    invoke-interface {v4, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/LocServ;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    .line 3
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lv1/d;->d()Lv1/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v1, La4/g;

    .line 20
    .line 21
    const/16 v2, 0x9

    .line 22
    .line 23
    invoke-direct {v1, v2, p1}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    sget-object v1, Lcom/example/navistart/LocServ;->n:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    new-instance v1, Li7/m;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Li7/m;-><init>(Lcom/example/navistart/LocServ;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 47
    .line 48
    new-instance v1, Landroidx/fragment/app/h;

    .line 49
    .line 50
    const/4 v2, 0x6

    .line 51
    invoke-direct {v1, v2, p0}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 55
    .line 56
    :cond_0
    new-instance v1, La1/a;

    .line 57
    .line 58
    const/16 v2, 0xf

    .line 59
    .line 60
    invoke-direct {v1, v2, p0, p1}, La1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/example/navistart/LocServ;->b()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le0/s2;

    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x12

    .line 11
    .line 12
    new-array v1, v1, [B

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    new-array v3, v2, [B

    .line 20
    .line 21
    fill-array-data v3, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v3, 0xb

    .line 29
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
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Ln0/a;->e:Ln0/a;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/example/navistart/LocServ;->n:Ljava/lang/Boolean;

    .line 63
    .line 64
    sget-object v0, Lcom/example/navistart/LocServ;->i:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/example/navistart/LocServ;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/example/navistart/LocServ;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    new-instance v0, Le0/h0;

    .line 92
    .line 93
    invoke-direct {v0, p0, v1}, Le0/h0;-><init>(Lcom/example/navistart/LocServ;I)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v1, 0x7530

    .line 97
    .line 98
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 99
    .line 100
    iget-object v4, p0, Lcom/example/navistart/LocServ;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 101
    .line 102
    invoke-interface {v4, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/example/navistart/LocServ;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/example/navistart/LocServ;->d:Li7/m;

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    iget-object v0, v0, Li7/m;->e:Li7/g;

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    invoke-virtual {v0}, Li7/g;->e()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Li7/g;->d()V

    .line 120
    .line 121
    .line 122
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1

    .line 127
    :array_0
    .array-data 1
        0x61t
        0x40t
        -0x27t
        -0x33t
        -0x72t
        0x1t
        0x23t
        -0x7at
        0x73t
        0x42t
        -0x2ft
        -0x39t
        -0x7ft
        0x16t
        0xet
        -0x57t
        0x60t
        0x5ft
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    nop

    .line 141
    :array_1
    .array-data 1
        0x12t
        0x30t
        -0x50t
        -0x5dt
        -0x20t
        0x64t
        0x51t
        -0x27t
    .end array-data

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    :array_2
    .array-data 1
        0x6bt
        -0x6bt
        0x6ft
        -0x1et
        -0x56t
        -0x29t
        -0x44t
        -0x5ft
        0x64t
        -0x56t
        0x4bt
    .end array-data

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 1
        0x25t
        -0x6t
        0x1bt
        -0x43t
        -0x8t
        -0x5et
        -0x2et
        -0x2t
    .end array-data
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method
