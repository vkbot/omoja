.class public final Lq0/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/location/LocationManager;

.field public final b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_3a

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    fill-array-data v2, :array_46

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lq0/e;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    fill-array-data v0, :array_4e

    .line 25
    .line 26
    .line 27
    new-array v2, v1, [B

    .line 28
    .line 29
    fill-array-data v2, :array_54

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v2, 0x7

    .line 37
    new-array v2, v2, [B

    .line 38
    .line 39
    fill-array-data v2, :array_5c

    .line 40
    .line 41
    .line 42
    new-array v1, v1, [B

    .line 43
    .line 44
    fill-array-data v1, :array_64

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lq0/e;->d:[Ljava/lang/String;

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_3a
    .array-data 1
        -0x23t
        -0x7at
        -0x39t
        0x4ct
        -0x46t
        0x4t
        0x2bt
        0x17t
        -0x1et
        -0x7at
        -0x2et
        0x4et
        -0x67t
        0x11t
        0x2at
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_46
    .array-data 1
        -0x70t
        -0x17t
        -0x5ct
        0x27t
        -0x3t
        0x74t
        0x58t
        0x47t
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_4e
    .array-data 1
        -0x2ct
        -0x4ft
        -0x6t
    .end array-data

    :array_54
    .array-data 1
        -0x4dt
        -0x3ft
        -0x77t
        -0x5t
        -0x66t
        -0x12t
        0x63t
        -0x30t
    .end array-data

    :array_5c
    .array-data 1
        0x5dt
        -0x6ft
        -0xct
        -0x55t
        -0x49t
        -0x44t
        -0x76t
    .end array-data

    :array_64
    .array-data 1
        0x33t
        -0xct
        -0x80t
        -0x24t
        -0x28t
        -0x32t
        -0x1ft
        0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/example/navistart/MockGPS/MockGpsService;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq0/e;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    fill-array-data v1, :array_24

    .line 16
    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    fill-array-data v0, :array_2c

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/location/LocationManager;

    .line 32
    .line 33
    iput-object p1, p0, Lq0/e;->a:Landroid/location/LocationManager;

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_24
    .array-data 1
        -0x10t
        0x37t
        -0x23t
        0x9t
        -0x4ft
        0x73t
        0x46t
        -0x8t
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    :array_2c
    .array-data 1
        -0x64t
        0x58t
        -0x42t
        0x68t
        -0x3bt
        0x1at
        0x29t
        -0x6at
    .end array-data
.end method

.method public static a(Lq0/q;Ljava/lang/String;)Landroid/location/Location;
    .registers 12

    .line 1
    new-instance v0, Landroid/location/Location;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lq0/q;->a:D

    .line 7
    .line 8
    iget-object p1, p0, Lq0/q;->l:Ljava/lang/Float;

    .line 9
    .line 10
    iget-object v3, p0, Lq0/q;->k:Ljava/lang/Float;

    .line 11
    .line 12
    iget v4, p0, Lq0/q;->i:I

    .line 13
    .line 14
    iget v5, p0, Lq0/q;->j:I

    .line 15
    .line 16
    iget-object v6, p0, Lq0/q;->e:Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lq0/q;->b:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lq0/q;->c:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lq0/q;->d:Ljava/lang/Double;

    .line 39
    .line 40
    if-eqz v1, :cond_30

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 47
    .line 48
    .line 49
    :cond_30
    if-eqz v6, :cond_39

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 56
    .line 57
    .line 58
    :cond_39
    iget-object v1, p0, Lq0/q;->f:Ljava/lang/Float;

    .line 59
    .line 60
    if-eqz v1, :cond_44

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 67
    .line 68
    .line 69
    :cond_44
    iget-object v1, p0, Lq0/q;->g:Ljava/lang/Float;

    .line 70
    .line 71
    if-eqz v1, :cond_4f

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 78
    .line 79
    .line 80
    :cond_4f
    new-instance v1, Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v2, 0xf

    .line 86
    .line 87
    new-array v2, v2, [B

    .line 88
    .line 89
    fill-array-data v2, :array_122

    .line 90
    .line 91
    .line 92
    const/16 v7, 0x8

    .line 93
    .line 94
    new-array v8, v7, [B

    .line 95
    .line 96
    fill-array-data v8, :array_12e

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v8, p0, Lq0/q;->m:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget p0, p0, Lq0/q;->h:I

    .line 109
    .line 110
    const/4 v2, 0x6

    .line 111
    const/16 v8, 0xa

    .line 112
    .line 113
    if-lez p0, :cond_73

    .line 114
    .line 115
    goto :goto_98

    .line 116
    :cond_73
    if-lez v5, :cond_77

    .line 117
    .line 118
    move p0, v5

    .line 119
    goto :goto_98

    .line 120
    :cond_77
    if-lez v4, :cond_7b

    .line 121
    .line 122
    move p0, v4

    .line 123
    goto :goto_98

    .line 124
    :cond_7b
    if-eqz v6, :cond_89

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    const/high16 v9, 0x41200000    # 10.0f

    .line 131
    .line 132
    cmpg-float p0, p0, v9

    .line 133
    .line 134
    if-gtz p0, :cond_89

    .line 135
    .line 136
    move p0, v8

    .line 137
    goto :goto_98

    .line 138
    :cond_89
    if-eqz v6, :cond_97

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    const/high16 v6, 0x41f00000    # 30.0f

    .line 145
    .line 146
    cmpg-float p0, p0, v6

    .line 147
    .line 148
    if-gtz p0, :cond_97

    .line 149
    .line 150
    move p0, v2

    .line 151
    goto :goto_98

    .line 152
    :cond_97
    const/4 p0, 0x4

    .line 153
    :goto_98
    new-array v6, v8, [B

    .line 154
    .line 155
    fill-array-data v6, :array_136

    .line 156
    .line 157
    .line 158
    new-array v9, v7, [B

    .line 159
    .line 160
    fill-array-data v9, :array_140

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v1, v6, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    const/16 v6, 0x11

    .line 171
    .line 172
    new-array v6, v6, [B

    .line 173
    .line 174
    fill-array-data v6, :array_148

    .line 175
    .line 176
    .line 177
    new-array v9, v7, [B

    .line 178
    .line 179
    fill-array-data v9, :array_156

    .line 180
    .line 181
    .line 182
    invoke-static {v6, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    if-lez v4, :cond_bc

    .line 187
    .line 188
    goto :goto_bd

    .line 189
    :cond_bc
    move v4, p0

    .line 190
    :goto_bd
    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    .line 193
    const/16 v4, 0x13

    .line 194
    .line 195
    new-array v4, v4, [B

    .line 196
    .line 197
    fill-array-data v4, :array_15e

    .line 198
    .line 199
    .line 200
    new-array v6, v7, [B

    .line 201
    .line 202
    fill-array-data v6, :array_16c

    .line 203
    .line 204
    .line 205
    invoke-static {v4, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-lez v5, :cond_d3

    .line 210
    .line 211
    goto :goto_d4

    .line 212
    :cond_d3
    move v5, p0

    .line 213
    :goto_d4
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    const/4 p0, 0x7

    .line 217
    new-array p0, p0, [B

    .line 218
    .line 219
    fill-array-data p0, :array_174

    .line 220
    .line 221
    .line 222
    new-array v4, v7, [B

    .line 223
    .line 224
    fill-array-data v4, :array_17c

    .line 225
    .line 226
    .line 227
    invoke-static {p0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-static {v1, p0, v3}, Lq0/e;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V

    .line 232
    .line 233
    .line 234
    const/16 p0, 0xb

    .line 235
    .line 236
    new-array p0, p0, [B

    .line 237
    .line 238
    fill-array-data p0, :array_184

    .line 239
    .line 240
    .line 241
    new-array v4, v7, [B

    .line 242
    .line 243
    fill-array-data v4, :array_18e

    .line 244
    .line 245
    .line 246
    invoke-static {p0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {v1, p0, v3}, Lq0/e;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V

    .line 251
    .line 252
    .line 253
    new-array p0, v2, [B

    .line 254
    .line 255
    fill-array-data p0, :array_196

    .line 256
    .line 257
    .line 258
    new-array v2, v7, [B

    .line 259
    .line 260
    fill-array-data v2, :array_19e

    .line 261
    .line 262
    .line 263
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {v1, p0, p1}, Lq0/e;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V

    .line 268
    .line 269
    .line 270
    new-array p0, v8, [B

    .line 271
    .line 272
    fill-array-data p0, :array_1a6

    .line 273
    .line 274
    .line 275
    new-array v2, v7, [B

    .line 276
    .line 277
    fill-array-data v2, :array_1b0

    .line 278
    .line 279
    .line 280
    invoke-static {p0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {v1, p0, p1}, Lq0/e;->c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 288
    .line 289
    .line 290
    return-object v0

    .line 291
    :array_122
    .array-data 1
        -0x7ct
        -0x9t
        0x1at
        -0x6at
        -0x3at
        0x53t
        -0x38t
        -0x3et
        -0x4at
        -0x15t
        0x16t
        -0x78t
        -0x15t
        0x57t
        -0x23t
    .end array-data

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_12e
    .array-data 1
        -0x17t
        -0x68t
        0x79t
        -0x3t
        -0x67t
        0x34t
        -0x48t
        -0x4ft
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    :array_136
    .array-data 1
        -0x72t
        -0x64t
        0xdt
        -0x2t
        -0x6ft
        0x1dt
        -0x46t
        0x56t
        -0x68t
        -0x72t
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    nop

    .line 321
    :array_140
    .array-data 1
        -0x3t
        -0x3t
        0x79t
        -0x65t
        -0x3t
        0x71t
        -0x2dt
        0x22t
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    :array_148
    .array-data 1
        -0x22t
        0x64t
        0x4et
        -0xdt
        0x54t
        -0x78t
        0x79t
        0x75t
        -0x38t
        0x76t
        0x6ct
        -0x1t
        0x4bt
        -0x73t
        0x72t
        0x6dt
        -0x38t
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
    nop

    .line 343
    :array_156
    .array-data 1
        -0x53t
        0x5t
        0x3at
        -0x6at
        0x38t
        -0x1ct
        0x10t
        0x1t
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_15e
    .array-data 1
        -0x43t
        -0x53t
        -0x74t
        0x35t
        -0x5dt
        -0x6dt
        -0x5dt
        -0x5et
        -0x55t
        -0x41t
        -0x53t
        0x23t
        -0x56t
        -0x65t
        -0x7dt
        -0x48t
        -0x78t
        -0x5bt
        -0x80t
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
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
    :array_16c
    .array-data 1
        -0x32t
        -0x34t
        -0x8t
        0x50t
        -0x31t
        -0x1t
        -0x36t
        -0x2at
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_174
    .array-data 1
        0x4bt
        -0x4bt
        0x26t
        0x43t
        -0x72t
        0x6ft
        0x13t
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :array_17c
    .array-data 1
        0x26t
        -0x30t
        0x47t
        0x2dt
        -0x33t
        0x1t
        0x23t
        -0x7et
    .end array-data

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_184
    .array-data 1
        0x75t
        -0x7bt
        -0x49t
        -0x53t
        0x1ft
        0x5et
        -0x5at
        -0x68t
        0x7at
        -0x58t
        -0x54t
    .end array-data

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
    :array_18e
    .array-data 1
        0x18t
        -0x20t
        -0x2at
        -0x3dt
        0x5ct
        0x30t
        -0x6at
        -0x24t
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_196
    .array-data 1
        0x1bt
        -0x21t
        0x7at
        0x7ct
        -0x72t
        0x52t
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    nop

    .line 415
    :array_19e
    .array-data 1
        0x76t
        -0x42t
        0x2t
        0x3ft
        -0x20t
        0x62t
        -0x50t
        0x39t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :array_1a6
    .array-data 1
        -0xat
        0x2et
        -0x6t
        -0x34t
        -0x21t
        0x2at
        0x0t
        0x7at
        -0x2dt
        0x35t
    .end array-data

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    nop

    .line 433
    :array_1b0
    .array-data 1
        -0x65t
        0x4ft
        -0x7et
        -0x71t
        -0x4ft
        0x1at
        0x44t
        0x18t
    .end array-data
.end method

.method public static c(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Float;)V
    .registers 5

    .line 1
    if-eqz p2, :cond_12

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-lez v0, :cond_12

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 17
    .line 18
    .line 19
    :cond_12
    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lq0/e;->b:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v0, :cond_c

    .line 11
    .line 12
    return v3

    .line 13
    :cond_c
    sget-object v4, Lq0/e;->d:[Ljava/lang/String;

    .line 14
    .line 15
    array-length v5, v4

    .line 16
    const/4 v0, 0x0

    .line 17
    move v6, v0

    .line 18
    :goto_11
    if-ge v6, v5, :cond_db

    .line 19
    .line 20
    aget-object v8, v4, v6

    .line 21
    .line 22
    sget-object v7, Lq0/e;->c:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v1, Lq0/e;->a:Landroid/location/LocationManager;

    .line 25
    .line 26
    :try_start_19
    invoke-virtual {v9, v8}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 27
    .line 28
    .line 29
    :catch_1c
    const/16 v10, 0x8

    .line 30
    .line 31
    move-object v11, v7

    .line 32
    :try_start_1f
    iget-object v7, v1, Lq0/e;->a:Landroid/location/LocationManager;

    .line 33
    .line 34
    const/4 v0, 0x7

    .line 35
    new-array v0, v0, [B

    .line 36
    .line 37
    fill-array-data v0, :array_e2

    .line 38
    .line 39
    .line 40
    new-array v12, v10, [B

    .line 41
    .line 42
    fill-array-data v12, :array_ea

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v12}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v12, 0x3

    .line 54
    new-array v13, v12, [B

    .line 55
    .line 56
    fill-array-data v13, :array_f2

    .line 57
    .line 58
    .line 59
    new-array v14, v10, [B

    .line 60
    .line 61
    fill-array-data v14, :array_f8

    .line 62
    .line 63
    .line 64
    invoke-static {v13, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    new-array v12, v12, [B

    .line 73
    .line 74
    fill-array-data v12, :array_100

    .line 75
    .line 76
    .line 77
    new-array v14, v10, [B

    .line 78
    .line 79
    fill-array-data v14, :array_106

    .line 80
    .line 81
    .line 82
    invoke-static {v12, v14}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v12
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_59} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_59} :catch_85

    .line 90
    if-eqz v12, :cond_5f

    .line 91
    .line 92
    move/from16 v17, v3

    .line 93
    .line 94
    :goto_5d
    move-object v12, v11

    .line 95
    goto :goto_63

    .line 96
    :cond_5f
    const/4 v12, 0x2

    .line 97
    move/from16 v17, v12

    .line 98
    .line 99
    goto :goto_5d

    .line 100
    :goto_63
    const/4 v11, 0x0

    .line 101
    move-object v14, v12

    .line 102
    const/4 v12, 0x0

    .line 103
    move v15, v10

    .line 104
    move v10, v13

    .line 105
    const/4 v13, 0x1

    .line 106
    move-object/from16 v16, v14

    .line 107
    .line 108
    const/4 v14, 0x1

    .line 109
    move/from16 v18, v15

    .line 110
    .line 111
    const/4 v15, 0x1

    .line 112
    move-object/from16 v19, v16

    .line 113
    .line 114
    const/16 v16, 0x1

    .line 115
    .line 116
    move-object v1, v9

    .line 117
    move-object/from16 v20, v19

    .line 118
    .line 119
    move v9, v0

    .line 120
    :try_start_77
    invoke-virtual/range {v7 .. v17}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v8, v3}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/lang/SecurityException; {:try_start_77 .. :try_end_80} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_80} :catch_81

    .line 127
    .line 128
    .line 129
    goto :goto_d5

    .line 130
    :catch_81
    move-exception v0

    .line 131
    goto :goto_8c

    .line 132
    :catch_83
    move-exception v0

    .line 133
    goto :goto_8c

    .line 134
    :catch_85
    move-exception v0

    .line 135
    :goto_86
    move-object v1, v9

    .line 136
    move-object/from16 v20, v11

    .line 137
    .line 138
    goto :goto_8c

    .line 139
    :catch_8a
    move-exception v0

    .line 140
    goto :goto_86

    .line 141
    :goto_8c
    :try_start_8c
    invoke-virtual {v1, v8, v3}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catch Ljava/lang/SecurityException; {:try_start_8c .. :try_end_92} :catch_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_92} :catch_b9

    .line 145
    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0x2f

    .line 153
    .line 154
    new-array v1, v1, [B

    .line 155
    .line 156
    fill-array-data v1, :array_10e

    .line 157
    .line 158
    .line 159
    const/16 v15, 0x8

    .line 160
    .line 161
    new-array v7, v15, [B

    .line 162
    .line 163
    fill-array-data v7, :array_12a

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    move-object/from16 v11, v20

    .line 181
    .line 182
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto :goto_d5

    .line 186
    :catch_b9
    move-object/from16 v11, v20

    .line 187
    .line 188
    const/16 v15, 0x8

    .line 189
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const/16 v7, 0x1d

    .line 196
    .line 197
    new-array v7, v7, [B

    .line 198
    .line 199
    fill-array-data v7, :array_132

    .line 200
    .line 201
    .line 202
    new-array v9, v15, [B

    .line 203
    .line 204
    fill-array-data v9, :array_146

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v9, v1, v8}, Lcom/google/protobuf/q;->l([B[BLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .line 213
    .line 214
    :goto_d5
    add-int/lit8 v6, v6, 0x1

    .line 215
    .line 216
    move-object/from16 v1, p0

    .line 217
    .line 218
    goto/16 :goto_11

    .line 219
    .line 220
    :cond_db
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    xor-int/2addr v0, v3

    .line 225
    return v0

    .line 226
    nop

    .line 227
    :array_e2
    .array-data 1
        0x79t
        0x6et
        -0x7dt
        0x5at
        -0x59t
        0x75t
        0x68t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_ea
    .array-data 1
        0x17t
        0xbt
        -0x9t
        0x2dt
        -0x38t
        0x7t
        0x3t
        0x4bt
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_f2
    .array-data 1
        0x1ct
        -0x80t
        -0x64t
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :array_f8
    .array-data 1
        0x7bt
        -0x10t
        -0x11t
        -0x8t
        -0x66t
        -0x4at
        0x5ct
        0x14t
    .end array-data

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_100
    .array-data 1
        0x68t
        -0x38t
        -0x7bt
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_106
    .array-data 1
        0xft
        -0x48t
        -0xat
        0x2bt
        0x28t
        0x65t
        -0x54t
        0x63t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_10e
    .array-data 1
        -0x80t
        0x75t
        0x75t
        0x26t
        0x6at
        0x13t
        -0x2dt
        -0x1bt
        -0x56t
        0x79t
        0x73t
        0x21t
        0x66t
        0x19t
        -0x6ct
        -0x60t
        -0x41t
        0x7ft
        0x63t
        0x3et
        0x2ft
        0x7t
        -0x7ft
        -0x11t
        -0x5ct
        0x79t
        0x64t
        0x30t
        0x7dt
        0x57t
        -0x6et
        -0x1at
        -0x5at
        0x75t
        0x72t
        0x75t
        0x7dt
        0x12t
        -0x70t
        -0x11t
        -0x44t
        0x7et
        0x65t
        0x36t
        0x7bt
        0x4dt
        -0x2dt
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
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
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    :array_12a
    .array-data 1
        -0x2et
        0x10t
        0x0t
        0x55t
        0xft
        0x77t
        -0xdt
        -0x80t
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
        -0x2et
        0x11t
        0x78t
        -0x1ft
        0x66t
        0x36t
        0x36t
        0xct
        -0x1t
        0x11t
        0x74t
        -0x1dt
        0x6ct
        0x62t
        0x7bt
        0x6t
        -0xet
        0x1bt
        0x36t
        -0x1t
        0x7bt
        0x2dt
        0x60t
        0x0t
        -0xbt
        0x15t
        0x64t
        -0x4bt
        0x29t
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
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    nop

    .line 327
    :array_146
    .array-data 1
        -0x6ft
        0x70t
        0x16t
        -0x71t
        0x9t
        0x42t
        0x16t
        0x69t
    .end array-data
.end method

.method public final declared-synchronized d()V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lq0/e;->d:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_6
    if-ge v3, v1, :cond_1a

    .line 8
    .line 9
    aget-object v4, v0, v3
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 10
    .line 11
    :try_start_a
    iget-object v5, p0, Lq0/e;->a:Landroid/location/LocationManager;

    .line 12
    .line 13
    invoke-virtual {v5, v4, v2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_12
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    .line 14
    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_21

    .line 19
    :catch_12
    :goto_12
    :try_start_12
    iget-object v5, p0, Lq0/e;->a:Landroid/location/LocationManager;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_10

    .line 22
    .line 23
    .line 24
    :catch_17
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lq0/e;->b:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_10

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_21
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_10

    .line 35
    throw v0
.end method
