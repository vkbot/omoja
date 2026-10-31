.class public final Lv7/u;
.super Ln7/k0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Ljava/util/Map;)Ln7/y0;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/16 v2, 0x64

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "interval"

    .line 15
    .line 16
    invoke-static {v4, v0}, Lo7/p4;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string v5, "baseEjectionTime"

    .line 21
    .line 22
    invoke-static {v5, v0}, Lo7/p4;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "maxEjectionTime"

    .line 27
    .line 28
    invoke-static {v6, v0}, Lo7/p4;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v7, "maxEjectionPercentage"

    .line 33
    .line 34
    invoke-static {v7, v0}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-wide v8, 0x2540be400L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-wide v9, 0x6fc23ac00L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-wide v10, 0x45d964b800L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    const/16 v11, 0xa

    .line 66
    .line 67
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    if-eqz v4, :cond_4a

    .line 72
    .line 73
    move-object v13, v4

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    move-object v13, v8

    .line 76
    :goto_4b
    if-eqz v5, :cond_4f

    .line 77
    .line 78
    move-object v14, v5

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move-object v14, v9

    .line 81
    :goto_50
    if-eqz v6, :cond_54

    .line 82
    .line 83
    move-object v15, v6

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move-object v15, v10

    .line 86
    :goto_55
    if-eqz v7, :cond_5a

    .line 87
    .line 88
    move-object/from16 v16, v7

    .line 89
    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    move-object/from16 v16, v11

    .line 92
    .line 93
    :goto_5c
    const-string v4, "successRateEjection"

    .line 94
    .line 95
    invoke-static {v4, v0}, Lo7/p4;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "requestVolume"

    .line 100
    .line 101
    const-string v6, "minimumHosts"

    .line 102
    .line 103
    const-string v7, "enforcementPercentage"

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    if-eqz v4, :cond_ca

    .line 107
    .line 108
    const/16 v11, 0x76c

    .line 109
    .line 110
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    const-string v12, "stdevFactor"

    .line 115
    .line 116
    invoke-static {v12, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-static {v7, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v17

    .line 124
    invoke-static {v6, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v18

    .line 128
    invoke-static {v5, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v12, :cond_86

    .line 133
    .line 134
    move-object v11, v12

    .line 135
    :cond_86
    if-eqz v17, :cond_9d

    .line 136
    .line 137
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    if-ltz v12, :cond_96

    .line 142
    .line 143
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    if-gt v12, v2, :cond_96

    .line 148
    .line 149
    const/4 v12, 0x1

    .line 150
    goto :goto_97

    .line 151
    :cond_96
    const/4 v12, 0x0

    .line 152
    :goto_97
    invoke-static {v12}, Lo4/b;->f(Z)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v12, v17

    .line 156
    .line 157
    goto :goto_9e

    .line 158
    :cond_9d
    move-object v12, v3

    .line 159
    :goto_9e
    if-eqz v18, :cond_b1

    .line 160
    .line 161
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v17

    .line 165
    if-ltz v17, :cond_a9

    .line 166
    .line 167
    const/16 v17, 0x1

    .line 168
    .line 169
    goto :goto_ab

    .line 170
    :cond_a9
    const/16 v17, 0x0

    .line 171
    .line 172
    :goto_ab
    invoke-static/range {v17 .. v17}, Lo4/b;->f(Z)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v8, v18

    .line 176
    .line 177
    goto :goto_b2

    .line 178
    :cond_b1
    move-object v8, v1

    .line 179
    :goto_b2
    if-eqz v4, :cond_c3

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v18

    .line 185
    if-ltz v18, :cond_bd

    .line 186
    .line 187
    const/16 v18, 0x1

    .line 188
    .line 189
    goto :goto_bf

    .line 190
    :cond_bd
    const/16 v18, 0x0

    .line 191
    .line 192
    :goto_bf
    invoke-static/range {v18 .. v18}, Lo4/b;->f(Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_c4

    .line 196
    :cond_c3
    move-object v4, v3

    .line 197
    :goto_c4
    new-instance v9, Lv7/n;

    .line 198
    .line 199
    invoke-direct {v9, v11, v12, v8, v4}, Lv7/n;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 200
    .line 201
    .line 202
    goto :goto_cb

    .line 203
    :cond_ca
    move-object v9, v10

    .line 204
    :goto_cb
    const-string v4, "failurePercentageEjection"

    .line 205
    .line 206
    invoke-static {v4, v0}, Lo7/p4;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-eqz v4, :cond_143

    .line 211
    .line 212
    const/16 v8, 0x55

    .line 213
    .line 214
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    const/16 v11, 0x32

    .line 219
    .line 220
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    const-string v12, "threshold"

    .line 225
    .line 226
    invoke-static {v12, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    invoke-static {v7, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v6, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-static {v5, v4}, Lo7/p4;->i(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    if-eqz v12, :cond_106

    .line 243
    .line 244
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-ltz v5, :cond_101

    .line 249
    .line 250
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-gt v5, v2, :cond_101

    .line 255
    .line 256
    const/4 v5, 0x1

    .line 257
    goto :goto_102

    .line 258
    :cond_101
    const/4 v5, 0x0

    .line 259
    :goto_102
    invoke-static {v5}, Lo4/b;->f(Z)V

    .line 260
    .line 261
    .line 262
    move-object v8, v12

    .line 263
    :cond_106
    if-eqz v7, :cond_11b

    .line 264
    .line 265
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-ltz v3, :cond_116

    .line 270
    .line 271
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-gt v3, v2, :cond_116

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    goto :goto_117

    .line 279
    :cond_116
    const/4 v2, 0x0

    .line 280
    :goto_117
    invoke-static {v2}, Lo4/b;->f(Z)V

    .line 281
    .line 282
    .line 283
    move-object v3, v7

    .line 284
    :cond_11b
    if-eqz v6, :cond_12a

    .line 285
    .line 286
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-ltz v1, :cond_125

    .line 291
    .line 292
    const/4 v1, 0x1

    .line 293
    goto :goto_126

    .line 294
    :cond_125
    const/4 v1, 0x0

    .line 295
    :goto_126
    invoke-static {v1}, Lo4/b;->f(Z)V

    .line 296
    .line 297
    .line 298
    move-object v1, v6

    .line 299
    :cond_12a
    if-eqz v4, :cond_13b

    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-ltz v2, :cond_135

    .line 306
    .line 307
    const/16 v17, 0x1

    .line 308
    .line 309
    goto :goto_137

    .line 310
    :cond_135
    const/16 v17, 0x0

    .line 311
    .line 312
    :goto_137
    invoke-static/range {v17 .. v17}, Lo4/b;->f(Z)V

    .line 313
    .line 314
    .line 315
    move-object v11, v4

    .line 316
    :cond_13b
    new-instance v2, Lv7/n;

    .line 317
    .line 318
    invoke-direct {v2, v8, v3, v1, v11}, Lv7/n;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 319
    .line 320
    .line 321
    move-object/from16 v18, v2

    .line 322
    .line 323
    goto :goto_145

    .line 324
    :cond_143
    move-object/from16 v18, v10

    .line 325
    .line 326
    :goto_145
    const-string v1, "childPolicy"

    .line 327
    .line 328
    invoke-static {v1, v0}, Lo7/p4;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-nez v1, :cond_14e

    .line 333
    .line 334
    goto :goto_152

    .line 335
    :cond_14e
    invoke-static {v1}, Lo7/p4;->a(Ljava/util/List;)V

    .line 336
    .line 337
    .line 338
    move-object v10, v1

    .line 339
    :goto_152
    invoke-static {v10}, Lo7/p4;->s(Ljava/util/List;)Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    if-eqz v1, :cond_18f

    .line 344
    .line 345
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_15f

    .line 350
    .line 351
    goto :goto_18f

    .line 352
    :cond_15f
    invoke-static {}, Ln7/l0;->a()Ln7/l0;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Lo7/p4;->r(Ljava/util/List;Ln7/l0;)Ln7/y0;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iget-object v1, v0, Ln7/y0;->a:Ln7/f1;

    .line 361
    .line 362
    if-eqz v1, :cond_16c

    .line 363
    .line 364
    return-object v0

    .line 365
    :cond_16c
    iget-object v0, v0, Ln7/y0;->b:Ljava/lang/Object;

    .line 366
    .line 367
    move-object/from16 v19, v0

    .line 368
    .line 369
    check-cast v19, Lo7/o4;

    .line 370
    .line 371
    if-eqz v19, :cond_189

    .line 372
    .line 373
    if-eqz v19, :cond_183

    .line 374
    .line 375
    new-instance v12, Lv7/o;

    .line 376
    .line 377
    move-object/from16 v17, v9

    .line 378
    .line 379
    invoke-direct/range {v12 .. v19}, Lv7/o;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lv7/n;Lv7/n;Lo7/o4;)V

    .line 380
    .line 381
    .line 382
    new-instance v0, Ln7/y0;

    .line 383
    .line 384
    invoke-direct {v0, v12}, Ln7/y0;-><init>(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    :cond_183
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 389
    .line 390
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :cond_189
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 395
    .line 396
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 397
    .line 398
    .line 399
    throw v0

    .line 400
    :cond_18f
    :goto_18f
    sget-object v1, Ln7/f1;->l:Ln7/f1;

    .line 401
    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v3, "No child policy in outlier_detection_experimental LB policy: "

    .line 405
    .line 406
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    new-instance v1, Ln7/y0;

    .line 421
    .line 422
    invoke-direct {v1, v0}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 423
    .line 424
    .line 425
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "outlier_detection_experimental"

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Ln7/e;)Ln7/j0;
    .registers 3

    .line 1
    new-instance v0, Lv7/t;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lv7/t;-><init>(Ln7/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c(Ljava/util/Map;)Ln7/y0;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lv7/u;->d(Ljava/util/Map;)Ln7/y0;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    sget-object v0, Ln7/f1;->m:Ln7/f1;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ln7/f1;->g(Ljava/lang/Throwable;)Ln7/f1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "Failed parsing configuration for outlier_detection_experimental"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Ln7/y0;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ln7/y0;-><init>(Ln7/f1;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
