.class public abstract Lk0/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x2a

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_28

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_42

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lk0/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x1f

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_4a

    .line 26
    .line 27
    .line 28
    new-array v1, v1, [B

    .line 29
    .line 30
    fill-array-data v1, :array_5e

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lk0/a;->b:Ljava/lang/String;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_28
    .array-data 1
        0x2t
        0x61t
        0x49t
        0x53t
        -0x6dt
        0x31t
        0x29t
        -0x74t
        0x15t
        0x6bt
        0x4ft
        0x53t
        -0x65t
        0x22t
        0x31t
        -0x66t
        0x7t
        0x62t
        0x5dt
        0x53t
        -0x77t
        0x34t
        0x20t
        -0x65t
        0x4t
        0x6bt
        0x4at
        0x1at
        -0x6dt
        0x39t
        0x20t
        -0x25t
        0x25t
        0x4ft
        0x70t
        0x3ct
        -0x51t
        0x7t
        0x9t
        -0x46t
        0x20t
        0x4at
    .end array-data

    .line 42
    .line 43
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
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    nop

    .line 67
    :array_42
    .array-data 1
        0x61t
        0xet
        0x24t
        0x7dt
        -0x6t
        0x57t
        0x45t
        -0xbt
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_4a
    .array-data 1
        -0x10t
        0xdt
        0x1dt
        0x11t
        0x73t
        0x28t
        -0x73t
        -0x60t
        -0x19t
        0x7t
        0x1bt
        0x11t
        0x7bt
        0x3bt
        -0x6bt
        -0x4at
        -0xbt
        0xet
        0x9t
        0x11t
        0x69t
        0x2dt
        -0x7ct
        -0x49t
        -0xat
        0x7t
        0x1et
        0x58t
        0x73t
        0x20t
        -0x7ct
    .end array-data

    .line 76
    :array_5e
    .array-data 1
        -0x6dt
        0x62t
        0x70t
        0x3ft
        0x1at
        0x4et
        -0x1ft
        -0x27t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 13

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
    fill-array-data v1, :array_112

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
    const/16 v1, 0x8

    .line 46
    .line 47
    if-eqz v0, :cond_79

    .line 48
    .line 49
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-wide v3, 0x7fffffffffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4, v0}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    new-instance v0, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v7, Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Le0/m;->g:[B

    .line 82
    .line 83
    invoke-static {v2, v6, v7}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v6, 0x1

    .line 88
    new-array v7, v6, [B

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    const/16 v9, 0x52

    .line 92
    .line 93
    aput-byte v9, v7, v8

    .line 94
    .line 95
    new-array v9, v1, [B

    .line 96
    .line 97
    fill-array-data v9, :array_11c

    .line 98
    .line 99
    .line 100
    invoke-static {v7, v9, v5, v2, v8}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    cmp-long v0, v3, v9

    .line 112
    .line 113
    if-gez v0, :cond_73

    .line 114
    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move v6, v8

    .line 117
    :goto_74
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_7b

    .line 122
    :cond_79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    :goto_7b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_111

    .line 129
    .line 130
    new-instance v0, Landroid/content/Intent;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .line 134
    .line 135
    sget-object v2, Lk0/a;->b:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    sget-object v2, Lk0/a;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    new-instance v2, Lt5/e;

    .line 146
    .line 147
    invoke-direct {v2}, Lt5/e;-><init>()V

    .line 148
    .line 149
    .line 150
    const/4 v3, 0x2

    .line 151
    new-array v3, v3, [B

    .line 152
    .line 153
    fill-array-data v3, :array_124

    .line 154
    .line 155
    .line 156
    new-array v4, v1, [B

    .line 157
    .line 158
    fill-array-data v4, :array_12a

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const/16 v4, 0xb

    .line 166
    .line 167
    new-array v5, v4, [B

    .line 168
    .line 169
    fill-array-data v5, :array_132

    .line 170
    .line 171
    .line 172
    new-array v6, v1, [B

    .line 173
    .line 174
    fill-array-data v6, :array_13c

    .line 175
    .line 176
    .line 177
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v2, v3, v5}, Lt5/e;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 v3, 0x4

    .line 185
    new-array v3, v3, [B

    .line 186
    .line 187
    fill-array-data v3, :array_144

    .line 188
    .line 189
    .line 190
    new-array v5, v1, [B

    .line 191
    .line 192
    fill-array-data v5, :array_14a

    .line 193
    .line 194
    .line 195
    invoke-static {v3, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    new-array v4, v4, [B

    .line 200
    .line 201
    fill-array-data v4, :array_152

    .line 202
    .line 203
    .line 204
    new-array v5, v1, [B

    .line 205
    .line 206
    fill-array-data v5, :array_15c

    .line 207
    .line 208
    .line 209
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v2, v3, v4}, Lt5/e;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const/16 v3, 0xa

    .line 217
    .line 218
    new-array v3, v3, [B

    .line 219
    .line 220
    fill-array-data v3, :array_164

    .line 221
    .line 222
    .line 223
    new-array v4, v1, [B

    .line 224
    .line 225
    fill-array-data v4, :array_16e

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {v2, v3, p1}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Lt5/b;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const/4 v2, 0x5

    .line 244
    new-array v2, v2, [B

    .line 245
    .line 246
    fill-array-data v2, :array_176

    .line 247
    .line 248
    .line 249
    new-array v1, v1, [B

    .line 250
    .line 251
    fill-array-data v1, :array_17e

    .line 252
    .line 253
    .line 254
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    .line 260
    .line 261
    :try_start_104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 262
    .line 263
    const/16 v1, 0x1a

    .line 264
    .line 265
    if-lt p1, v1, :cond_10e

    .line 266
    .line 267
    invoke-static {p0, v0}, Lc5/h;->r(Landroid/content/Context;Landroid/content/Intent;)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :cond_10e
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_111
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_111} :catch_111

    .line 272
    .line 273
    .line 274
    :catch_111
    :cond_111
    return-void

    .line 275
    :array_112
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

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    nop

    .line 285
    :array_11c
    .array-data 1
        0x62t
        -0x26t
        -0x2at
        -0x15t
        -0x3t
        -0x7bt
        0x33t
        0x73t
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
        0x5at
        0x40t
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
        0x3et
        0x34t
        0x6bt
        -0x1et
        -0x55t
        0x5t
        -0x1dt
        -0x2dt
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
        0x23t
        0x1t
        0x43t
        -0x13t
        -0x5et
        0x0t
        0x45t
        0x5et
        0x23t
        0x10t
        0x52t
    .end array-data

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
    :array_13c
    .array-data 1
        0x42t
        0x62t
        0x37t
        -0x7ct
        -0x2ct
        0x65t
        0x1at
        0x3dt
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
        0x30t
        0x69t
        -0x6bt
        -0x23t
    .end array-data

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :array_14a
    .array-data 1
        0x44t
        0x10t
        -0x1bt
        -0x48t
        0x7at
        0x50t
        -0x53t
        -0x36t
    .end array-data

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :array_152
    .array-data 1
        0x77t
        -0x4et
        -0x1at
        -0x4at
        0x2at
        0x13t
        -0x6ct
        0x7ft
        0x75t
        -0x46t
        -0xft
    .end array-data

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
    :array_15c
    .array-data 1
        0x1t
        -0x25t
        -0x7dt
        -0x3ft
        0x75t
        0x72t
        -0x1et
        0x1et
    .end array-data

    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_164
    .array-data 1
        0x60t
        0x5at
        0x26t
        0x3t
        0x1dt
        -0x71t
        0x69t
        -0x66t
        0x72t
        0x40t
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
    nop

    .line 367
    :array_16e
    .array-data 1
        0x13t
        0x32t
        0x49t
        0x74t
        0x5ct
        -0x7t
        0x8t
        -0x12t
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_176
    .array-data 1
        0x9t
        -0x34t
        -0x5ft
        -0x3et
        -0x46t
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    nop

    .line 383
    :array_17e
    .array-data 1
        0x7ft
        -0x53t
        -0x33t
        -0x49t
        -0x21t
        0x6ct
        0x77t
        -0x7bt
    .end array-data
.end method
