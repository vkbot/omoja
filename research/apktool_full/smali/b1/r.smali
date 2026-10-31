.class public final Lb1/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb1/s;
.implements Lb1/e;


# static fields
.field public static final s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public b:Z

.field public c:Landroid/webkit/WebView;

.field public d:Lb1/h;

.field public final e:Landroid/content/Context;

.field public f:Ljava/lang/String;

.field public g:Lb1/f;

.field public volatile h:Z

.field public final i:Ljava/lang/Object;

.field public j:[B

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:J

.field public q:I

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xd

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_2

    .line 23
    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    fill-array-data v1, :array_3

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lb1/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 1
        0x4dt
        0x36t
        -0x61t
        -0x60t
        -0x52t
        -0x6bt
        0x2bt
        0x4t
        0x51t
        0x38t
        -0x67t
        -0x45t
        -0x5dt
        -0x1et
        0x44t
        0x62t
        0x2bt
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    nop

    .line 57
    :array_1
    .array-data 1
        0x1et
        0x73t
        -0x24t
        -0xbt
        -0x4t
        -0x30t
        0x74t
        0x50t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :array_2
    .array-data 1
        -0x12t
        -0x5et
        0x71t
        -0x7t
        -0x38t
        0x4et
        0x4ct
        0x53t
        -0x33t
        -0x6ft
        0x7at
        -0x35t
        -0x2at
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    nop

    :array_3
    .array-data 1
        -0x47t
        -0x39t
        0x13t
        -0x52t
        -0x5ft
        0x2at
        0x2bt
        0x36t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lb1/t;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lb1/r;->b:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lb1/r;->f:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lb1/r;->i:Ljava/lang/Object;

    .line 17
    .line 18
    const/high16 v1, -0x80000000

    .line 19
    .line 20
    iput v1, p0, Lb1/r;->q:I

    .line 21
    .line 22
    iput-object p1, p0, Lb1/r;->e:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v1, p3, Lb1/t;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p3, Lb1/t;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p2, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 81
    .line 82
    new-instance v0, Landroid/webkit/WebChromeClient;

    .line 83
    .line 84
    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 91
    .line 92
    new-instance v0, Landroid/webkit/WebViewClient;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 101
    .line 102
    new-instance v0, Lb1/l;

    .line 103
    .line 104
    const/16 v3, 0x11

    .line 105
    .line 106
    new-array v4, v3, [B

    .line 107
    .line 108
    fill-array-data v4, :array_0

    .line 109
    .line 110
    .line 111
    const/16 v5, 0x8

    .line 112
    .line 113
    new-array v6, v5, [B

    .line 114
    .line 115
    fill-array-data v6, :array_1

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lh0/b;->f()Lj0/c;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-direct {v0, v4, v6, p0}, Lb1/l;-><init>(Ljava/lang/String;Lj0/c;Lb1/s;)V

    .line 130
    .line 131
    .line 132
    const/16 v4, 0xa

    .line 133
    .line 134
    new-array v6, v4, [B

    .line 135
    .line 136
    fill-array-data v6, :array_2

    .line 137
    .line 138
    .line 139
    new-array v7, v5, [B

    .line 140
    .line 141
    fill-array-data v7, :array_3

    .line 142
    .line 143
    .line 144
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {p2, v0, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p2, p3, Lb1/t;->a:Ljava/lang/String;

    .line 152
    .line 153
    new-instance p3, Ljava/io/File;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p2, v1, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    new-instance v0, Ljava/io/File;

    .line 174
    .line 175
    invoke-direct {v0, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Ljava/io/File;

    .line 179
    .line 180
    new-array v6, v4, [B

    .line 181
    .line 182
    fill-array-data v6, :array_4

    .line 183
    .line 184
    .line 185
    new-array v7, v5, [B

    .line 186
    .line 187
    fill-array-data v7, :array_5

    .line 188
    .line 189
    .line 190
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_0

    .line 202
    .line 203
    new-instance v0, Ljava/io/File;

    .line 204
    .line 205
    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_0
    move-object v2, p2

    .line 210
    :goto_0
    new-instance p2, Ljava/io/File;

    .line 211
    .line 212
    new-array v1, v4, [B

    .line 213
    .line 214
    fill-array-data v1, :array_6

    .line 215
    .line 216
    .line 217
    new-array v6, v5, [B

    .line 218
    .line 219
    fill-array-data v6, :array_7

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-nez p2, :cond_2

    .line 234
    .line 235
    new-array p2, v3, [B

    .line 236
    .line 237
    fill-array-data p2, :array_8

    .line 238
    .line 239
    .line 240
    new-array v1, v5, [B

    .line 241
    .line 242
    fill-array-data v1, :array_9

    .line 243
    .line 244
    .line 245
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-nez p2, :cond_1

    .line 254
    .line 255
    const/16 p2, 0xb

    .line 256
    .line 257
    new-array p2, p2, [B

    .line 258
    .line 259
    fill-array-data p2, :array_a

    .line 260
    .line 261
    .line 262
    new-array v1, v5, [B

    .line 263
    .line 264
    fill-array-data v1, :array_b

    .line 265
    .line 266
    .line 267
    invoke-static {p2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p2

    .line 275
    if-eqz p2, :cond_2

    .line 276
    .line 277
    :cond_1
    :try_start_0
    new-instance p2, Lb1/m;

    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const/4 v3, 0x4

    .line 288
    new-array v3, v3, [B

    .line 289
    .line 290
    fill-array-data v3, :array_c

    .line 291
    .line 292
    .line 293
    new-array v6, v5, [B

    .line 294
    .line 295
    fill-array-data v6, :array_d

    .line 296
    .line 297
    .line 298
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-direct {p2, p1, v1, p3, v2}, Lb1/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2}, Lb1/m;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .line 314
    .line 315
    goto :goto_1

    .line 316
    :catch_0
    move-exception p1

    .line 317
    const/16 p2, 0xd

    .line 318
    .line 319
    new-array p2, p2, [B

    .line 320
    .line 321
    fill-array-data p2, :array_e

    .line 322
    .line 323
    .line 324
    new-array p3, v5, [B

    .line 325
    .line 326
    fill-array-data p3, :array_f

    .line 327
    .line 328
    .line 329
    invoke-static {p2, p3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    new-instance p3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const/16 v1, 0xf

    .line 339
    .line 340
    new-array v1, v1, [B

    .line 341
    .line 342
    fill-array-data v1, :array_10

    .line 343
    .line 344
    .line 345
    new-array v2, v5, [B

    .line 346
    .line 347
    fill-array-data v2, :array_11

    .line 348
    .line 349
    .line 350
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p3

    .line 364
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .line 366
    .line 367
    :cond_2
    :goto_1
    new-array p1, v4, [B

    .line 368
    .line 369
    fill-array-data p1, :array_12

    .line 370
    .line 371
    .line 372
    new-array p2, v5, [B

    .line 373
    .line 374
    fill-array-data p2, :array_13

    .line 375
    .line 376
    .line 377
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const/4 p3, 0x7

    .line 387
    new-array p3, p3, [B

    .line 388
    .line 389
    fill-array-data p3, :array_14

    .line 390
    .line 391
    .line 392
    new-array v1, v5, [B

    .line 393
    .line 394
    fill-array-data v1, :array_15

    .line 395
    .line 396
    .line 397
    invoke-static {p3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p3

    .line 401
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    new-instance p3, Ljava/io/File;

    .line 405
    .line 406
    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    new-instance p2, Ljava/io/File;

    .line 421
    .line 422
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 426
    .line 427
    .line 428
    iget-object p2, p0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 429
    .line 430
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    nop

    .line 435
    :array_0
    .array-data 1
        0x42t
        -0x61t
        0x3dt
        -0x4bt
        -0x3at
        -0x50t
        0x1at
        -0xat
        0x5et
        -0x6ft
        0x3bt
        -0x52t
        -0x35t
        -0x39t
        0x75t
        -0x70t
        0x24t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    nop

    .line 449
    :array_1
    .array-data 1
        0x11t
        -0x26t
        0x7et
        -0x20t
        -0x6ct
        -0xbt
        0x45t
        -0x5et
    .end array-data

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :array_2
    .array-data 1
        -0x72t
        -0x75t
        -0x8t
        -0x78t
        0x36t
        -0x24t
        0x7bt
        -0x7t
        -0x61t
        -0x74t
    .end array-data

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    nop

    .line 467
    :array_3
    .array-data 1
        -0x11t
        -0x1bt
        -0x64t
        -0x6t
        0x59t
        -0x4bt
        0x1ft
        -0x48t
    .end array-data

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_4
    .array-data 1
        -0x24t
        -0x6at
        -0x6bt
        0x3bt
        -0x4bt
        0x7at
        0x7et
        -0x45t
        -0x28t
        -0x6ct
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    nop

    .line 485
    :array_5
    .array-data 1
        -0x4bt
        -0x8t
        -0xft
        0x5et
        -0x33t
        0x54t
        0x16t
        -0x31t
    .end array-data

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    :array_6
    .array-data 1
        -0xet
        -0x7t
        -0x2dt
        -0x41t
        -0x64t
        -0x8t
        0x4dt
        -0x5dt
        -0xat
        -0x5t
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    nop

    .line 503
    :array_7
    .array-data 1
        -0x65t
        -0x69t
        -0x49t
        -0x26t
        -0x1ct
        -0x2at
        0x25t
        -0x29t
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :array_8
    .array-data 1
        0x38t
        -0x33t
        -0x3et
        -0x6ft
        -0x41t
        0x12t
        -0x39t
        -0x44t
        0x2bt
        -0x33t
        -0x3at
        -0x51t
        -0x58t
        0x12t
        -0x2et
        -0x80t
        0x37t
    .end array-data

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    nop

    .line 525
    :array_9
    .array-data 1
        0x5ct
        -0x58t
        -0x5ct
        -0x10t
        -0x36t
        0x7et
        -0x4dt
        -0x1dt
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_a
    .array-data 1
        -0x68t
        -0x35t
        0x17t
        0x66t
        -0x6ft
        0x36t
        0x26t
        -0x6bt
        -0x6ct
        -0x25t
        0x15t
    .end array-data

    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    :array_b
    .array-data 1
        -0x4t
        -0x52t
        0x71t
        0x7t
        -0x1ct
        0x5at
        0x52t
        -0x36t
    .end array-data

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_c
    .array-data 1
        -0x4t
        -0x43t
        0x8t
        0x1dt
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :array_d
    .array-data 1
        -0x2et
        -0x39t
        0x61t
        0x6dt
        0x53t
        -0x1at
        0x33t
        -0x6et
    .end array-data

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    :array_e
    .array-data 1
        0x74t
        -0x5ct
        0x1et
        -0x3ct
        0x1dt
        0x35t
        -0x46t
        -0x3ct
        0x57t
        -0x69t
        0x15t
        -0xat
        0x3t
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    nop

    .line 577
    :array_f
    .array-data 1
        0x23t
        -0x3ft
        0x7ct
        -0x6dt
        0x74t
        0x51t
        -0x23t
        -0x5ft
    .end array-data

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_10
    .array-data 1
        0x4bt
        -0x26t
        0x63t
        0x2at
        0xet
        0x7ft
        0x9t
        -0x7t
        0x7at
        -0x22t
        0x7dt
        0x25t
        0x13t
        0x6et
        0x9t
    .end array-data

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    :array_11
    .array-data 1
        0x8t
        -0x45t
        0xdt
        0x44t
        0x61t
        0xbt
        0x29t
        -0x77t
    .end array-data

    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    :array_12
    .array-data 1
        0x68t
        -0x12t
        0x54t
        -0x5ft
        0x29t
        -0x48t
        0x74t
        0x8t
        0x6ct
        -0x14t
    .end array-data

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    nop

    .line 615
    :array_13
    .array-data 1
        0x1t
        -0x80t
        0x30t
        -0x3ct
        0x51t
        -0x6at
        0x1ct
        0x7ct
    .end array-data

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_14
    .array-data 1
        -0x20t
        0x76t
        -0x3t
        0x1ct
        0x56t
        -0x22t
        -0x4t
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :array_15
    .array-data 1
        -0x7at
        0x1ft
        -0x6ft
        0x79t
        0x6ct
        -0xft
        -0x2dt
        0x3dt
    .end array-data
.end method

.method public static d(Lb1/r;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lb1/r;->i:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, v0, Lb1/r;->h:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    if-eqz v2, :cond_6

    .line 12
    .line 13
    iget-object v2, v0, Lb1/r;->j:[B

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    iget-wide v6, v0, Lb1/r;->k:J

    .line 20
    .line 21
    iget-wide v8, v0, Lb1/r;->n:J

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    iput-object v10, v0, Lb1/r;->j:[B

    .line 25
    .line 26
    iput-wide v4, v0, Lb1/r;->k:J

    .line 27
    .line 28
    iput-wide v6, v0, Lb1/r;->l:J

    .line 29
    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v10

    .line 35
    iget-wide v12, v0, Lb1/r;->p:J

    .line 36
    .line 37
    const-wide/16 v14, 0x1

    .line 38
    .line 39
    add-long/2addr v12, v14

    .line 40
    iput-wide v12, v0, Lb1/r;->p:J

    .line 41
    .line 42
    const-wide/16 v14, 0xa

    .line 43
    .line 44
    rem-long v14, v12, v14

    .line 45
    .line 46
    cmp-long v1, v14, v4

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    const/4 v14, 0x5

    .line 57
    new-array v14, v14, [B

    .line 58
    .line 59
    fill-array-data v14, :array_0

    .line 60
    .line 61
    .line 62
    const/16 v15, 0x8

    .line 63
    .line 64
    new-array v4, v15, [B

    .line 65
    .line 66
    fill-array-data v4, :array_1

    .line 67
    .line 68
    .line 69
    invoke-static {v14, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const/16 v14, 0x17

    .line 79
    .line 80
    new-array v14, v14, [B

    .line 81
    .line 82
    fill-array-data v14, :array_2

    .line 83
    .line 84
    .line 85
    move/from16 v16, v3

    .line 86
    .line 87
    new-array v3, v15, [B

    .line 88
    .line 89
    fill-array-data v3, :array_3

    .line 90
    .line 91
    .line 92
    invoke-static {v14, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v3, 0x2

    .line 100
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    const/16 v4, 0x9

    .line 115
    .line 116
    new-array v4, v4, [B

    .line 117
    .line 118
    fill-array-data v4, :array_4

    .line 119
    .line 120
    .line 121
    new-array v5, v15, [B

    .line 122
    .line 123
    fill-array-data v5, :array_5

    .line 124
    .line 125
    .line 126
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const/16 v5, 0x3f

    .line 139
    .line 140
    new-array v5, v5, [B

    .line 141
    .line 142
    fill-array-data v5, :array_6

    .line 143
    .line 144
    .line 145
    new-array v14, v15, [B

    .line 146
    .line 147
    fill-array-data v14, :array_7

    .line 148
    .line 149
    .line 150
    invoke-static {v5, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    new-array v1, v3, [B

    .line 161
    .line 162
    fill-array-data v1, :array_8

    .line 163
    .line 164
    .line 165
    new-array v3, v15, [B

    .line 166
    .line 167
    fill-array-data v3, :array_9

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    if-eqz v16, :cond_2

    .line 182
    .line 183
    const/16 v3, 0xb

    .line 184
    .line 185
    :try_start_2
    new-array v3, v3, [B

    .line 186
    .line 187
    fill-array-data v3, :array_a

    .line 188
    .line 189
    .line 190
    new-array v4, v15, [B

    .line 191
    .line 192
    fill-array-data v4, :array_b
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .line 194
    .line 195
    :try_start_3
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 202
    .line 203
    .line 204
    const/16 v5, 0xe

    .line 205
    .line 206
    :try_start_4
    new-array v5, v5, [B

    .line 207
    .line 208
    fill-array-data v5, :array_c

    .line 209
    .line 210
    .line 211
    new-array v14, v15, [B

    .line 212
    .line 213
    fill-array-data v14, :array_d
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 214
    .line 215
    .line 216
    :try_start_5
    invoke-static {v5, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 224
    .line 225
    .line 226
    const/4 v5, 0x7

    .line 227
    :try_start_6
    new-array v14, v5, [B

    .line 228
    .line 229
    fill-array-data v14, :array_e

    .line 230
    .line 231
    .line 232
    new-array v5, v15, [B

    .line 233
    .line 234
    fill-array-data v5, :array_f
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 235
    .line 236
    .line 237
    :try_start_7
    invoke-static {v14, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 245
    .line 246
    .line 247
    move-result-wide v17
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 248
    move-wide/from16 v19, v6

    .line 249
    .line 250
    sub-long v5, v17, v19

    .line 251
    .line 252
    move-wide/from16 v17, v8

    .line 253
    .line 254
    const-wide/16 v7, 0x0

    .line 255
    .line 256
    :try_start_8
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 257
    .line 258
    .line 259
    move-result-wide v5

    .line 260
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const/16 v5, 0xa

    .line 264
    .line 265
    new-array v5, v5, [B

    .line 266
    .line 267
    fill-array-data v5, :array_10

    .line 268
    .line 269
    .line 270
    new-array v6, v15, [B

    .line 271
    .line 272
    fill-array-data v6, :array_11

    .line 273
    .line 274
    .line 275
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 283
    .line 284
    .line 285
    move-result-wide v5

    .line 286
    sub-long/2addr v5, v10

    .line 287
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const/4 v5, 0x7

    .line 291
    new-array v5, v5, [B

    .line 292
    .line 293
    fill-array-data v5, :array_12

    .line 294
    .line 295
    .line 296
    new-array v6, v15, [B

    .line 297
    .line 298
    fill-array-data v6, :array_13

    .line 299
    .line 300
    .line 301
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    array-length v2, v2

    .line 309
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 317
    .line 318
    .line 319
    goto :goto_1

    .line 320
    :catch_0
    :goto_0
    move-wide/from16 v3, v17

    .line 321
    .line 322
    move-wide/from16 v1, v19

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :catch_1
    move-wide v1, v6

    .line 326
    move-wide v3, v8

    .line 327
    goto :goto_3

    .line 328
    :catch_2
    move-wide/from16 v19, v6

    .line 329
    .line 330
    move-wide/from16 v17, v8

    .line 331
    .line 332
    goto :goto_0

    .line 333
    :cond_2
    move-wide/from16 v19, v6

    .line 334
    .line 335
    move-wide/from16 v17, v8

    .line 336
    .line 337
    :goto_1
    iget-object v6, v0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 338
    .line 339
    invoke-static {}, Lb1/r;->f()Ljava/lang/Boolean;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_3

    .line 348
    .line 349
    iget-boolean v2, v0, Lb1/r;->b:Z

    .line 350
    .line 351
    if-eqz v2, :cond_3

    .line 352
    .line 353
    if-nez v6, :cond_4

    .line 354
    .line 355
    :cond_3
    move-wide/from16 v3, v17

    .line 356
    .line 357
    move-wide/from16 v1, v19

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_4
    new-instance v0, Lb1/p;

    .line 361
    .line 362
    move-object v7, v1

    .line 363
    move-wide v9, v12

    .line 364
    move/from16 v8, v16

    .line 365
    .line 366
    move-wide/from16 v2, v17

    .line 367
    .line 368
    move-wide/from16 v4, v19

    .line 369
    .line 370
    move-object/from16 v1, p0

    .line 371
    .line 372
    invoke-direct/range {v0 .. v10}, Lb1/p;-><init>(Lb1/r;JJLandroid/webkit/WebView;Ljava/lang/String;ZJ)V

    .line 373
    .line 374
    .line 375
    move-wide/from16 v21, v4

    .line 376
    .line 377
    move-wide v3, v2

    .line 378
    move-wide/from16 v1, v21

    .line 379
    .line 380
    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_5

    .line 385
    .line 386
    const/4 v5, 0x0

    .line 387
    move-object/from16 v0, p0

    .line 388
    .line 389
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 390
    .line 391
    .line 392
    :cond_5
    return-void

    .line 393
    :goto_2
    const/4 v5, 0x0

    .line 394
    move-object/from16 v0, p0

    .line 395
    .line 396
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :goto_3
    const/4 v5, 0x0

    .line 401
    move-object/from16 v0, p0

    .line 402
    .line 403
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :catchall_0
    move-exception v0

    .line 408
    goto :goto_5

    .line 409
    :cond_6
    :goto_4
    :try_start_9
    iput-boolean v3, v0, Lb1/r;->o:Z

    .line 410
    .line 411
    const-wide/16 v7, 0x0

    .line 412
    .line 413
    iput-wide v7, v0, Lb1/r;->l:J

    .line 414
    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 417
    :goto_5
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 418
    throw v0

    .line 419
    :array_0
    .array-data 1
        0x60t
        -0x3at
        0x54t
        0x4ft
        0x50t
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    nop

    .line 427
    :array_1
    .array-data 1
        0x9t
        -0x55t
        0x35t
        0x28t
        0x35t
        -0x7bt
        -0x46t
        -0x70t
    .end array-data

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_2
    .array-data 1
        0x30t
        -0x16t
        0x5ct
        -0x44t
        -0x46t
        -0x6ct
        0x78t
        0x24t
        0x33t
        -0x12t
        0x7t
        -0x49t
        -0x10t
        -0x68t
        0x72t
        0x7et
        0x36t
        -0x16t
        0x5bt
        -0x48t
        -0x4at
        -0x37t
        0x39t
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_3
    .array-data 1
        0x54t
        -0x75t
        0x28t
        -0x23t
        -0x80t
        -0x3t
        0x15t
        0x45t
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    :array_4
    .array-data 1
        0x4dt
        -0x5et
        0x38t
        0x41t
        0x13t
        -0x28t
        0x70t
        0x7et
        0x49t
    .end array-data

    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    nop

    .line 469
    :array_5
    .array-data 1
        0x39t
        -0x35t
        0x55t
        0x24t
        0x60t
        -0x54t
        0x11t
        0x13t
    .end array-data

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    :array_6
    .array-data 1
        -0x3et
        -0x44t
        -0x10t
        -0x74t
        -0x3ft
        0x6bt
        -0x55t
        -0x72t
        -0x25t
        -0x6ct
        -0x10t
        -0x74t
        -0x24t
        0x73t
        -0x14t
        -0x7bt
        -0x10t
        -0x5dt
        -0x5t
        -0x7at
        -0x26t
        0x3ct
        -0x5dt
        -0x39t
        -0x6bt
        -0x5et
        -0x9t
        -0x7at
        -0x36t
        0x73t
        -0xet
        -0x31t
        -0x26t
        -0x45t
        -0x21t
        -0x7at
        -0x36t
        0x6et
        -0x16t
        -0x78t
        -0x2ft
        -0x70t
        -0x18t
        -0x73t
        -0x40t
        0x68t
        -0x53t
        -0x3at
        -0x28t
        -0x44t
        -0x10t
        -0x7ft
        -0x1dt
        0x7dt
        -0xbt
        -0x59t
        -0x39t
        -0x4ct
        -0xdt
        -0x73t
        -0x77t
        0x30t
        -0x5bt
    .end array-data

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    :array_7
    .array-data 1
        -0x4bt
        -0x2bt
        -0x62t
        -0x18t
        -0x52t
        0x1ct
        -0x7bt
        -0x1ft
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :array_8
    .array-data 1
        0x3ft
        0x2et
    .end array-data

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    nop

    .line 527
    :array_9
    .array-data 1
        0x16t
        0x15t
        0x44t
        0x66t
        0x7t
        -0x2ft
        0x6bt
        -0x4dt
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_a
    .array-data 1
        0x7et
        0x23t
        -0x72t
        0x8t
        -0x65t
        0x6dt
        0x43t
        0x7at
        0x56t
        0x38t
        -0x7at
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :array_b
    .array-data 1
        0x33t
        0x4at
        -0x20t
        0x61t
        -0x2at
        0xct
        0x33t
        0x2at
    .end array-data

    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    :array_c
    .array-data 1
        -0x54t
        0x68t
        -0x1bt
        -0x37t
        -0x41t
        0x13t
        0x39t
        -0x8t
        -0x51t
        0x74t
        -0x19t
        -0x35t
        -0x42t
        0x4bt
    .end array-data

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    nop

    .line 565
    :array_d
    .array-data 1
        -0x37t
        0x6t
        -0x7at
        -0x5at
        -0x25t
        0x76t
        0x5dt
        -0x28t
    .end array-data

    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_e
    .array-data 1
        -0x42t
        0x40t
        0x71t
        -0x3et
        0x58t
        -0x33t
        0x78t
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :array_f
    .array-data 1
        -0x62t
        0x21t
        0x16t
        -0x59t
        0x15t
        -0x42t
        0x45t
        -0x33t
    .end array-data

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :array_10
    .array-data 1
        -0x5at
        0x6ft
        -0x2at
        0x61t
        0x53t
        -0x3t
        -0x2dt
        0x60t
        -0xbt
        0x37t
    .end array-data

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    nop

    .line 599
    :array_11
    .array-data 1
        -0x7at
        0xat
        -0x48t
        0x2t
        0x3ct
        -0x67t
        -0x4at
        0x2dt
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :array_12
    .array-data 1
        0x31t
        -0x7dt
        -0x49t
        0x40t
        0x39t
        0x7dt
        -0x75t
    .end array-data

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :array_13
    .array-data 1
        0x11t
        -0x1ft
        -0x32t
        0x34t
        0x5ct
        0xet
        -0x4at
        0x59t
    .end array-data
.end method

.method public static f()Ljava/lang/Boolean;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Le0/m;->j:[B

    .line 11
    .line 12
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Le0/x1;->q:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Le0/m;->f:[B

    .line 40
    .line 41
    invoke-static {v2, v1, v3, v0}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide v3, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    new-instance v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Le0/m;->g:[B

    .line 80
    .line 81
    invoke-static {v2, v5, v6}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const/4 v5, 0x1

    .line 86
    new-array v6, v5, [B

    .line 87
    .line 88
    const/16 v7, 0x57

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    aput-byte v7, v6, v8

    .line 92
    .line 93
    const/16 v7, 0x8

    .line 94
    .line 95
    new-array v7, v7, [B

    .line 96
    .line 97
    fill-array-data v7, :array_1

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v7, v4, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    cmp-long v0, v0, v2

    .line 112
    .line 113
    if-gez v0, :cond_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v5, v8

    .line 117
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    return-object v0

    .line 125
    :array_0
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_1
    .array-data 1
        0x67t
        0x45t
        -0x12t
        -0x27t
        0x7t
        0x70t
        -0x31t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb1/r;->b:Z

    .line 3
    .line 4
    const/4 v0, 0x5

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
    new-array v2, v1, [B

    .line 13
    .line 14
    fill-array-data v2, :array_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    fill-array-data v3, :array_2

    .line 31
    .line 32
    .line 33
    new-array v4, v1, [B

    .line 34
    .line 35
    fill-array-data v4, :array_3

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lb1/r;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    new-array v3, v3, [B

    .line 52
    .line 53
    fill-array-data v3, :array_4

    .line 54
    .line 55
    .line 56
    new-array v1, v1, [B

    .line 57
    .line 58
    fill-array-data v1, :array_5

    .line 59
    .line 60
    .line 61
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0, v0, v1}, Lb1/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 1
        0x61t
        -0x3t
        0xdt
        0x28t
        -0x67t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    nop

    .line 85
    :array_1
    .array-data 1
        0x15t
        -0x6bt
        0x68t
        0x45t
        -0x4t
        0x66t
        -0x7ct
        -0x5ct
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_2
    .array-data 1
        0x2et
        0x32t
        0x6at
        -0x65t
        0x12t
        0x1et
        -0x15t
        0x11t
        0x6ft
        0x32t
        0x6at
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_3
    .array-data 1
        0x55t
        0x12t
        0x48t
        -0xat
        0x7dt
        0x7at
        -0x72t
        0x33t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_4
    .array-data 1
        0x60t
        -0x61t
        0x2ft
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_5
    .array-data 1
        0x42t
        -0x41t
        0x52t
        -0x19t
        -0x18t
        0x65t
        -0x55t
        0x44t
    .end array-data
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/r;->d:Lb1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb1/h;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/r;->d:Lb1/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lb1/h;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lb1/r;->f()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lb1/n;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lb1/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lb1/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final g(JJZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb1/r;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lb1/r;->n:J

    .line 5
    .line 6
    cmp-long p3, p3, v1

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-eqz p5, :cond_1

    .line 15
    .line 16
    iget-wide p3, p0, Lb1/r;->m:J

    .line 17
    .line 18
    cmp-long p3, p1, p3

    .line 19
    .line 20
    if-lez p3, :cond_1

    .line 21
    .line 22
    iput-wide p1, p0, Lb1/r;->m:J

    .line 23
    .line 24
    :cond_1
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    iput-wide p1, p0, Lb1/r;->l:J

    .line 27
    .line 28
    iget-boolean p1, p0, Lb1/r;->h:Z

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lb1/r;->j:[B

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lb1/r;->o:Z

    .line 40
    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    sget-object p1, Lb1/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 45
    .line 46
    new-instance p2, Lb1/o;

    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    invoke-direct {p2, p0, p3}, Lb1/o;-><init>(Lb1/r;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public final h(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    new-array v1, v1, [B

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    new-array v3, v2, [B

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->hudSenderType:Lcom/example/navistart/cores/HUDMassageObj$HudSenderType;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0xd

    .line 40
    .line 41
    new-array v3, v1, [B

    .line 42
    .line 43
    fill-array-data v3, :array_2

    .line 44
    .line 45
    .line 46
    new-array v4, v2, [B

    .line 47
    .line 48
    fill-array-data v4, :array_3

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->AradarOn:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v3, 0xa

    .line 64
    .line 65
    new-array v3, v3, [B

    .line 66
    .line 67
    fill-array-data v3, :array_4

    .line 68
    .line 69
    .line 70
    new-array v4, v2, [B

    .line 71
    .line 72
    fill-array-data v4, :array_5

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->NaviOn:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v3, 0xc

    .line 88
    .line 89
    new-array v4, v3, [B

    .line 90
    .line 91
    fill-array-data v4, :array_6

    .line 92
    .line 93
    .line 94
    new-array v5, v2, [B

    .line 95
    .line 96
    fill-array-data v5, :array_7

    .line 97
    .line 98
    .line 99
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget v4, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnType:I

    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    new-array v3, v3, [B

    .line 112
    .line 113
    fill-array-data v3, :array_8

    .line 114
    .line 115
    .line 116
    new-array v4, v2, [B

    .line 117
    .line 118
    fill-array-data v4, :array_9

    .line 119
    .line 120
    .line 121
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mTurnDis:I

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/16 v3, 0xe

    .line 134
    .line 135
    new-array v3, v3, [B

    .line 136
    .line 137
    fill-array-data v3, :array_a

    .line 138
    .line 139
    .line 140
    new-array v4, v2, [B

    .line 141
    .line 142
    fill-array-data v4, :array_b

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v3, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mRemainDis:I

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    new-array v1, v1, [B

    .line 158
    .line 159
    fill-array-data v1, :array_c

    .line 160
    .line 161
    .line 162
    new-array v3, v2, [B

    .line 163
    .line 164
    fill-array-data v3, :array_d

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v1, p1, Lcom/example/navistart/cores/HUDMassageObj;->v_mNextRoad:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const/16 v1, 0xf

    .line 180
    .line 181
    new-array v1, v1, [B

    .line 182
    .line 183
    fill-array-data v1, :array_e

    .line 184
    .line 185
    .line 186
    new-array v3, v2, [B

    .line 187
    .line 188
    fill-array-data v3, :array_f

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/example/navistart/cores/HUDMassageObj;->getSpeedlimit()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const/4 p1, 0x1

    .line 206
    new-array p1, p1, [B

    .line 207
    .line 208
    const/16 v1, -0x27

    .line 209
    .line 210
    const/4 v3, 0x0

    .line 211
    aput-byte v1, p1, v3

    .line 212
    .line 213
    new-array v1, v2, [B

    .line 214
    .line 215
    fill-array-data v1, :array_10

    .line 216
    .line 217
    .line 218
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const/4 v0, 0x3

    .line 223
    new-array v0, v0, [B

    .line 224
    .line 225
    fill-array-data v0, :array_11

    .line 226
    .line 227
    .line 228
    new-array v1, v2, [B

    .line 229
    .line 230
    fill-array-data v1, :array_12

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p0, v0, p1}, Lb1/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :array_0
    .array-data 1
        0x4ct
        0x1bt
        0x6dt
        0x4ct
        0xct
        -0x3et
        0x0t
        -0x25t
        0x53t
        0x5ct
        0x77t
        0x6dt
        0x11t
        -0x1ft
        0x0t
        -0x69t
        0xdt
        0x1bt
    .end array-data

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    nop

    .line 255
    :array_1
    .array-data 1
        0x37t
        0x39t
        0x5t
        0x39t
        0x68t
        -0x6ft
        0x65t
        -0x4bt
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_2
    .array-data 1
        -0x33t
        -0x5ft
        -0x59t
        -0x34t
        -0x31t
        0x14t
        0x4ft
        0x2bt
        -0x63t
        -0x3et
        -0x15t
        -0x71t
        -0x79t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    nop

    .line 275
    :array_3
    .array-data 1
        -0x11t
        -0x73t
        -0x7bt
        -0x53t
        -0x43t
        0x75t
        0x2bt
        0x4at
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_4
    .array-data 1
        0x53t
        -0x62t
        0x70t
        -0x15t
        -0x3t
        -0x3bt
        -0x5at
        -0x8t
        0x5dt
        -0x7at
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    nop

    .line 293
    :array_5
    .array-data 1
        0x7ft
        -0x44t
        0x1et
        -0x76t
        -0x75t
        -0x54t
        -0x17t
        -0x6at
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_6
    .array-data 1
        -0x32t
        0x23t
        0x2t
        -0x62t
        -0x7ft
        -0x61t
        0x3ct
        -0x71t
        -0x6et
        0x64t
        0x54t
        -0x2ft
    .end array-data

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_7
    .array-data 1
        -0x1et
        0x1t
        0x76t
        -0x15t
        -0xdt
        -0xft
        0x68t
        -0xat
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_8
    .array-data 1
        0x8t
        0x21t
        0x78t
        -0x18t
        -0x20t
        0x4t
        -0x67t
        -0x2dt
        0x57t
        0x77t
        0x2et
        -0x59t
    .end array-data

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
    :array_9
    .array-data 1
        0x24t
        0x3t
        0xct
        -0x63t
        -0x6et
        0x6at
        -0x23t
        -0x46t
    .end array-data

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    :array_a
    .array-data 1
        0x1at
        0x6t
        0x4ct
        0x77t
        0x7dt
        -0x55t
        0x42t
        0x4bt
        0x72t
        0x4dt
        0x4dt
        0x66t
        0x32t
        -0x10t
    .end array-data

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
    nop

    .line 349
    :array_b
    .array-data 1
        0x36t
        0x24t
        0x3et
        0x12t
        0x10t
        -0x36t
        0x2bt
        0x25t
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_c
    .array-data 1
        -0xdt
        0x5dt
        0x2at
        0xbt
        0x23t
        -0x4t
        0x28t
        0x65t
        -0x42t
        0x1bt
        0x66t
        0x54t
        0x79t
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    nop

    .line 369
    :array_d
    .array-data 1
        -0x21t
        0x7ft
        0x44t
        0x6et
        0x5bt
        -0x78t
        0x7at
        0xat
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_e
    .array-data 1
        -0xdt
        0x75t
        -0x36t
        0x56t
        -0x30t
        -0x34t
        0x40t
        -0x1t
        -0x63t
        0x30t
        -0x7bt
        0x4ct
        -0x2ct
        -0x75t
        0x1ft
    .end array-data

    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_f
    .array-data 1
        -0x2ft
        0x59t
        -0x18t
        0x25t
        -0x60t
        -0x57t
        0x25t
        -0x65t
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    :array_10
    .array-data 1
        -0x5ct
        0x4ct
        0x60t
        0xbt
        -0x39t
        -0x1ft
        -0x65t
        -0x34t
    .end array-data

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_11
    .array-data 1
        0x45t
        0x11t
        0x5bt
    .end array-data

    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_12
    .array-data 1
        0x2dt
        0x64t
        0x3ft
        0x72t
        -0x36t
        0x51t
        0x1dt
        0x56t
    .end array-data
.end method

.method public final i(Landroid/location/Location;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    new-array v4, v3, [B

    .line 15
    .line 16
    fill-array-data v4, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    new-array v1, v1, [B

    .line 34
    .line 35
    fill-array-data v1, :array_2

    .line 36
    .line 37
    .line 38
    new-array v2, v3, [B

    .line 39
    .line 40
    fill-array-data v2, :array_3

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x9

    .line 58
    .line 59
    new-array v1, v1, [B

    .line 60
    .line 61
    fill-array-data v1, :array_4

    .line 62
    .line 63
    .line 64
    new-array v2, v3, [B

    .line 65
    .line 66
    fill-array-data v2, :array_5

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v1, 0xb

    .line 84
    .line 85
    new-array v1, v1, [B

    .line 86
    .line 87
    fill-array-data v1, :array_6

    .line 88
    .line 89
    .line 90
    new-array v2, v3, [B

    .line 91
    .line 92
    fill-array-data v2, :array_7

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x1

    .line 110
    new-array p1, p1, [B

    .line 111
    .line 112
    const/16 v1, -0x9

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    aput-byte v1, p1, v2

    .line 116
    .line 117
    new-array v1, v3, [B

    .line 118
    .line 119
    fill-array-data v1, :array_8

    .line 120
    .line 121
    .line 122
    invoke-static {p1, v1, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const/4 v0, 0x3

    .line 127
    new-array v0, v0, [B

    .line 128
    .line 129
    fill-array-data v0, :array_9

    .line 130
    .line 131
    .line 132
    new-array v1, v3, [B

    .line 133
    .line 134
    fill-array-data v1, :array_a

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0, p1}, Lb1/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :array_0
    .array-data 1
        -0xat
        -0x60t
        0x3bt
        -0xdt
        0x1dt
        -0x2ct
        0x63t
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 1
        -0x73t
        -0x7et
        0x57t
        -0x6et
        0x69t
        -0xat
        0x59t
        0x6ct
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :array_2
    .array-data 1
        0xct
        -0x37t
        0x2ft
        0x3bt
        0x54t
        0x2et
        -0x6ft
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_3
    .array-data 1
        0x20t
        -0x15t
        0x43t
        0x54t
        0x3at
        0xct
        -0x55t
        0x1bt
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_4
    .array-data 1
        0x10t
        -0x6et
        -0x60t
        -0x6dt
        -0x66t
        0x33t
        0x7bt
        -0x75t
        0x6t
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    nop

    .line 187
    :array_5
    .array-data 1
        0x3ct
        -0x50t
        -0x2dt
        -0x1dt
        -0x1t
        0x56t
        0x1ft
        -0x57t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :array_6
    .array-data 1
        0x67t
        0x2t
        0x50t
        -0x7et
        0x20t
        0x68t
        0x1dt
        -0x80t
        0x2ct
        0x2t
        0x2t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    :array_7
    .array-data 1
        0x4bt
        0x20t
        0x38t
        -0x19t
        0x41t
        0xct
        0x74t
        -0x12t
    .end array-data

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_8
    .array-data 1
        -0x76t
        0x51t
        0x2ct
        0x6bt
        -0xft
        -0x47t
        0x13t
        -0x34t
    .end array-data

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    :array_9
    .array-data 1
        -0x3at
        -0x1ft
        0x70t
    .end array-data

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_a
    .array-data 1
        -0x5ft
        -0x6ft
        0x3t
        0x23t
        -0x6dt
        -0x1bt
        -0x65t
        -0x20t
    .end array-data
.end method

.method public final j(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lb1/r;->h:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lb1/r;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Lb1/r;->i:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-wide v1, p0, Lb1/r;->n:J

    .line 12
    .line 13
    const-wide/16 v3, 0x1

    .line 14
    .line 15
    add-long/2addr v1, v3

    .line 16
    iput-wide v1, p0, Lb1/r;->n:J

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lb1/r;->j:[B

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, p0, Lb1/r;->k:J

    .line 24
    .line 25
    iput-wide v1, p0, Lb1/r;->l:J

    .line 26
    .line 27
    iput-wide v1, p0, Lb1/r;->m:J

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lb1/r;->o:Z

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lb1/r;->g:Lb1/f;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lb1/r;->e:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p1}, Lb1/f;->b(Landroid/content/Context;)Lb1/f;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lb1/r;->g:Lb1/f;

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lb1/r;->g:Lb1/f;

    .line 48
    .line 49
    iget-object v0, p1, Lb1/f;->b:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v1, Lb1/a;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v1, p1, p0, v2}, Lb1/a;-><init>(Lb1/f;Lb1/r;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object p1, v0, Lb1/f;->b:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v1, Lb1/a;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v1, v0, p0, v2}, Lb1/a;-><init>(Lb1/f;Lb1/r;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1
.end method

.method public final k([BJ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lb1/r;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v0, p0, Lb1/r;->i:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-wide v1, p0, Lb1/r;->m:J

    .line 15
    .line 16
    iget-wide v3, p0, Lb1/r;->l:J

    .line 17
    .line 18
    iget-wide v5, p0, Lb1/r;->k:J

    .line 19
    .line 20
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    cmp-long v1, p2, v1

    .line 29
    .line 30
    if-gtz v1, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iput-object p1, p0, Lb1/r;->j:[B

    .line 37
    .line 38
    iput-wide p2, p0, Lb1/r;->k:J

    .line 39
    .line 40
    iget-boolean p1, p0, Lb1/r;->o:Z

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lb1/r;->o:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    sget-object p1, Lb1/r;->s:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 53
    .line 54
    new-instance p2, Lb1/o;

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    invoke-direct {p2, p0, p3}, Lb1/o;-><init>(Lb1/r;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p1

    .line 66
    :cond_3
    :goto_2
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/r;->g:Lb1/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lb1/r;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lb1/f;->b(Landroid/content/Context;)Lb1/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lb1/r;->g:Lb1/f;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lb1/r;->g:Lb1/f;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    new-array v1, v1, [B

    .line 20
    .line 21
    fill-array-data v1, :array_0

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    new-array v2, v2, [B

    .line 27
    .line 28
    fill-array-data v2, :array_1

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object p1, v0, Lb1/f;->b:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v2, La4/c;

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    invoke-direct {v2, v0, v1, v3}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 1
        -0x5et
        0x15t
        -0x1ft
        0x38t
        -0x63t
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :array_1
    .array-data 1
        -0x34t
        0x7ct
        -0x7at
        0x50t
        -0x17t
        0x27t
        -0x6dt
        -0xdt
    .end array-data
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/example/navistart/cores/InterC;->lo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
