.class public final Lm0/h0;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final synthetic c:Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;


# direct methods
.method public constructor <init>(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/h0;->c:Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lm0/h0;->b:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/16 p1, 0x2e

    .line 15
    .line 16
    new-array p1, p1, [B

    .line 17
    .line 18
    fill-array-data p1, :array_0

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x8

    .line 22
    .line 23
    new-array p2, p2, [B

    .line 24
    .line 25
    fill-array-data p2, :array_1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 1
        -0x61t
        0x5bt
        -0x4dt
        0x60t
        -0x45t
        -0x10t
        0x4t
        0x20t
        -0x62t
        0x43t
        -0x4et
        0x59t
        -0x45t
        -0x3t
        -0xct
        0x4et
        -0xdt
        0x13t
        -0x24t
        0x30t
        -0x1dt
        -0x5et
        0x69t
        0x4et
        -0xft
        0x12t
        -0x1dt
        0x30t
        -0x18t
        -0x5et
        0x6ct
        -0x42t
        -0x61t
        0x72t
        -0x4et
        0x51t
        -0x45t
        -0x10t
        0x4t
        0x2et
        -0x62t
        0x43t
        -0x4et
        0x54t
        -0x46t
        -0x36t
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
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
    nop

    .line 65
    :array_1
    .array-data 1
        0x4ft
        -0x3dt
        0x62t
        -0x1ft
        0x6at
        0x72t
        -0x2ct
        -0x62t
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    iget-object v9, v0, Lm0/h0;->c:Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;

    .line 11
    .line 12
    invoke-static {v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->E(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-long v1, v1

    .line 17
    const-wide/32 v3, 0xea60

    .line 18
    .line 19
    .line 20
    mul-long v10, v1, v3

    .line 21
    .line 22
    const/high16 v1, 0x42300000    # 44.0f

    .line 23
    .line 24
    invoke-static {v9, v1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v2, v1

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/high16 v3, 0x41000000    # 8.0f

    .line 34
    .line 35
    invoke-static {v9, v3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sub-int/2addr v1, v3

    .line 40
    int-to-float v4, v1

    .line 41
    const/high16 v12, 0x41400000    # 12.0f

    .line 42
    .line 43
    invoke-static {v9, v12}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v13, v1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/high16 v3, 0x41d00000    # 26.0f

    .line 53
    .line 54
    invoke-static {v9, v3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-int/2addr v1, v3

    .line 59
    int-to-float v14, v1

    .line 60
    cmpg-float v1, v4, v2

    .line 61
    .line 62
    if-gtz v1, :cond_0

    .line 63
    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_0
    invoke-static {v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move/from16 v16, v13

    .line 75
    .line 76
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v18

    .line 84
    if-eqz v18, :cond_2

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v18

    .line 90
    move-object/from16 v3, v18

    .line 91
    .line 92
    check-cast v3, Lm0/g0;

    .line 93
    .line 94
    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    .line 95
    .line 96
    iget-wide v5, v3, Lm0/g0;->a:J

    .line 97
    .line 98
    move-object/from16 v22, v1

    .line 99
    .line 100
    move/from16 v18, v2

    .line 101
    .line 102
    iget-wide v1, v3, Lm0/g0;->b:D

    .line 103
    .line 104
    sub-long v5, v7, v5

    .line 105
    .line 106
    cmp-long v3, v5, v10

    .line 107
    .line 108
    if-gtz v3, :cond_1

    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_1

    .line 115
    .line 116
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    div-double v1, v1, v20

    .line 121
    .line 122
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    mul-double v1, v1, v20

    .line 127
    .line 128
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide v12

    .line 132
    const/16 v17, 0x1

    .line 133
    .line 134
    :cond_1
    move/from16 v2, v18

    .line 135
    .line 136
    move-object/from16 v1, v22

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    move/from16 v18, v2

    .line 140
    .line 141
    const/high16 v1, 0x41300000    # 11.0f

    .line 142
    .line 143
    invoke-static {v9, v1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    int-to-float v1, v1

    .line 148
    iget-object v6, v0, Lm0/h0;->b:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    .line 152
    .line 153
    const/high16 v1, 0x3f800000    # 1.0f

    .line 154
    .line 155
    invoke-static {v9, v1}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    int-to-float v1, v1

    .line 160
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    :goto_1
    const/4 v2, 0x5

    .line 165
    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 166
    .line 167
    const/high16 v5, 0x40800000    # 4.0f

    .line 168
    .line 169
    if-ge v1, v2, :cond_4

    .line 170
    .line 171
    sub-float v2, v14, v16

    .line 172
    .line 173
    int-to-float v3, v1

    .line 174
    mul-float/2addr v2, v3

    .line 175
    div-float/2addr v2, v5

    .line 176
    add-float v3, v2, v16

    .line 177
    .line 178
    invoke-static {v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->F(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    .line 184
    .line 185
    const/4 v2, 0x2

    .line 186
    if-ne v1, v2, :cond_3

    .line 187
    .line 188
    const/16 v2, 0x82

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_3
    const/16 v2, 0x23

    .line 192
    .line 193
    :goto_2
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 194
    .line 195
    .line 196
    move v2, v5

    .line 197
    move v5, v3

    .line 198
    move v15, v1

    .line 199
    move/from16 v2, v18

    .line 200
    .line 201
    const/16 v0, 0x8

    .line 202
    .line 203
    move-object/from16 v1, p1

    .line 204
    .line 205
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 206
    .line 207
    .line 208
    move/from16 v34, v4

    .line 209
    .line 210
    move v4, v3

    .line 211
    move/from16 v3, v34

    .line 212
    .line 213
    const/16 v5, 0xff

    .line 214
    .line 215
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    const/4 v0, 0x4

    .line 223
    new-array v0, v0, [B

    .line 224
    .line 225
    fill-array-data v0, :array_0

    .line 226
    .line 227
    .line 228
    move/from16 v18, v4

    .line 229
    .line 230
    const/16 v4, 0x8

    .line 231
    .line 232
    new-array v4, v4, [B

    .line 233
    .line 234
    fill-array-data v4, :array_1

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-wide/from16 v24, v7

    .line 242
    .line 243
    int-to-double v7, v15

    .line 244
    div-double v7, v7, v19

    .line 245
    .line 246
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 247
    .line 248
    sub-double v19, v19, v7

    .line 249
    .line 250
    mul-double v19, v19, v12

    .line 251
    .line 252
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v5, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    const/high16 v4, 0x40800000    # 4.0f

    .line 265
    .line 266
    invoke-static {v9, v4}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    int-to-float v4, v4

    .line 271
    add-float v4, v18, v4

    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    invoke-virtual {v1, v0, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v0, v15, 0x1

    .line 278
    .line 279
    move v1, v0

    .line 280
    move/from16 v18, v2

    .line 281
    .line 282
    move v4, v3

    .line 283
    move-wide/from16 v7, v24

    .line 284
    .line 285
    move-object/from16 v0, p0

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_4
    move-object/from16 v1, p1

    .line 289
    .line 290
    move v3, v4

    .line 291
    move v4, v5

    .line 292
    move-wide/from16 v24, v7

    .line 293
    .line 294
    move/from16 v2, v18

    .line 295
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const/4 v5, 0x3

    .line 302
    new-array v5, v5, [B

    .line 303
    .line 304
    fill-array-data v5, :array_2

    .line 305
    .line 306
    .line 307
    const/16 v7, 0x8

    .line 308
    .line 309
    new-array v8, v7, [B

    .line 310
    .line 311
    fill-array-data v8, :array_3

    .line 312
    .line 313
    .line 314
    invoke-static {v5, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->E(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const/4 v5, 0x7

    .line 329
    new-array v5, v5, [B

    .line 330
    .line 331
    fill-array-data v5, :array_4

    .line 332
    .line 333
    .line 334
    new-array v8, v7, [B

    .line 335
    .line 336
    fill-array-data v8, :array_5

    .line 337
    .line 338
    .line 339
    invoke-static {v5, v8, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    invoke-static {v9, v4}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    sub-int/2addr v5, v7

    .line 352
    int-to-float v5, v5

    .line 353
    invoke-virtual {v1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 354
    .line 355
    .line 356
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 357
    .line 358
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 359
    .line 360
    .line 361
    const/16 v0, 0xc

    .line 362
    .line 363
    new-array v0, v0, [B

    .line 364
    .line 365
    fill-array-data v0, :array_6

    .line 366
    .line 367
    .line 368
    const/16 v7, 0x8

    .line 369
    .line 370
    new-array v5, v7, [B

    .line 371
    .line 372
    fill-array-data v5, :array_7

    .line 373
    .line 374
    .line 375
    invoke-static {v0, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    invoke-static {v9, v4}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    sub-int/2addr v5, v4

    .line 388
    int-to-float v4, v5

    .line 389
    invoke-virtual {v1, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    .line 391
    .line 392
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 393
    .line 394
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 395
    .line 396
    .line 397
    if-nez v17, :cond_5

    .line 398
    .line 399
    const/16 v0, 0x13

    .line 400
    .line 401
    new-array v0, v0, [B

    .line 402
    .line 403
    fill-array-data v0, :array_8

    .line 404
    .line 405
    .line 406
    const/16 v7, 0x8

    .line 407
    .line 408
    new-array v3, v7, [B

    .line 409
    .line 410
    fill-array-data v3, :array_9

    .line 411
    .line 412
    .line 413
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    const/high16 v15, 0x41400000    # 12.0f

    .line 418
    .line 419
    invoke-static {v9, v15}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    int-to-float v3, v3

    .line 424
    add-float/2addr v2, v3

    .line 425
    const/high16 v3, 0x41f00000    # 30.0f

    .line 426
    .line 427
    invoke-static {v9, v3}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    int-to-float v3, v3

    .line 432
    add-float v13, v16, v3

    .line 433
    .line 434
    invoke-virtual {v1, v0, v2, v13, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    .line 439
    .line 440
    invoke-static {v9, v0}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    int-to-float v4, v4

    .line 445
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 446
    .line 447
    .line 448
    invoke-static {v9}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->B(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)Ljava/util/ArrayDeque;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    :goto_3
    const/4 v4, 0x0

    .line 457
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    if-eqz v5, :cond_a

    .line 462
    .line 463
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    move-object v15, v5

    .line 468
    check-cast v15, Lm0/g0;

    .line 469
    .line 470
    move/from16 v17, v0

    .line 471
    .line 472
    iget-wide v0, v15, Lm0/g0;->a:J

    .line 473
    .line 474
    move-object/from16 v18, v9

    .line 475
    .line 476
    iget-wide v8, v15, Lm0/g0;->b:D

    .line 477
    .line 478
    sub-long v22, v24, v0

    .line 479
    .line 480
    cmp-long v5, v22, v10

    .line 481
    .line 482
    if-gtz v5, :cond_6

    .line 483
    .line 484
    invoke-static {v8, v9}, Ljava/lang/Double;->isFinite(D)Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-nez v5, :cond_7

    .line 489
    .line 490
    :cond_6
    move-object/from16 v1, p1

    .line 491
    .line 492
    move v0, v2

    .line 493
    move v8, v3

    .line 494
    move/from16 v2, v17

    .line 495
    .line 496
    move-object/from16 v3, v18

    .line 497
    .line 498
    goto/16 :goto_7

    .line 499
    .line 500
    :cond_7
    sub-float v5, v3, v2

    .line 501
    .line 502
    move-wide/from16 v22, v0

    .line 503
    .line 504
    sub-long v0, v24, v22

    .line 505
    .line 506
    long-to-float v0, v0

    .line 507
    mul-float/2addr v0, v5

    .line 508
    long-to-float v1, v10

    .line 509
    div-float/2addr v0, v1

    .line 510
    sub-float v0, v3, v0

    .line 511
    .line 512
    add-float v26, v16, v14

    .line 513
    .line 514
    move/from16 v27, v0

    .line 515
    .line 516
    div-float v0, v26, v17

    .line 517
    .line 518
    move/from16 v26, v1

    .line 519
    .line 520
    float-to-double v0, v0

    .line 521
    div-double v28, v8, v12

    .line 522
    .line 523
    move-wide/from16 v30, v0

    .line 524
    .line 525
    sub-float v0, v14, v16

    .line 526
    .line 527
    float-to-double v0, v0

    .line 528
    mul-double v28, v28, v0

    .line 529
    .line 530
    div-double v28, v28, v19

    .line 531
    .line 532
    move-wide/from16 v32, v0

    .line 533
    .line 534
    sub-double v0, v30, v28

    .line 535
    .line 536
    double-to-float v0, v0

    .line 537
    const-wide/16 v28, 0x0

    .line 538
    .line 539
    cmpg-double v1, v8, v28

    .line 540
    .line 541
    if-gez v1, :cond_8

    .line 542
    .line 543
    invoke-static/range {v18 .. v18}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->A(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    goto :goto_5

    .line 548
    :cond_8
    invoke-static/range {v18 .. v18}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->w(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;)I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    :goto_5
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 553
    .line 554
    .line 555
    if-eqz v4, :cond_9

    .line 556
    .line 557
    iget-wide v8, v4, Lm0/g0;->a:J

    .line 558
    .line 559
    sub-long v22, v22, v8

    .line 560
    .line 561
    const-wide/16 v28, 0x9c4

    .line 562
    .line 563
    cmp-long v1, v22, v28

    .line 564
    .line 565
    if-gtz v1, :cond_9

    .line 566
    .line 567
    sub-long v8, v24, v8

    .line 568
    .line 569
    long-to-float v1, v8

    .line 570
    mul-float/2addr v5, v1

    .line 571
    div-float v5, v5, v26

    .line 572
    .line 573
    sub-float v1, v3, v5

    .line 574
    .line 575
    iget-wide v4, v4, Lm0/g0;->b:D

    .line 576
    .line 577
    div-double/2addr v4, v12

    .line 578
    mul-double v4, v4, v32

    .line 579
    .line 580
    div-double v4, v4, v19

    .line 581
    .line 582
    sub-double v4, v30, v4

    .line 583
    .line 584
    double-to-float v4, v4

    .line 585
    move v5, v0

    .line 586
    move v0, v2

    .line 587
    move v8, v3

    .line 588
    move v3, v4

    .line 589
    move/from16 v4, v27

    .line 590
    .line 591
    move v2, v1

    .line 592
    move-object/from16 v1, p1

    .line 593
    .line 594
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 595
    .line 596
    .line 597
    move/from16 v2, v17

    .line 598
    .line 599
    move-object/from16 v3, v18

    .line 600
    .line 601
    goto :goto_6

    .line 602
    :cond_9
    move-object/from16 v1, p1

    .line 603
    .line 604
    move v5, v0

    .line 605
    move v0, v2

    .line 606
    move v8, v3

    .line 607
    move/from16 v4, v27

    .line 608
    .line 609
    move/from16 v2, v17

    .line 610
    .line 611
    move-object/from16 v3, v18

    .line 612
    .line 613
    invoke-static {v3, v2}, Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;->J(Lcom/example/navistart/DialogUni/Fragmenti/ExlantixTelemetryFragment;F)I

    .line 614
    .line 615
    .line 616
    move-result v9

    .line 617
    int-to-float v9, v9

    .line 618
    invoke-virtual {v1, v4, v5, v9, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 619
    .line 620
    .line 621
    :goto_6
    move v4, v2

    .line 622
    move v2, v0

    .line 623
    move v0, v4

    .line 624
    move-object v9, v3

    .line 625
    move v3, v8

    .line 626
    move-object v4, v15

    .line 627
    goto/16 :goto_4

    .line 628
    .line 629
    :goto_7
    move v4, v2

    .line 630
    move v2, v0

    .line 631
    move v0, v4

    .line 632
    move-object v9, v3

    .line 633
    move v3, v8

    .line 634
    goto/16 :goto_3

    .line 635
    .line 636
    :cond_a
    :goto_8
    return-void

    .line 637
    :array_0
    .array-data 1
        0x1bt
        0x33t
        -0x12t
        0x6ft
    .end array-data

    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    :array_1
    .array-data 1
        0x3et
        0x1dt
        -0x22t
        0x9t
        -0x11t
        0xct
        0x12t
        -0x32t
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_2
    .array-data 1
        -0x40t
        -0x2ct
        0x63t
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    :array_3
    .array-data 1
        0x22t
        0x5ct
        -0xft
        0x6dt
        -0x45t
        0x1at
        -0x45t
        0x78t
    .end array-data

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    :array_4
    .array-data 1
        0x4bt
        0x9t
        0x41t
        0x7et
        0x46t
        0x3t
        -0x2et
    .end array-data

    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    :array_5
    .array-data 1
        0x6bt
        -0x27t
        -0x3t
        -0x52t
        -0x2t
        -0x2dt
        0x6ft
        0x7bt
    .end array-data

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :array_6
    .array-data 1
        0x1dt
        -0x5ct
        -0x1t
        -0x46t
        -0x5bt
        -0x3at
        0x2et
        0x38t
        0x1dt
        -0x4bt
        -0x2t
        -0x72t
    .end array-data

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_7
    .array-data 1
        -0x33t
        0x5t
        0x2ft
        0xft
        0x75t
        0x7ft
        -0x1t
        -0x41t
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_8
    .array-data 1
        0x12t
        -0x58t
        0x3et
        0x3et
        0x12t
        -0x55t
        -0x17t
        0x4bt
        0x76t
        -0x1bt
        0x5et
        0x5bt
        0x7et
        -0x7t
        0x74t
        0x4at
        0x49t
        -0x1ct
        0x6bt
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :array_9
    .array-data 1
        -0x3et
        0x35t
        -0x12t
        -0x75t
        -0x3dt
        0x29t
        -0x37t
        -0x65t
    .end array-data
.end method
