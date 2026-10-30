.class public final synthetic Le0/o3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/boot;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/boot;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/o3;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/o3;->c:Lcom/example/navistart/boot;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Le0/o3;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Le0/o3;->c:Lcom/example/navistart/boot;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v1, Lcom/example/navistart/LocServ;->h:Landroidx/fragment/app/h;

    .line 11
    .line 12
    new-instance v1, Landroid/content/Intent;

    .line 13
    .line 14
    const-class v2, Lcom/example/navistart/LocServ;

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/example/navistart/LounchB;->c(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/example/navistart/Si;->a(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_2
    iget-object v0, v1, Lcom/example/navistart/boot;->c:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {}, Lcom/example/navistart/MainActivity;->w()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/example/navistart/MainActivity;->v(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, v1, Lcom/example/navistart/boot;->n:Landroid/content/Intent;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .line 75
    .line 76
    :try_start_0
    invoke-virtual {v1}, Lcom/example/navistart/boot;->a()Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/16 v1, 0x1f

    .line 85
    .line 86
    new-array v1, v1, [B

    .line 87
    .line 88
    fill-array-data v1, :array_0

    .line 89
    .line 90
    .line 91
    const/16 v2, 0x8

    .line 92
    .line 93
    new-array v3, v2, [B

    .line 94
    .line 95
    fill-array-data v3, :array_1

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lokhttp3/Request$Builder;

    .line 111
    .line 112
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    new-array v4, v2, [B

    .line 121
    .line 122
    fill-array-data v4, :array_2

    .line 123
    .line 124
    .line 125
    new-array v5, v2, [B

    .line 126
    .line 127
    fill-array-data v5, :array_3

    .line 128
    .line 129
    .line 130
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    sget-object v4, Lcom/example/navistart/punto;->u:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/16 v1, 0xc

    .line 155
    .line 156
    new-array v1, v1, [B

    .line 157
    .line 158
    fill-array-data v1, :array_4

    .line 159
    .line 160
    .line 161
    new-array v3, v2, [B

    .line 162
    .line 163
    fill-array-data v3, :array_5

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const/16 v3, 0x10

    .line 171
    .line 172
    new-array v3, v3, [B

    .line 173
    .line 174
    fill-array-data v3, :array_6

    .line 175
    .line 176
    .line 177
    new-array v4, v2, [B

    .line 178
    .line 179
    fill-array-data v4, :array_7

    .line 180
    .line 181
    .line 182
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/4 v1, 0x6

    .line 191
    new-array v1, v1, [B

    .line 192
    .line 193
    fill-array-data v1, :array_8

    .line 194
    .line 195
    .line 196
    new-array v3, v2, [B

    .line 197
    .line 198
    fill-array-data v3, :array_9

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const/16 v3, 0x10

    .line 206
    .line 207
    new-array v3, v3, [B

    .line 208
    .line 209
    fill-array-data v3, :array_a

    .line 210
    .line 211
    .line 212
    new-array v2, v2, [B

    .line 213
    .line 214
    fill-array-data v2, :array_b

    .line 215
    .line 216
    .line 217
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 230
    .line 231
    .line 232
    invoke-static {}, Lh0/b;->m()Lokhttp3/OkHttpClient;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    new-instance v1, Lz3/f;

    .line 241
    .line 242
    const/4 v2, 0x5

    .line 243
    invoke-direct {v1, v2}, Lz3/f;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_3
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/example/navistart/SpeedBoardService;->b(Landroid/content/Context;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_4
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 257
    .line 258
    invoke-static {v0}, Lcom/example/navistart/OverlayService;->c(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_5
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 263
    .line 264
    invoke-static {v0}, Lcom/example/navistart/Notik;->g(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :pswitch_6
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 269
    .line 270
    invoke-static {v0}, Lcom/example/navistart/AllWidgetServices;->c(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_7
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 275
    .line 276
    invoke-static {v0}, Lcom/example/navistart/TService;->c(Landroid/content/Context;)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :pswitch_8
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 281
    .line 282
    invoke-static {v0}, Lcom/woha/pogoda/WeatherService;->e(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :pswitch_9
    iget-object v0, v1, Lcom/example/navistart/boot;->m:Landroid/content/Context;

    .line 287
    .line 288
    sget-object v1, Lcom/example/navistart/MockGPS/MockGpsService;->r:Ljava/lang/String;

    .line 289
    .line 290
    const/4 v2, 0x0

    .line 291
    :try_start_1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v3, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 296
    .line 297
    .line 298
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :catch_1
    if-eqz v2, :cond_3

    .line 300
    .line 301
    invoke-static {v0}, Lcom/example/navistart/MockGPS/MockGpsService;->m(Landroid/content/Context;)V

    .line 302
    .line 303
    .line 304
    :cond_3
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_0
    .array-data 1
        -0x80t
        -0x26t
        0x5at
        0x48t
        -0x55t
        -0x80t
        -0x6et
        -0x2bt
        -0x78t
        -0x3bt
        0x44t
        0xbt
        -0x58t
        -0x70t
        -0x64t
        -0x31t
        -0x26t
        -0x76t
        0x49t
        0x4ct
        -0x5dt
        -0x6ft
        -0x80t
        -0x3ct
        -0x6bt
        -0x69t
        0x5ft
        0x50t
        -0x5ct
        -0x32t
        -0x35t
    .end array-data

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
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    :array_1
    .array-data 1
        -0x1ft
        -0x56t
        0x2at
        0x24t
        -0x3et
        -0x1dt
        -0xdt
        -0x5ft
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_2
    .array-data 1
        0x5et
        0xft
        -0x6dt
        -0x66t
        0x5ft
        -0x43t
        0x43t
        -0x2at
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :array_3
    .array-data 1
        0x36t
        0x7bt
        -0x19t
        -0x16t
        0x2ct
        -0x79t
        0x6ct
        -0x7t
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_4
    .array-data 1
        -0x18t
        -0x53t
        -0x48t
        0x5dt
        0x30t
        0x7at
        -0x2bt
        -0x4bt
        -0x1t
        -0x45t
        -0x5at
        0x4ct
    .end array-data

    .line 374
    .line 375
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
        -0x55t
        -0x3et
        -0x2at
        0x29t
        0x55t
        0x14t
        -0x5ft
        -0x68t
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
        -0x54t
        -0x5dt
        0x18t
        0x65t
        0x2at
        -0x6ct
        -0x7bt
        -0x7at
        -0x5ct
        -0x44t
        0x6t
        0x26t
        0x29t
        -0x7ct
        -0x75t
        -0x64t
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
    .line 401
    .line 402
    .line 403
    :array_7
    .array-data 1
        -0x33t
        -0x2dt
        0x68t
        0x9t
        0x43t
        -0x9t
        -0x1ct
        -0xet
    .end array-data

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_8
    .array-data 1
        -0x1ft
        0x3et
        -0x7ft
        0x49t
        -0x4bt
        0x46t
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    nop

    .line 419
    :array_9
    .array-data 1
        -0x60t
        0x5dt
        -0x1et
        0x2ct
        -0x3bt
        0x32t
        0x1bt
        0x6ct
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    :array_a
    .array-data 1
        0x70t
        -0x2ct
        0x65t
        -0x4et
        0x40t
        0x1ct
        0x67t
        0xet
        0x78t
        -0x35t
        0x7bt
        -0xft
        0x43t
        0xct
        0x69t
        0x14t
    .end array-data

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
    .line 439
    :array_b
    .array-data 1
        0x11t
        -0x5ct
        0x15t
        -0x22t
        0x29t
        0x7ft
        0x6t
        0x7at
    .end array-data
.end method
