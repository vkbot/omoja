.class public final Ld1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ld1/b;

.field public e:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_12

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_1c

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :array_12
    .array-data 1
        -0x7ct
        -0x59t
        0x4at
        -0x5t
        -0x1t
        -0x3et
        -0x23t
        -0x1bt
        -0x7ct
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    nop

    .line 29
    :array_1c
    .array-data 1
        -0x4bt
        -0x6bt
        0x7dt
        -0x2bt
        -0x31t
        -0x14t
        -0x13t
        -0x35t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ld1/a;->S()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    if-nez v0, :cond_11d

    .line 18
    .line 19
    iput-object p2, p0, Ld1/a;->b:Ljava/lang/String;

    .line 20
    .line 21
    const/16 p2, 0x15b3

    .line 22
    .line 23
    iput p2, p0, Ld1/a;->c:I

    .line 24
    .line 25
    new-instance p2, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x3

    .line 32
    new-array v2, v0, [B

    .line 33
    .line 34
    fill-array-data v2, :array_132

    .line 35
    .line 36
    .line 37
    new-array v3, v1, [B

    .line 38
    .line 39
    fill-array-data v3, :array_138

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {p2, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_52

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3d

    .line 60
    .line 61
    goto :goto_52

    .line 62
    :cond_3d
    const/16 p1, 0x44

    .line 63
    .line 64
    new-array p1, p1, [B

    .line 65
    .line 66
    fill-array-data p1, :array_140

    .line 67
    .line 68
    .line 69
    new-array p2, v1, [B

    .line 70
    .line 71
    fill-array-data p2, :array_166

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    throw p1

    .line 83
    :cond_52
    :goto_52
    sget-object p1, Ld1/b;->b:[B

    .line 84
    .line 85
    new-instance p1, Ljava/io/File;

    .line 86
    .line 87
    const/4 v2, 0x6

    .line 88
    new-array v2, v2, [B

    .line 89
    .line 90
    fill-array-data v2, :array_16e

    .line 91
    .line 92
    .line 93
    new-array v3, v1, [B

    .line 94
    .line 95
    fill-array-data v3, :array_176

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Ljava/io/File;

    .line 106
    .line 107
    const/16 v3, 0xa

    .line 108
    .line 109
    new-array v3, v3, [B

    .line 110
    .line 111
    fill-array-data v3, :array_17e

    .line 112
    .line 113
    .line 114
    new-array v4, v1, [B

    .line 115
    .line 116
    fill-array-data v4, :array_188

    .line 117
    .line 118
    .line 119
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_c0

    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_c0

    .line 137
    .line 138
    :try_start_89
    new-array p2, v0, [B

    .line 139
    .line 140
    fill-array-data p2, :array_190

    .line 141
    .line 142
    .line 143
    new-array v3, v1, [B

    .line 144
    .line 145
    fill-array-data v3, :array_196

    .line 146
    .line 147
    .line 148
    invoke-static {p2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    new-instance v3, Ld1/b;

    .line 157
    .line 158
    new-instance v4, Ljava/security/KeyPair;

    .line 159
    .line 160
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    .line 161
    .line 162
    invoke-static {v2}, Ld1/b;->a(Ljava/io/File;)[B

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-direct {v5, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 174
    .line 175
    invoke-static {p1}, Ld1/b;->a(Ljava/io/File;)[B

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-direct {v6, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-direct {v4, v5, p2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v4}, Ld1/b;-><init>(Ljava/security/KeyPair;)V
    :try_end_bf
    .catch Ljava/security/GeneralSecurityException; {:try_start_89 .. :try_end_bf} :catch_c0
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_bf} :catch_c0

    .line 190
    .line 191
    .line 192
    goto :goto_106

    .line 193
    :catch_c0
    :cond_c0
    new-array p2, v0, [B

    .line 194
    .line 195
    fill-array-data p2, :array_19e

    .line 196
    .line 197
    .line 198
    new-array v0, v1, [B

    .line 199
    .line 200
    fill-array-data v0, :array_1a4

    .line 201
    .line 202
    .line 203
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-static {p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    const/16 v0, 0x800

    .line 212
    .line 213
    invoke-virtual {p2, v0}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Ljava/io/FileOutputStream;

    .line 229
    .line 230
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 231
    .line 232
    .line 233
    :try_start_e8
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_113

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    new-instance v0, Ljava/io/FileOutputStream;

    .line 248
    .line 249
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 250
    .line 251
    .line 252
    :try_start_fb
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_109

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 256
    .line 257
    .line 258
    new-instance v3, Ld1/b;

    .line 259
    .line 260
    invoke-direct {v3, p2}, Ld1/b;-><init>(Ljava/security/KeyPair;)V

    .line 261
    .line 262
    .line 263
    :goto_106
    iput-object v3, p0, Ld1/a;->d:Ld1/b;

    .line 264
    .line 265
    return-void

    .line 266
    :catchall_109
    move-exception p1

    .line 267
    :try_start_10a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10e

    .line 268
    .line 269
    .line 270
    goto :goto_112

    .line 271
    :catchall_10e
    move-exception p2

    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    :goto_112
    throw p1

    .line 276
    :catchall_113
    move-exception p1

    .line 277
    :try_start_114
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_118

    .line 278
    .line 279
    .line 280
    goto :goto_11c

    .line 281
    :catchall_118
    move-exception p2

    .line 282
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    :goto_11c
    throw p1

    .line 286
    :cond_11d
    const/16 p1, 0x1d

    .line 287
    .line 288
    new-array p1, p1, [B

    .line 289
    .line 290
    fill-array-data p1, :array_1ac

    .line 291
    .line 292
    .line 293
    new-array p2, v1, [B

    .line 294
    .line 295
    fill-array-data p2, :array_1c0

    .line 296
    .line 297
    .line 298
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    const/4 p1, 0x0

    .line 306
    throw p1

    .line 307
    :array_132
    .array-data 1
        -0x6at
        0x46t
        -0x1t
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :array_138
    .array-data 1
        -0x9t
        0x22t
        -0x63t
        -0x55t
        0x31t
        0x4at
        0x0t
        0x14t
    .end array-data

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_140
    .array-data 1
        0x2ft
        0x58t
        -0x8t
        0x39t
        -0x5ct
        -0x2at
        0x26t
        -0x39t
        0x4bt
        0x15t
        -0x68t
        0x5ct
        0x3ft
        -0x29t
        0x1bt
        -0x3at
        0x7et
        0x14t
        -0x5ct
        -0x54t
        0x55t
        -0x7at
        0x75t
        -0x57t
        0x2ft
        0x72t
        -0x8t
        0x38t
        0x54t
        -0x49t
        0x74t
        -0x6bt
        0x2et
        0x49t
        0x8t
        0x5dt
        0x1t
        -0x2at
        0x25t
        -0x39t
        0x4ft
        0x15t
        -0x6bt
        0x5ct
        0x3ct
        -0x29t
        0x1et
        -0x39t
        0x47t
        0x14t
        -0x5ft
        0x5ct
        0x31t
        0x27t
        -0x1ct
        0x53t
        -0x43t
        -0x18t
        -0x8t
        0x36t
        0x54t
        -0x44t
        0x74t
        -0x67t
        0x2et
        0x42t
        -0x8t
        0x3ct
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
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
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    :array_166
    .array-data 1
        -0x1t
        -0x3bt
        0x28t
        -0x74t
        -0x7ct
        0x7t
        -0x5bt
        0x17t
    .end array-data

    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_16e
    .array-data 1
        0x11t
        0x42t
        0x4t
        -0x80t
        -0x1ft
        0x69t
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    nop

    .line 375
    :array_176
    .array-data 1
        0x70t
        0x26t
        0x66t
        -0x15t
        -0x7ct
        0x10t
        0x2bt
        0x29t
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :array_17e
    .array-data 1
        -0x20t
        0x2et
        -0x3at
        -0x1t
        -0x30t
        -0x3t
        -0x37t
        0x0t
        -0xct
        0x28t
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    nop

    .line 393
    :array_188
    .array-data 1
        -0x7ft
        0x4at
        -0x5ct
        -0x6ct
        -0x4bt
        -0x7ct
        -0x19t
        0x70t
    .end array-data

    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    :array_190
    .array-data 1
        -0x62t
        0x76t
        0x37t
    .end array-data

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_196
    .array-data 1
        -0x34t
        0x25t
        0x76t
        0x35t
        0x3ft
        0x63t
        0x48t
        0x24t
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_19e
    .array-data 1
        0x76t
        0x1ft
        0x57t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_1a4
    .array-data 1
        0x24t
        0x4ct
        0x16t
        0x64t
        0x49t
        0x17t
        -0x22t
        -0xbt
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_1ac
    .array-data 1
        -0xft
        0x5t
        -0x75t
        0x55t
        0x16t
        0x26t
        0x43t
        -0x51t
        -0xft
        0x2ft
        -0x76t
        0x65t
        0x16t
        0x26t
        -0x4dt
        -0x35t
        -0x6ft
        0x47t
        -0x11t
        0x36t
        0x46t
        0x43t
        0x26t
        -0x36t
        -0x60t
        -0x49t
        0x1at
        -0x5dt
        -0x7ct
    .end array-data

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
    :array_1c0
    .array-data 1
        0x21t
        -0x69t
        0x5bt
        -0x19t
        -0x3at
        -0x6dt
        -0x6dt
        0x1bt
    .end array-data
.end method

.method public static S()V
    .registers 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    :try_start_2
    invoke-static {}, Ld1/a;->c()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_73

    .line 12
    .line 13
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Le0/m;->f:[B

    .line 21
    .line 22
    sget-object v3, Le0/p3;->a:[Ljava/lang/String;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Le0/m;->g:[B

    .line 30
    .line 31
    new-instance v4, Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x1

    .line 45
    new-array v4, v3, [B

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/16 v6, -0x9

    .line 49
    .line 50
    aput-byte v6, v4, v5

    .line 51
    .line 52
    new-array v6, v0, [B

    .line 53
    .line 54
    fill-array-data v6, :array_92

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v2, v1, v4}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-wide v6, 0x7fffffffffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-interface {v4, v6}, Lcom/example/navistart/cores/InterC;->l(Ljava/lang/Long;)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    cmp-long v1, v6, v1

    .line 106
    .line 107
    if-gez v1, :cond_6d

    .line 108
    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v3, v5

    .line 111
    :goto_6e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v1
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_73

    .line 115
    goto :goto_75

    .line 116
    :catch_73
    :cond_73
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    :goto_75
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_7c

    .line 123
    .line 124
    return-void

    .line 125
    :cond_7c
    new-instance v1, Ljava/lang/SecurityException;

    .line 126
    .line 127
    const/16 v2, 0x55

    .line 128
    .line 129
    new-array v2, v2, [B

    .line 130
    .line 131
    fill-array-data v2, :array_9a

    .line 132
    .line 133
    .line 134
    new-array v0, v0, [B

    .line 135
    .line 136
    fill-array-data v0, :array_ca

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :array_92
    .array-data 1
        -0x39t
        -0xet
        0xbt
        0x2ft
        0x5at
        -0x56t
        0x5ct
        -0x4bt
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_9a
    .array-data 1
        -0x26t
        -0x5t
        0x66t
        0x29t
        0x4dt
        -0x61t
        0x5ft
        0x58t
        -0x26t
        -0x23t
        0x66t
        0x26t
        0x4ct
        -0x5ft
        0x5et
        0x62t
        0x2at
        -0x50t
        0xbt
        0x41t
        0x29t
        0x39t
        0x5ft
        0x5dt
        -0x26t
        -0x26t
        0x67t
        0x13t
        0x4ct
        -0x5ft
        0x5ft
        0x5ft
        -0x26t
        -0x23t
        0x66t
        0x21t
        -0x44t
        -0x37t
        0x37t
        0x3dt
        -0x4ft
        -0x50t
        0xet
        -0x4ft
        0x4dt
        -0x68t
        0x5et
        0x6dt
        -0x26t
        -0x22t
        0x66t
        0x2bt
        -0x44t
        -0x37t
        0x3at
        0x3ct
        -0x65t
        0x40t
        0x66t
        0x25t
        0x4ct
        -0x54t
        0x5ft
        0x54t
        -0x25t
        -0x1ft
        0x67t
        0x13t
        0x4ct
        -0x55t
        0x5ft
        0x55t
        -0x25t
        -0x11t
        -0x6at
        0x41t
        0x24t
        -0x38t
        0xet
        0x3ct
        -0x78t
        -0x4ft
        0x27t
        0x41t
        0x26t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
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
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    nop

    .line 203
    :array_ca
    .array-data 1
        0xat
        0x60t
        -0x4at
        -0x6ft
        -0x64t
        0x19t
        -0x71t
        -0x13t
    .end array-data
.end method

.method public static c()Ljava/lang/Boolean;
    .registers 5

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
    fill-array-data v1, :array_3a

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
    new-instance v4, Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4, v3}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :array_3a
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
.end method


# virtual methods
.method public final V(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_a0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_a8

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "\u0000"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget v1, Ld1/c;->i:I

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-static {v0, v1, v3, v4, p1}, Ld1/c;->d(Ljava/io/OutputStream;III[B)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .line 61
    .line 62
    move v0, v4

    .line 63
    :cond_3e
    :goto_3e
    iget-object v1, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ld1/c;->b(Ljava/io/InputStream;)Ld1/c;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v5, v1, Ld1/c;->b:I

    .line 74
    .line 75
    iget v6, v1, Ld1/c;->c:I

    .line 76
    .line 77
    iget v7, v1, Ld1/c;->a:I

    .line 78
    .line 79
    sget v8, Ld1/c;->h:I

    .line 80
    .line 81
    if-ne v7, v8, :cond_57

    .line 82
    .line 83
    if-ne v6, v3, :cond_57

    .line 84
    .line 85
    move v4, v3

    .line 86
    :goto_55
    move v0, v5

    .line 87
    goto :goto_3e

    .line 88
    :cond_57
    sget v9, Ld1/c;->j:I

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    if-ne v7, v9, :cond_6d

    .line 92
    .line 93
    if-ne v6, v3, :cond_6d

    .line 94
    .line 95
    iget-object v0, v1, Ld1/c;->d:[B

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0, v8, v3, v5, v10}, Ld1/c;->d(Ljava/io/OutputStream;III[B)V

    .line 107
    .line 108
    .line 109
    goto :goto_55

    .line 110
    :cond_6d
    sget v1, Ld1/c;->f:I

    .line 111
    .line 112
    if-ne v7, v1, :cond_3e

    .line 113
    .line 114
    if-ne v6, v3, :cond_3e

    .line 115
    .line 116
    if-eqz v4, :cond_8c

    .line 117
    .line 118
    iget-object v2, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-nez v0, :cond_7e

    .line 125
    .line 126
    move v0, v5

    .line 127
    :cond_7e
    invoke-static {v2, v1, v3, v0, v10}, Ld1/c;->d(Ljava/io/OutputStream;III[B)V

    .line 128
    .line 129
    .line 130
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :cond_8c
    const/16 p1, 0x30

    .line 142
    .line 143
    new-array p1, p1, [B

    .line 144
    .line 145
    fill-array-data p1, :array_b0

    .line 146
    .line 147
    .line 148
    new-array v0, v2, [B

    .line 149
    .line 150
    fill-array-data v0, :array_cc

    .line 151
    .line 152
    .line 153
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v10

    .line 161
    :array_a0
    .array-data 1
        -0x58t
        0x3dt
        -0x3et
        0x7ft
        0xct
        -0x55t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    nop

    .line 169
    :array_a8
    .array-data 1
        -0x25t
        0x55t
        -0x59t
        0x13t
        0x60t
        -0x6ft
        -0x62t
        -0x4et
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_b0
    .array-data 1
        -0x6et
        -0x1dt
        0x24t
        0x16t
        -0xat
        -0x69t
        -0x11t
        0x75t
        0x3t
        0x1dt
        -0x4at
        -0x73t
        -0xat
        -0x69t
        -0x12t
        0x4at
        0x3t
        0x1ft
        -0x4at
        -0x73t
        0x6t
        -0x7t
        -0x77t
        0x27t
        0x63t
        0x77t
        -0x27t
        -0x19t
        -0x5bt
        -0x8t
        -0x41t
        0x27t
        0x69t
        -0x79t
        -0x4at
        -0x74t
        -0xat
        -0x69t
        -0x12t
        0x4bt
        0x3t
        0x17t
        -0x4at
        -0x75t
        -0xat
        -0x63t
        -0x11t
        0x7ct
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
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
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
    :array_cc
    .array-data 1
        -0x2dt
        -0x59t
        0x66t
        0x36t
        0x26t
        0x29t
        0x3et
        -0x9t
    .end array-data
.end method

.method public final b()V
    .registers 16

    .line 1
    iget-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Ld1/c;->g:I

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    fill-array-data v2, :array_13c

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    new-array v4, v3, [B

    .line 18
    .line 19
    fill-array-data v4, :array_144

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/high16 v4, 0x1000000

    .line 33
    .line 34
    const/16 v5, 0x1000

    .line 35
    .line 36
    invoke-static {v0, v1, v4, v5, v2}, Ld1/c;->d(Ljava/io/OutputStream;III[B)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    move v1, v0

    .line 41
    :goto_28
    iget-object v2, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Ld1/c;->b(Ljava/io/InputStream;)Ld1/c;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget v4, v2, Ld1/c;->a:I

    .line 52
    .line 53
    sget v5, Ld1/c;->g:I

    .line 54
    .line 55
    if-ne v4, v5, :cond_39

    .line 56
    .line 57
    return-void

    .line 58
    :cond_39
    sget v5, Ld1/c;->e:I

    .line 59
    .line 60
    if-ne v4, v5, :cond_128

    .line 61
    .line 62
    iget v4, v2, Ld1/c;->b:I

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    if-ne v4, v6, :cond_128

    .line 66
    .line 67
    iget-object v4, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 68
    .line 69
    iget-object v7, p0, Ld1/a;->d:Ld1/b;

    .line 70
    .line 71
    const/4 v8, 0x2

    .line 72
    if-nez v1, :cond_7d

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, v2, Ld1/c;->d:[B

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const/16 v4, 0x11

    .line 84
    .line 85
    new-array v4, v4, [B

    .line 86
    .line 87
    fill-array-data v4, :array_14c

    .line 88
    .line 89
    .line 90
    new-array v9, v3, [B

    .line 91
    .line 92
    fill-array-data v9, :array_15a

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v7, v7, Ld1/b;->a:Ljava/security/KeyPair;

    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v4, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    .line 111
    .line 112
    sget-object v7, Ld1/b;->b:[B

    .line 113
    .line 114
    invoke-virtual {v4, v7}, Ljavax/crypto/Cipher;->update([B)[B

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v1, v5, v8, v0, v2}, Ld1/c;->d(Ljava/io/OutputStream;III[B)V

    .line 122
    .line 123
    .line 124
    move v1, v6

    .line 125
    goto :goto_28

    .line 126
    :cond_7d
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v4, v7, Ld1/b;->a:Ljava/security/KeyPair;

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    .line 137
    .line 138
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 139
    .line 140
    const/16 v9, 0x20

    .line 141
    .line 142
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-interface {v4}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    const/16 v11, 0x800

    .line 151
    .line 152
    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    const-wide/16 v11, 0x2

    .line 157
    .line 158
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v7, v11, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    const/16 v12, 0x20c

    .line 183
    .line 184
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 189
    .line 190
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 191
    .line 192
    .line 193
    move-result-object v12

    .line 194
    const/16 v13, 0x40

    .line 195
    .line 196
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    .line 202
    move v11, v0

    .line 203
    :goto_ca
    if-ge v11, v13, :cond_df

    .line 204
    .line 205
    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    aget-object v14, v10, v0

    .line 210
    .line 211
    aget-object v10, v10, v6

    .line 212
    .line 213
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 218
    .line 219
    .line 220
    add-int/lit8 v11, v11, 0x1

    .line 221
    .line 222
    move-object v10, v14

    .line 223
    goto :goto_ca

    .line 224
    :cond_df
    move v10, v0

    .line 225
    :goto_e0
    if-ge v10, v13, :cond_f5

    .line 226
    .line 227
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    aget-object v11, v7, v0

    .line 232
    .line 233
    aget-object v7, v7, v6

    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    invoke-virtual {v12, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 240
    .line 241
    .line 242
    add-int/lit8 v10, v10, 0x1

    .line 243
    .line 244
    move-object v7, v11

    .line 245
    goto :goto_e0

    .line 246
    :cond_f5
    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v4, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    const/16 v6, 0x13

    .line 270
    .line 271
    new-array v6, v6, [B

    .line 272
    .line 273
    fill-array-data v6, :array_162

    .line 274
    .line 275
    .line 276
    new-array v7, v3, [B

    .line 277
    .line 278
    fill-array-data v7, :array_170

    .line 279
    .line 280
    .line 281
    invoke-static {v6, v7, v4}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 286
    .line 287
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    const/4 v6, 0x3

    .line 292
    invoke-static {v2, v5, v6, v0, v4}, Ld1/c;->d(Ljava/io/OutputStream;III[B)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_28

    .line 296
    .line 297
    :cond_128
    const/16 v0, 0x43

    .line 298
    .line 299
    new-array v0, v0, [B

    .line 300
    .line 301
    fill-array-data v0, :array_178

    .line 302
    .line 303
    .line 304
    new-array v1, v3, [B

    .line 305
    .line 306
    fill-array-data v1, :array_19e

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :array_13c
    .array-data 1
        0x45t
        0x8t
        0x1at
        -0x1t
        0x15t
        -0x7bt
        -0x63t
    .end array-data

    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    :array_144
    .array-data 1
        0x2dt
        0x67t
        0x69t
        -0x75t
        0x2ft
        -0x41t
        -0x63t
        -0x65t
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    :array_14c
    .array-data 1
        0x69t
        0x38t
        -0x52t
        -0x5t
        -0x3et
        0x3et
        0x18t
        -0x2dt
        0x75t
        0x4t
        -0x41t
        -0x4bt
        -0x1dt
        0x19t
        0x33t
        -0x6et
        0x5ct
    .end array-data

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
    nop

    .line 347
    :array_15a
    .array-data 1
        0x3bt
        0x6bt
        -0x11t
        -0x2ct
        -0x79t
        0x7dt
        0x5at
        -0x4t
    .end array-data

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_162
    .array-data 1
        -0x10t
        -0x80t
        0x15t
        0x7at
        0x57t
        0x7dt
        -0x2at
        -0x7at
        -0x44t
        -0x67t
        0x36t
        0x7at
        0x4bt
        0x6dt
        -0x35t
        -0x7at
        -0x47t
        -0x72t
        0x76t
    .end array-data

    .line 356
    .line 357
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
    .line 369
    :array_170
    .array-data 1
        -0x30t
        -0x16t
        0x76t
        0x1bt
        0x25t
        0x9t
        -0x47t
        -0x17t
    .end array-data

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :array_178
    .array-data 1
        0x77t
        0x1ft
        -0x39t
        0x18t
        0x34t
        0x30t
        -0x2dt
        -0x2et
        0x77t
        0x3at
        -0x39t
        0x19t
        0x34t
        0x3et
        -0x2dt
        -0x27t
        0x77t
        0x3ft
        -0x3at
        0x26t
        0x34t
        0x37t
        0x23t
        -0x4ct
        0x19t
        0x53t
        -0x6bt
        0x7dt
        0x56t
        0x5et
        -0x4at
        -0x4bt
        0x25t
        -0x5et
        0x56t
        -0x17t
        -0x5at
        -0x52t
        -0x2dt
        -0x25t
        0x76t
        0x2t
        -0x39t
        0x15t
        -0x3ct
        0x5et
        -0x44t
        -0x4ct
        0x19t
        0x52t
        -0x5dt
        0x7dt
        0x5et
        0x5et
        -0x48t
        -0x4bt
        0x29t
        0x53t
        -0x70t
        0x7dt
        0x51t
        0x5et
        -0x42t
        -0x4ct
        0x1ft
        0x52t
        -0x51t
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
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    :array_19e
    .array-data 1
        -0x59t
        -0x7et
        0x17t
        -0x53t
        -0x1ct
        -0x72t
        0x3t
        0x64t
    .end array-data
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 6
    .line 7
    .line 8
    :catch_7
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public final y(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_53

    .line 10
    .line 11
    invoke-static {}, Ld1/a;->S()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/net/Socket;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 20
    .line 21
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 22
    .line 23
    iget-object v2, p0, Ld1/a;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget v3, p0, Ld1/a;->c:I

    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x1388

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ld1/a;->e:Ljava/net/Socket;

    .line 36
    .line 37
    const/16 v1, 0x7530

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 40
    .line 41
    .line 42
    :try_start_29
    invoke-virtual {p0}, Ld1/a;->b()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ld1/a;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_29 .. :try_end_30} :catch_36
    .catchall {:try_start_29 .. :try_end_30} :catchall_34

    .line 49
    invoke-virtual {p0}, Ld1/a;->close()V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    goto :goto_4f

    .line 55
    :catch_36
    move-exception p1

    .line 56
    :try_start_37
    new-instance v0, Ljava/io/IOException;

    .line 57
    .line 58
    const/16 v1, 0x7b

    .line 59
    .line 60
    new-array v1, v1, [B

    .line 61
    .line 62
    fill-array-data v1, :array_6a

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x8

    .line 66
    .line 67
    new-array v2, v2, [B

    .line 68
    .line 69
    fill-array-data v2, :array_ac

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v0
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_34

    .line 80
    :goto_4f
    invoke-virtual {p0}, Ld1/a;->close()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_53
    const/16 p1, 0x1d

    .line 85
    .line 86
    new-array p1, p1, [B

    .line 87
    .line 88
    fill-array-data p1, :array_b4

    .line 89
    .line 90
    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    new-array v0, v0, [B

    .line 94
    .line 95
    fill-array-data v0, :array_c8

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    return-object p1

    .line 107
    :array_6a
    .array-data 1
        -0x23t
        0x57t
        -0x62t
        -0x55t
        -0x56t
        0x41t
        -0xet
        -0xet
        -0x23t
        0x75t
        -0x61t
        -0x6ft
        -0x55t
        0x7dt
        0x2t
        -0x69t
        -0x41t
        0x1et
        -0x31t
        -0x6t
        -0x32t
        0x13t
        -0x62t
        -0x6at
        -0x7et
        -0x11t
        -0x61t
        -0x6ct
        -0x55t
        0x75t
        -0xet
        -0x1t
        -0x23t
        0x7bt
        -0x61t
        -0x66t
        -0x55t
        0x7et
        -0xet
        -0x1t
        -0x24t
        0x40t
        0x6ft
        0x6bt
        0x3ft
        -0x7ft
        0xct
        0x67t
        -0x23t
        0x50t
        -0x62t
        -0x56t
        -0x55t
        0x7dt
        -0xet
        -0xbt
        -0x23t
        0x7at
        -0x62t
        -0x56t
        -0x56t
        0x4ft
        -0xdt
        -0x3bt
        -0x23t
        0x7at
        0x6ft
        -0x6t
        -0x35t
        0x13t
        -0x6at
        -0x6at
        -0x73t
        0x1ft
        -0x6t
        -0x5t
        -0x6t
        -0x1dt
        -0xet
        -0x1t
        0x2dt
        0x1ft
        -0x10t
        -0x6t
        -0x3bt
        0x13t
        -0x6at
        -0x6at
        -0x71t
        0x1ft
        -0x3t
        -0x6t
        -0x32t
        0x12t
        -0x5et
        -0x69t
        -0x45t
        0x1ft
        -0x5t
        -0x6t
        -0x32t
        0x13t
        -0x61t
        -0x69t
        -0x4bt
        0x1ft
        -0x6t
        0xat
        0x29t
        -0x70t
        0x63t
        0x6at
        -0x23t
        0x75t
        -0x61t
        -0x6ft
        -0x56t
        0x4dt
        -0xdt
        -0x40t
        -0x23t
        0x7ft
        0x61t
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
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
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
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
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_ac
    .array-data 1
        0xdt
        -0x31t
        0x4ft
        0x2at
        0x7bt
        -0x3dt
        0x22t
        0x47t
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_b4
    .array-data 1
        -0x3t
        -0x7bt
        0x31t
        0xct
        -0x4dt
        -0x64t
        0x79t
        -0x4bt
        -0x3t
        -0x51t
        0x30t
        0x3ct
        -0x4dt
        -0x64t
        -0x77t
        -0x2ft
        -0x69t
        -0x39t
        0x5ft
        0x6et
        -0x21t
        -0x7t
        0x19t
        -0x2ft
        -0x70t
        -0x39t
        0x55t
        0x6ft
        -0x20t
    .end array-data

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
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    nop

    .line 201
    :array_c8
    .array-data 1
        0x2dt
        0x17t
        -0x1ft
        -0x42t
        0x63t
        0x29t
        -0x57t
        0x1t
    .end array-data
.end method
