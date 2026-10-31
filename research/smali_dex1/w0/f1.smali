.class public final Lw0/f1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:I


# virtual methods
.method public final a(Lt5/e;Ljava/lang/String;)V
    .registers 10

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_f6

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_fe

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-wide v2, p0, Lw0/f1;->a:J

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1, v0, v2}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0xd

    .line 32
    .line 33
    new-array v2, v0, [B

    .line 34
    .line 35
    fill-array-data v2, :array_106

    .line 36
    .line 37
    .line 38
    new-array v3, v1, [B

    .line 39
    .line 40
    fill-array-data v3, :array_112

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-wide v3, p0, Lw0/f1;->b:J

    .line 52
    .line 53
    long-to-double v3, v3

    .line 54
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    div-double/2addr v3, v5

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p1, v2, v3}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 65
    .line 66
    .line 67
    const/16 v2, 0xb

    .line 68
    .line 69
    new-array v2, v2, [B

    .line 70
    .line 71
    fill-array-data v2, :array_11a

    .line 72
    .line 73
    .line 74
    new-array v3, v1, [B

    .line 75
    .line 76
    fill-array-data v3, :array_124

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-wide v3, p0, Lw0/f1;->c:J

    .line 88
    .line 89
    long-to-double v3, v3

    .line 90
    div-double/2addr v3, v5

    .line 91
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v2, v3}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 96
    .line 97
    .line 98
    const/16 v2, 0x10

    .line 99
    .line 100
    new-array v2, v2, [B

    .line 101
    .line 102
    fill-array-data v2, :array_12c

    .line 103
    .line 104
    .line 105
    new-array v3, v1, [B

    .line 106
    .line 107
    fill-array-data v3, :array_138

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-wide v3, p0, Lw0/f1;->d:J

    .line 119
    .line 120
    long-to-double v3, v3

    .line 121
    div-double/2addr v3, v5

    .line 122
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {p1, v2, v3}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 127
    .line 128
    .line 129
    const/16 v2, 0xe

    .line 130
    .line 131
    new-array v2, v2, [B

    .line 132
    .line 133
    fill-array-data v2, :array_140

    .line 134
    .line 135
    .line 136
    new-array v3, v1, [B

    .line 137
    .line 138
    fill-array-data v3, :array_14c

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-wide v3, p0, Lw0/f1;->e:J

    .line 150
    .line 151
    long-to-double v3, v3

    .line 152
    div-double/2addr v3, v5

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {p1, v2, v3}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 158
    .line 159
    .line 160
    new-array v0, v0, [B

    .line 161
    .line 162
    fill-array-data v0, :array_154

    .line 163
    .line 164
    .line 165
    new-array v2, v1, [B

    .line 166
    .line 167
    fill-array-data v2, :array_160

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-wide v2, p0, Lw0/f1;->f:J

    .line 179
    .line 180
    long-to-double v2, v2

    .line 181
    div-double/2addr v2, v5

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p1, v0, v2}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 187
    .line 188
    .line 189
    const/16 v0, 0x9

    .line 190
    .line 191
    new-array v0, v0, [B

    .line 192
    .line 193
    fill-array-data v0, :array_168

    .line 194
    .line 195
    .line 196
    new-array v2, v1, [B

    .line 197
    .line 198
    fill-array-data v2, :array_172

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget v2, p0, Lw0/f1;->h:I

    .line 210
    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p1, v0, v2}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 216
    .line 217
    .line 218
    const/4 v0, 0x5

    .line 219
    new-array v0, v0, [B

    .line 220
    .line 221
    fill-array-data v0, :array_17a

    .line 222
    .line 223
    .line 224
    new-array v1, v1, [B

    .line 225
    .line 226
    fill-array-data v1, :array_182

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    iget-wide v0, p0, Lw0/f1;->g:J

    .line 238
    .line 239
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p1, p2, v0}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :array_f6
    .array-data 1
        -0x14t
        0x42t
        -0xat
        0xet
        0x68t
        -0x7at
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    nop

    .line 255
    :array_fe
    .array-data 1
        -0x52t
        0x2et
        -0x67t
        0x6dt
        0x3t
        -0xbt
        -0x25t
        0x78t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_106
    .array-data 1
        0x3ft
        0x62t
        0x18t
        -0x34t
        0x17t
        0x36t
        0x71t
        -0x18t
        0x4t
        0x69t
        0x9t
        -0x20t
        0x8t
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
    :array_112
    .array-data 1
        0x6bt
        0xdt
        0x6ct
        -0x53t
        0x7bt
        0x72t
        0x14t
        -0x75t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_11a
    .array-data 1
        -0xet
        0x68t
        0xat
        -0x63t
        -0x3ct
        0x56t
        0x17t
        -0x4t
        -0x26t
        0x44t
        0x1t
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
    .line 293
    :array_124
    .array-data 1
        -0x41t
        0x9t
        0x72t
        -0x27t
        -0x5ft
        0x35t
        0x78t
        -0x68t
    .end array-data

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :array_12c
    .array-data 1
        0x1ft
        0x53t
        0x59t
        0x68t
        -0x51t
        -0x5ct
        0xbt
        0x77t
        0x24t
        0x58t
        0x48t
        0x4at
        -0x4dt
        -0x6bt
        0x23t
        0x67t
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
    .line 312
    .line 313
    :array_138
    .array-data 1
        0x4bt
        0x3ct
        0x2dt
        0x9t
        -0x3dt
        -0x20t
        0x6et
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
        -0x5dt
        -0x4bt
        0x2ct
        0x62t
        -0x5bt
        -0x50t
        0x2at
        0x76t
        -0x75t
        -0x69t
        0x24t
        0x53t
        -0x73t
        -0x60t
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
    nop

    .line 333
    :array_14c
    .array-data 1
        -0x12t
        -0x2ct
        0x54t
        0x26t
        -0x40t
        -0x2dt
        0x45t
        0x12t
    .end array-data

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_154
    .array-data 1
        -0x52t
        -0x32t
        -0x58t
        -0x7et
        0x3bt
        -0xet
        0x69t
        0x4ft
        -0x5et
        -0x38t
        -0x4bt
        -0x72t
        0x3dt
    .end array-data

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
    nop

    .line 353
    :array_160
    .array-data 1
        -0x1dt
        -0x51t
        -0x30t
        -0x3dt
        0x4et
        -0x6at
        0x0t
        0x20t
    .end array-data

    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    :array_168
    .array-data 1
        -0x69t
        0x42t
        -0x5et
        -0x20t
        -0x2t
        0x14t
        -0x63t
        -0x27t
        -0x53t
    .end array-data

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    nop

    .line 371
    :array_172
    .array-data 1
        -0x3at
        0x37t
        -0x39t
        -0x6bt
        -0x65t
        0x44t
        -0x8t
        -0x48t
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_17a
    .array-data 1
        0x1at
        -0x50t
        -0x72t
        0x1dt
        0x60t
    .end array-data

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    nop

    .line 387
    :array_182
    .array-data 1
        0x5et
        -0x3et
        -0x1ft
        0x6dt
        0x13t
        0x1at
        0x30t
        0x45t
    .end array-data
.end method

.method public final b()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lw0/f1;->g:J

    .line 4
    .line 5
    iput-wide v0, p0, Lw0/f1;->f:J

    .line 6
    .line 7
    iput-wide v0, p0, Lw0/f1;->e:J

    .line 8
    .line 9
    iput-wide v0, p0, Lw0/f1;->d:J

    .line 10
    .line 11
    iput-wide v0, p0, Lw0/f1;->c:J

    .line 12
    .line 13
    iput-wide v0, p0, Lw0/f1;->b:J

    .line 14
    .line 15
    iput-wide v0, p0, Lw0/f1;->a:J

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lw0/f1;->h:I

    .line 19
    .line 20
    return-void
.end method
