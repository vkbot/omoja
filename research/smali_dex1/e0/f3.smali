.class public final Le0/f3;
.super Landroid/os/AsyncTask;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/StringBuilder;

.field public c:I

.field public d:Lcom/example/navistart/VJCT;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Le0/f3;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Le0/f3;->d:Lcom/example/navistart/VJCT;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0xb

    .line 10
    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    fill-array-data v2, :array_3c

    .line 14
    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    new-array v3, v3, [B

    .line 19
    .line 20
    fill-array-data v3, :array_46

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_29

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    goto :goto_29

    .line 40
    :catch_27
    move-exception p1

    .line 41
    goto :goto_38

    .line 42
    :cond_29
    :goto_29
    new-instance v1, Ljava/io/FileWriter;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_27

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :array_3c
    .array-data 1
        -0x5t
        -0x48t
        -0x39t
        0x8t
        0x1dt
        0x2dt
        -0x8t
        -0x62t
        -0x3dt
        -0x6ft
        -0x2t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_46
    .array-data 1
        -0x54t
        -0x1t
        -0x68t
        0x5et
        0x4dt
        0x63t
        -0x2at
        -0x3t
    .end array-data
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 1
    iget v0, p0, Le0/f3;->a:I

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/16 v4, 0x8

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_28c

    .line 10
    .line 11
    .line 12
    check-cast p1, [Ljava/lang/String;

    .line 13
    .line 14
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_74

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    :try_start_13
    new-array v6, v3, [B

    .line 21
    .line 22
    fill-array-data v6, :array_292

    .line 23
    .line 24
    .line 25
    new-array v7, v4, [B

    .line 26
    .line 27
    fill-array-data v7, :array_298

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x0

    .line 35
    aget-object v7, p1, v7

    .line 36
    .line 37
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    new-array v6, v3, [B

    .line 41
    .line 42
    fill-array-data v6, :array_2a0

    .line 43
    .line 44
    .line 45
    new-array v7, v4, [B

    .line 46
    .line 47
    fill-array-data v7, :array_2a6

    .line 48
    .line 49
    .line 50
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    aget-object v7, p1, v5

    .line 55
    .line 56
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    new-array v6, v3, [B

    .line 60
    .line 61
    fill-array-data v6, :array_2ae

    .line 62
    .line 63
    .line 64
    new-array v7, v4, [B

    .line 65
    .line 66
    fill-array-data v7, :array_2b4

    .line 67
    .line 68
    .line 69
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    aget-object v7, p1, v3

    .line 74
    .line 75
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    new-array v3, v3, [B

    .line 79
    .line 80
    fill-array-data v3, :array_2bc

    .line 81
    .line 82
    .line 83
    new-array v6, v4, [B

    .line 84
    .line 85
    fill-array-data v6, :array_2c2

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    aget-object p1, p1, v2

    .line 93
    .line 94
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    new-array p1, v2, [B

    .line 98
    .line 99
    fill-array-data p1, :array_2ca

    .line 100
    .line 101
    .line 102
    new-array v2, v4, [B

    .line 103
    .line 104
    fill-array-data v2, :array_2d0

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v2, ""

    .line 112
    .line 113
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_73} :catch_77
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_73} :catch_74

    .line 114
    .line 115
    .line 116
    goto :goto_7b

    .line 117
    :catch_74
    move-exception p1

    .line 118
    goto/16 :goto_130

    .line 119
    .line 120
    :catch_77
    move-exception p1

    .line 121
    :try_start_78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :goto_7b
    new-instance p1, Ljava/net/URL;

    .line 125
    .line 126
    const/16 v2, 0x25

    .line 127
    .line 128
    new-array v2, v2, [B

    .line 129
    .line 130
    fill-array-data v2, :array_2d8

    .line 131
    .line 132
    .line 133
    new-array v3, v4, [B

    .line 134
    .line 135
    fill-array-data v3, :array_2f0

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 150
    .line 151
    const/4 v2, 0x4

    .line 152
    new-array v2, v2, [B

    .line 153
    .line 154
    fill-array-data v2, :array_2f8

    .line 155
    .line 156
    .line 157
    new-array v3, v4, [B

    .line 158
    .line 159
    fill-array-data v3, :array_2fe

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-array v1, v1, [B

    .line 170
    .line 171
    fill-array-data v1, :array_306

    .line 172
    .line 173
    .line 174
    new-array v2, v4, [B

    .line 175
    .line 176
    fill-array-data v2, :array_310

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const/16 v2, 0x1e

    .line 184
    .line 185
    new-array v2, v2, [B

    .line 186
    .line 187
    fill-array-data v2, :array_318

    .line 188
    .line 189
    .line 190
    new-array v3, v4, [B

    .line 191
    .line 192
    fill-array-data v3, :array_32c

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const/4 v1, 0x6

    .line 203
    new-array v1, v1, [B

    .line 204
    .line 205
    fill-array-data v1, :array_334

    .line 206
    .line 207
    .line 208
    new-array v2, v4, [B

    .line 209
    .line 210
    fill-array-data v2, :array_33c

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const/16 v2, 0x10

    .line 218
    .line 219
    new-array v2, v2, [B

    .line 220
    .line 221
    fill-array-data v2, :array_344

    .line 222
    .line 223
    .line 224
    new-array v3, v4, [B

    .line 225
    .line 226
    fill-array-data v3, :array_350

    .line 227
    .line 228
    .line 229
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v5}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 240
    .line 241
    .line 242
    new-instance v1, Ljava/io/DataOutputStream;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iput v0, p0, Le0/f3;->c:I

    .line 269
    .line 270
    new-instance v0, Ljava/io/BufferedReader;

    .line 271
    .line 272
    new-instance v1, Ljava/io/InputStreamReader;

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 279
    .line 280
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 281
    .line 282
    .line 283
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 284
    .line 285
    .line 286
    :goto_11d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-eqz v1, :cond_129

    .line 291
    .line 292
    iget-object v2, p0, Le0/f3;->b:Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    goto :goto_11d

    .line 298
    :cond_129
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_12f} :catch_74

    .line 302
    .line 303
    .line 304
    goto :goto_133

    .line 305
    :goto_130
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .line 307
    .line 308
    :goto_133
    iget p1, p0, Le0/f3;->c:I

    .line 309
    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    return-object p1

    .line 315
    :pswitch_13a
    check-cast p1, [Ljava/lang/String;

    .line 316
    .line 317
    iget-object v0, p0, Le0/f3;->d:Lcom/example/navistart/VJCT;

    .line 318
    .line 319
    :try_start_13e
    iget-object v5, v0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 320
    .line 321
    const/16 v6, 0xa

    .line 322
    .line 323
    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    .line 325
    .line 326
    new-instance v5, Lorg/json/JSONObject;

    .line 327
    .line 328
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_14a} :catch_1ac

    .line 329
    .line 330
    .line 331
    const/4 v6, 0x1

    .line 332
    :try_start_14b
    new-array v7, v3, [B

    .line 333
    .line 334
    fill-array-data v7, :array_358

    .line 335
    .line 336
    .line 337
    new-array v8, v4, [B

    .line 338
    .line 339
    fill-array-data v8, :array_35e

    .line 340
    .line 341
    .line 342
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    const/4 v8, 0x0

    .line 347
    aget-object v8, p1, v8

    .line 348
    .line 349
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    .line 351
    .line 352
    new-array v7, v3, [B

    .line 353
    .line 354
    fill-array-data v7, :array_366

    .line 355
    .line 356
    .line 357
    new-array v8, v4, [B

    .line 358
    .line 359
    fill-array-data v8, :array_36c

    .line 360
    .line 361
    .line 362
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    aget-object v8, p1, v6

    .line 367
    .line 368
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    .line 370
    .line 371
    new-array v7, v3, [B

    .line 372
    .line 373
    fill-array-data v7, :array_374

    .line 374
    .line 375
    .line 376
    new-array v8, v4, [B

    .line 377
    .line 378
    fill-array-data v8, :array_37a

    .line 379
    .line 380
    .line 381
    invoke-static {v7, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    aget-object v8, p1, v3

    .line 386
    .line 387
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    .line 389
    .line 390
    new-array v3, v3, [B

    .line 391
    .line 392
    fill-array-data v3, :array_382

    .line 393
    .line 394
    .line 395
    new-array v7, v4, [B

    .line 396
    .line 397
    fill-array-data v7, :array_388

    .line 398
    .line 399
    .line 400
    invoke-static {v3, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    aget-object p1, p1, v2

    .line 405
    .line 406
    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    .line 408
    .line 409
    new-array p1, v2, [B

    .line 410
    .line 411
    fill-array-data p1, :array_390

    .line 412
    .line 413
    .line 414
    new-array v2, v4, [B

    .line 415
    .line 416
    fill-array-data v2, :array_396

    .line 417
    .line 418
    .line 419
    invoke-static {p1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    const-string v2, ""

    .line 424
    .line 425
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ab
    .catch Lorg/json/JSONException; {:try_start_14b .. :try_end_1ab} :catch_1af
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_1ab} :catch_1ac

    .line 426
    .line 427
    .line 428
    goto :goto_1b3

    .line 429
    :catch_1ac
    move-exception p1

    .line 430
    goto/16 :goto_282

    .line 431
    .line 432
    :catch_1af
    move-exception p1

    .line 433
    :try_start_1b0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 434
    .line 435
    .line 436
    :goto_1b3
    iget-object p1, v0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 437
    .line 438
    const/16 v2, 0x14

    .line 439
    .line 440
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 441
    .line 442
    .line 443
    new-instance p1, Ljava/net/URL;

    .line 444
    .line 445
    const/16 v2, 0x20

    .line 446
    .line 447
    new-array v2, v2, [B

    .line 448
    .line 449
    fill-array-data v2, :array_39e

    .line 450
    .line 451
    .line 452
    new-array v3, v4, [B

    .line 453
    .line 454
    fill-array-data v3, :array_3b2

    .line 455
    .line 456
    .line 457
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 469
    .line 470
    const/4 v2, 0x4

    .line 471
    new-array v2, v2, [B

    .line 472
    .line 473
    fill-array-data v2, :array_3ba

    .line 474
    .line 475
    .line 476
    new-array v3, v4, [B

    .line 477
    .line 478
    fill-array-data v3, :array_3c0

    .line 479
    .line 480
    .line 481
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    new-array v1, v1, [B

    .line 489
    .line 490
    fill-array-data v1, :array_3c8

    .line 491
    .line 492
    .line 493
    new-array v2, v4, [B

    .line 494
    .line 495
    fill-array-data v2, :array_3d2

    .line 496
    .line 497
    .line 498
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    const/16 v2, 0x1e

    .line 503
    .line 504
    new-array v2, v2, [B

    .line 505
    .line 506
    fill-array-data v2, :array_3da

    .line 507
    .line 508
    .line 509
    new-array v3, v4, [B

    .line 510
    .line 511
    fill-array-data v3, :array_3ee

    .line 512
    .line 513
    .line 514
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const/4 v1, 0x6

    .line 522
    new-array v1, v1, [B

    .line 523
    .line 524
    fill-array-data v1, :array_3f6

    .line 525
    .line 526
    .line 527
    new-array v2, v4, [B

    .line 528
    .line 529
    fill-array-data v2, :array_3fe

    .line 530
    .line 531
    .line 532
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    const/16 v2, 0x10

    .line 537
    .line 538
    new-array v2, v2, [B

    .line 539
    .line 540
    fill-array-data v2, :array_406

    .line 541
    .line 542
    .line 543
    new-array v3, v4, [B

    .line 544
    .line 545
    fill-array-data v3, :array_412

    .line 546
    .line 547
    .line 548
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {p1, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p1, v6}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Ljava/io/DataOutputStream;

    .line 562
    .line 563
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 581
    .line 582
    .line 583
    iget-object v1, v0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 584
    .line 585
    const/16 v2, 0x28

    .line 586
    .line 587
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    iput v1, p0, Le0/f3;->c:I

    .line 595
    .line 596
    new-instance v1, Ljava/io/BufferedReader;

    .line 597
    .line 598
    new-instance v2, Ljava/io/InputStreamReader;

    .line 599
    .line 600
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 605
    .line 606
    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 607
    .line 608
    .line 609
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 610
    .line 611
    .line 612
    :goto_263
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    if-eqz v2, :cond_274

    .line 617
    .line 618
    iget-object v3, p0, Le0/f3;->b:Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v2, "\n"

    .line 624
    .line 625
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    goto :goto_263

    .line 629
    :cond_274
    iget-object v0, v0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 630
    .line 631
    const/16 v2, 0x3c

    .line 632
    .line 633
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_281} :catch_1ac

    .line 640
    .line 641
    .line 642
    goto :goto_285

    .line 643
    :goto_282
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 644
    .line 645
    .line 646
    :goto_285
    iget p1, p0, Le0/f3;->c:I

    .line 647
    .line 648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    return-object p1

    .line 653
    :pswitch_data_28c
    .packed-switch 0x0
        :pswitch_13a
    .end packed-switch

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_292
    .array-data 1
        0x65t
        -0x79t
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    nop

    .line 665
    :array_298
    .array-data 1
        0xct
        -0x1dt
        -0x53t
        0x5dt
        -0x27t
        0x20t
        -0x10t
        -0x4dt
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    :array_2a0
    .array-data 1
        -0x2et
        0x14t
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    nop

    .line 679
    :array_2a6
    .array-data 1
        -0x5ft
        0x7ct
        0x1dt
        -0x55t
        -0xbt
        -0x5bt
        -0x42t
        0x43t
    .end array-data

    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    :array_2ae
    .array-data 1
        -0x2dt
        0x5ct
    .end array-data

    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    nop

    .line 693
    :array_2b4
    .array-data 1
        -0x5dt
        0x35t
        0x16t
        0x7t
        0x70t
        -0x11t
        -0x1dt
        -0x41t
    .end array-data

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    :array_2bc
    .array-data 1
        0x2ct
        0x2ft
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    nop

    .line 707
    :array_2c2
    .array-data 1
        0x49t
        0x42t
        -0x24t
        0x4t
        -0x30t
        -0x6t
        -0x6ct
        0x4ft
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_2ca
    .array-data 1
        -0x72t
        0x51t
        0x7t
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    :array_2d0
    .array-data 1
        -0x1et
        0x3et
        0x60t
        0x67t
        0x62t
        0x7at
        0x45t
        0x5dt
    .end array-data

    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :array_2d8
    .array-data 1
        -0x55t
        -0x80t
        -0x2ct
        0x5et
        -0x7bt
        -0x4bt
        -0x7dt
        0x6et
        -0x57t
        -0x69t
        -0x3ft
        0x5ct
        -0x7et
        -0x20t
        -0x3dt
        0x2dt
        -0x50t
        -0x26t
        -0x2et
        0x5bt
        -0x27t
        -0x20t
        -0x28t
        0x31t
        -0x14t
        -0x7et
        -0x30t
        0x40t
        -0x57t
        -0x5t
        -0x3bt
        0x2ct
        -0x5at
        -0x26t
        -0x30t
        0x46t
        -0x7at
    .end array-data

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    nop

    .line 753
    :array_2f0
    .array-data 1
        -0x3dt
        -0xct
        -0x60t
        0x2et
        -0xat
        -0x71t
        -0x54t
        0x41t
    .end array-data

    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_2f8
    .array-data 1
        0x70t
        -0x2et
        0x26t
        -0x36t
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :array_2fe
    .array-data 1
        0x20t
        -0x63t
        0x75t
        -0x62t
        0x67t
        0x28t
        0x3bt
        -0x5ct
    .end array-data

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :array_306
    .array-data 1
        0x57t
        0x17t
        0x3t
        0x9t
        0x2t
        -0x69t
        -0x32t
        0x73t
        0x40t
        0x1t
        0x1dt
        0x18t
    .end array-data

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :array_310
    .array-data 1
        0x14t
        0x78t
        0x6dt
        0x7dt
        0x67t
        -0x7t
        -0x46t
        0x5et
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :array_318
    .array-data 1
        0x71t
        0x6dt
        0x36t
        0x7t
        0x5ft
        -0x36t
        0x59t
        -0x7ct
        0x79t
        0x72t
        0x28t
        0x44t
        0x5ct
        -0x26t
        0x57t
        -0x62t
        0x2bt
        0x7et
        0x2et
        0xat
        0x44t
        -0x26t
        0x5dt
        -0x7ct
        0x2dt
        0x48t
        0x12t
        0x2dt
        0x1bt
        -0x6ft
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    nop

    .line 813
    :array_32c
    .array-data 1
        0x10t
        0x1dt
        0x46t
        0x6bt
        0x36t
        -0x57t
        0x38t
        -0x10t
    .end array-data

    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_334
    .array-data 1
        -0x22t
        -0x7ft
        -0x3ft
        0x56t
        -0x49t
        0x56t
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    nop

    .line 829
    :array_33c
    .array-data 1
        -0x61t
        -0x1et
        -0x5et
        0x33t
        -0x39t
        0x22t
        0x4at
        -0x77t
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    :array_344
    .array-data 1
        -0x10t
        0x7et
        -0x37t
        -0x3ct
        0x57t
        0x78t
        0x63t
        -0x29t
        -0x8t
        0x61t
        -0x29t
        -0x79t
        0x54t
        0x68t
        0x6dt
        -0x33t
    .end array-data

    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :array_350
    .array-data 1
        -0x6ft
        0xet
        -0x47t
        -0x58t
        0x3et
        0x1bt
        0x2t
        -0x5dt
    .end array-data

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :array_358
    .array-data 1
        -0x30t
        -0x5et
    .end array-data

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    nop

    .line 863
    :array_35e
    .array-data 1
        -0x47t
        -0x3at
        0x28t
        0x3t
        0x35t
        0x26t
        -0x2ft
        -0xat
    .end array-data

    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    :array_366
    .array-data 1
        -0x5et
        0x24t
    .end array-data

    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    nop

    .line 877
    :array_36c
    .array-data 1
        -0x2ft
        0x4ct
        0x19t
        0xct
        -0x74t
        -0x25t
        -0xft
        0x32t
    .end array-data

    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :array_374
    .array-data 1
        -0x58t
        0x7ft
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    nop

    .line 891
    :array_37a
    .array-data 1
        -0x28t
        0x16t
        -0x39t
        -0x80t
        -0x38t
        0x16t
        0x74t
        0x5dt
    .end array-data

    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :array_382
    .array-data 1
        0x3at
        -0x67t
    .end array-data

    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    nop

    .line 905
    :array_388
    .array-data 1
        0x5ft
        -0xct
        0x33t
        0x44t
        -0x1bt
        -0x16t
        -0x31t
        -0x7bt
    .end array-data

    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    :array_390
    .array-data 1
        0x7et
        -0x3dt
        -0x2ct
    .end array-data

    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    :array_396
    .array-data 1
        0x12t
        -0x54t
        -0x4dt
        -0x70t
        -0x60t
        0x5ft
        0x55t
        0x2at
    .end array-data

    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    :array_39e
    .array-data 1
        0x1dt
        -0x4ct
        -0x3ft
        -0x65t
        -0x29t
        -0x4et
        -0x62t
        -0x11t
        0x1ft
        -0x5dt
        -0x2ct
        -0x67t
        -0x30t
        -0x19t
        -0x22t
        -0x54t
        0x6t
        -0x12t
        -0x39t
        -0x62t
        -0x75t
        -0x19t
        -0x3bt
        -0x50t
        0x5at
        -0x4at
        -0x3bt
        -0x7bt
        -0x76t
        -0x8t
        -0x27t
        -0x50t
    .end array-data

    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    :array_3b2
    .array-data 1
        0x75t
        -0x40t
        -0x4bt
        -0x15t
        -0x5ct
        -0x78t
        -0x4ft
        -0x40t
    .end array-data

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    :array_3ba
    .array-data 1
        0x44t
        -0xet
        0x18t
        -0xct
    .end array-data

    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    :array_3c0
    .array-data 1
        0x14t
        -0x43t
        0x4bt
        -0x60t
        0xdt
        -0x2t
        -0x47t
        -0x6bt
    .end array-data

    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    :array_3c8
    .array-data 1
        -0xet
        -0x1ft
        0x58t
        0x6ft
        0x3at
        0x7dt
        -0x67t
        -0x4bt
        -0x1bt
        -0x9t
        0x46t
        0x7et
    .end array-data

    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :array_3d2
    .array-data 1
        -0x4ft
        -0x72t
        0x36t
        0x1bt
        0x5ft
        0x13t
        -0x13t
        -0x68t
    .end array-data

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    :array_3da
    .array-data 1
        -0x62t
        0x1ft
        0x3bt
        -0x27t
        -0x45t
        0x34t
        0x2ct
        -0x34t
        -0x6at
        0x0t
        0x25t
        -0x66t
        -0x48t
        0x24t
        0x22t
        -0x2at
        -0x3ct
        0xct
        0x23t
        -0x2ct
        -0x60t
        0x24t
        0x28t
        -0x34t
        -0x3et
        0x3at
        0x1ft
        -0xdt
        -0x1t
        0x6ft
    .end array-data

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    nop

    .line 1007
    :array_3ee
    .array-data 1
        -0x1t
        0x6ft
        0x4bt
        -0x4bt
        -0x2et
        0x57t
        0x4dt
        -0x48t
    .end array-data

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    :array_3f6
    .array-data 1
        -0x62t
        -0x76t
        0x79t
        -0x3ft
        0x69t
        0xet
    .end array-data

    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    nop

    .line 1023
    :array_3fe
    .array-data 1
        -0x21t
        -0x17t
        0x1at
        -0x5ct
        0x19t
        0x7at
        0x51t
        0x20t
    .end array-data

    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    :array_406
    .array-data 1
        0x3at
        -0x2ct
        -0x4ct
        0x5ft
        -0x7dt
        -0x7ft
        0x2bt
        0x31t
        0x32t
        -0x35t
        -0x56t
        0x1ct
        -0x80t
        -0x6ft
        0x25t
        0x2bt
    .end array-data

    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_412
    .array-data 1
        0x5bt
        -0x5ct
        -0x3ct
        0x33t
        -0x16t
        -0x1et
        0x4at
        0x45t
    .end array-data
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget v0, p0, Le0/f3;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_fa

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    iget-object v0, p0, Le0/f3;->d:Lcom/example/navistart/VJCT;

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :try_start_e
    new-instance p1, Lorg/json/JSONObject;

    .line 16
    .line 17
    iget-object v2, p0, Le0/f3;->b:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0xb

    .line 27
    .line 28
    new-array v3, v2, [B

    .line 29
    .line 30
    fill-array-data v3, :array_100

    .line 31
    .line 32
    .line 33
    new-array v4, v1, [B

    .line 34
    .line 35
    fill-array-data v4, :array_10a

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_8e

    .line 47
    .line 48
    new-array v2, v2, [B

    .line 49
    .line 50
    fill-array-data v2, :array_112

    .line 51
    .line 52
    .line 53
    new-array v3, v1, [B

    .line 54
    .line 55
    fill-array-data v3, :array_11c

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const v4, 0x7f1304db

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    new-array v3, v3, [B

    .line 87
    .line 88
    fill-array-data v3, :array_124

    .line 89
    .line 90
    .line 91
    new-array v1, v1, [B

    .line 92
    .line 93
    fill-array-data v1, :array_12a

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const v1, 0x7f1304dd

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    sget-object v0, Lcom/example/navistart/VJCT;->j:Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v0, :cond_8e

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_82} :catch_85
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_83

    .line 129
    .line 130
    .line 131
    goto :goto_8e

    .line 132
    :catch_83
    move-exception p1

    .line 133
    goto :goto_87

    .line 134
    :catch_85
    move-exception p1

    .line 135
    goto :goto_8b

    .line 136
    :goto_87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    goto :goto_8e

    .line 140
    :goto_8b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    :cond_8e
    :goto_8e
    return-void

    .line 144
    :pswitch_8f
    check-cast p1, Ljava/lang/Integer;

    .line 145
    .line 146
    iget-object v0, p0, Le0/f3;->d:Lcom/example/navistart/VJCT;

    .line 147
    .line 148
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :try_start_96
    iget-object v2, v0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 152
    .line 153
    const/16 v3, 0x50

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    const/16 v3, 0xc8

    .line 163
    .line 164
    if-ne v2, v3, :cond_c1

    .line 165
    .line 166
    iget-object p1, p0, Le0/f3;->b:Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Le0/f3;->a(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const v2, 0x7f1304d8

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    goto :goto_ee

    .line 192
    :catch_bf
    move-exception p1

    .line 193
    goto :goto_f6

    .line 194
    :cond_c1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    const/16 v2, 0x191

    .line 199
    .line 200
    if-ne p1, v2, :cond_da

    .line 201
    .line 202
    sget-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const v2, 0x7f130353

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    goto :goto_ee

    .line 219
    :cond_da
    sget-object p1, Lcom/example/navistart/VJCT;->g:Landroid/widget/TextView;

    .line 220
    .line 221
    const/4 v2, 0x6

    .line 222
    new-array v2, v2, [B

    .line 223
    .line 224
    fill-array-data v2, :array_132

    .line 225
    .line 226
    .line 227
    new-array v1, v1, [B

    .line 228
    .line 229
    fill-array-data v1, :array_13a

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :goto_ee
    iget-object p1, v0, Lcom/example/navistart/VJCT;->c:Landroid/widget/ProgressBar;

    .line 240
    .line 241
    const/16 v0, 0x64

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_f5} :catch_bf

    .line 244
    .line 245
    .line 246
    goto :goto_f9

    .line 247
    :goto_f6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    .line 249
    .line 250
    :goto_f9
    return-void

    .line 251
    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_8f
    .end packed-switch

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_100
    .array-data 1
        0x74t
        0x63t
        -0xat
        0x33t
        -0xdt
        0x4at
        -0x9t
        -0x32t
        0x70t
        0x6ft
        -0x1dt
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_10a
    .array-data 1
        0x11t
        0x1bt
        -0x7at
        0x5at
        -0x7ft
        0x2ft
        -0x58t
        -0x56t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_112
    .array-data 1
        -0x62t
        0x44t
        0x32t
        0x7ft
        0x1dt
        -0x30t
        0x17t
        0x60t
        -0x66t
        0x48t
        0x27t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    :array_11c
    .array-data 1
        -0x5t
        0x3ct
        0x42t
        0x16t
        0x6ft
        -0x4bt
        0x48t
        0x4t
    .end array-data

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_124
    .array-data 1
        0x67t
        -0x70t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    nop

    .line 299
    :array_12a
    .array-data 1
        0x49t
        -0x50t
        -0x5dt
        -0x32t
        -0x21t
        -0x65t
        -0x5dt
        0x1ft
    .end array-data

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_132
    .array-data 1
        -0x60t
        0x59t
        0x4at
        0x5ft
        -0xet
        0x8t
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    nop

    .line 315
    :array_13a
    .array-data 1
        -0x1bt
        0x2bt
        0x38t
        0x30t
        -0x80t
        0x29t
        0x6at
        0x3t
    .end array-data
.end method
