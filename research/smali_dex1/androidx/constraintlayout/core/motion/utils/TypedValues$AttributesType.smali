.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttributesType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyAttributes"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_FRAME:Ljava/lang/String; = "frame"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_TARGET:Ljava/lang/String; = "pivotTarget"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TARGET:Ljava/lang/String; = "target"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_ALPHA:I = 0x12f

.field public static final TYPE_CURVE_FIT:I = 0x12d

.field public static final TYPE_EASING:I = 0x13d

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x13c

.field public static final TYPE_PIVOT_TARGET:I = 0x13e

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x12e


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 1
    const-string v20, "target"

    .line 2
    .line 3
    const-string v21, "pivotTarget"

    .line 4
    .line 5
    const-string v1, "curveFit"

    .line 6
    .line 7
    const-string v2, "visibility"

    .line 8
    .line 9
    const-string v3, "alpha"

    .line 10
    .line 11
    const-string v4, "translationX"

    .line 12
    .line 13
    const-string v5, "translationY"

    .line 14
    .line 15
    const-string v6, "translationZ"

    .line 16
    .line 17
    const-string v7, "elevation"

    .line 18
    .line 19
    const-string v8, "rotationX"

    .line 20
    .line 21
    const-string v9, "rotationY"

    .line 22
    .line 23
    const-string v10, "rotationZ"

    .line 24
    .line 25
    const-string v11, "scaleX"

    .line 26
    .line 27
    const-string v12, "scaleY"

    .line 28
    .line 29
    const-string v13, "pivotX"

    .line 30
    .line 31
    const-string v14, "pivotY"

    .line 32
    .line 33
    const-string v15, "progress"

    .line 34
    .line 35
    const-string v16, "pathRotate"

    .line 36
    .line 37
    const-string v17, "easing"

    .line 38
    .line 39
    const-string v18, "CUSTOM"

    .line 40
    .line 41
    const-string v19, "frame"

    .line 42
    .line 43
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->KEY_WORDS:[Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_14c

    .line 10
    .line 11
    .line 12
    :goto_b
    move p0, v1

    .line 13
    goto/16 :goto_10c

    .line 14
    .line 15
    :sswitch_e
    const-string v0, "visibility"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_17

    .line 22
    .line 23
    goto :goto_b

    .line 24
    :cond_17
    const/16 p0, 0x13

    .line 25
    .line 26
    goto/16 :goto_10c

    .line 27
    .line 28
    :sswitch_1b
    const-string v0, "pivotTarget"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_24

    .line 35
    .line 36
    goto :goto_b

    .line 37
    :cond_24
    const/16 p0, 0x12

    .line 38
    .line 39
    goto/16 :goto_10c

    .line 40
    .line 41
    :sswitch_28
    const-string v0, "pathRotate"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_31

    .line 48
    .line 49
    goto :goto_b

    .line 50
    :cond_31
    const/16 p0, 0x11

    .line 51
    .line 52
    goto/16 :goto_10c

    .line 53
    .line 54
    :sswitch_35
    const-string v0, "curveFit"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_3e

    .line 61
    .line 62
    goto :goto_b

    .line 63
    :cond_3e
    const/16 p0, 0x10

    .line 64
    .line 65
    goto/16 :goto_10c

    .line 66
    .line 67
    :sswitch_42
    const-string v0, "frame"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_4b

    .line 74
    .line 75
    goto :goto_b

    .line 76
    :cond_4b
    const/16 p0, 0xf

    .line 77
    .line 78
    goto/16 :goto_10c

    .line 79
    .line 80
    :sswitch_4f
    const-string v0, "alpha"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_58

    .line 87
    .line 88
    goto :goto_b

    .line 89
    :cond_58
    const/16 p0, 0xe

    .line 90
    .line 91
    goto/16 :goto_10c

    .line 92
    .line 93
    :sswitch_5c
    const-string v0, "elevation"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_65

    .line 100
    .line 101
    goto :goto_b

    .line 102
    :cond_65
    const/16 p0, 0xd

    .line 103
    .line 104
    goto/16 :goto_10c

    .line 105
    .line 106
    :sswitch_69
    const-string v0, "target"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_72

    .line 113
    .line 114
    goto :goto_b

    .line 115
    :cond_72
    const/16 p0, 0xc

    .line 116
    .line 117
    goto/16 :goto_10c

    .line 118
    .line 119
    :sswitch_76
    const-string v0, "scaleY"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_7f

    .line 126
    .line 127
    goto :goto_b

    .line 128
    :cond_7f
    const/16 p0, 0xb

    .line 129
    .line 130
    goto/16 :goto_10c

    .line 131
    .line 132
    :sswitch_83
    const-string v0, "scaleX"

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_8d

    .line 139
    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :cond_8d
    const/16 p0, 0xa

    .line 143
    .line 144
    goto/16 :goto_10c

    .line 145
    .line 146
    :sswitch_91
    const-string v0, "pivotY"

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-nez p0, :cond_9b

    .line 153
    .line 154
    goto/16 :goto_b

    .line 155
    .line 156
    :cond_9b
    const/16 p0, 0x9

    .line 157
    .line 158
    goto/16 :goto_10c

    .line 159
    .line 160
    :sswitch_9f
    const-string v0, "pivotX"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_a9

    .line 167
    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :cond_a9
    const/16 p0, 0x8

    .line 171
    .line 172
    goto/16 :goto_10c

    .line 173
    .line 174
    :sswitch_ad
    const-string v0, "progress"

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_b7

    .line 181
    .line 182
    goto/16 :goto_b

    .line 183
    .line 184
    :cond_b7
    const/4 p0, 0x7

    .line 185
    goto :goto_10c

    .line 186
    :sswitch_b9
    const-string v0, "translationZ"

    .line 187
    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-nez p0, :cond_c3

    .line 193
    .line 194
    goto/16 :goto_b

    .line 195
    .line 196
    :cond_c3
    const/4 p0, 0x6

    .line 197
    goto :goto_10c

    .line 198
    :sswitch_c5
    const-string v0, "translationY"

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-nez p0, :cond_cf

    .line 205
    .line 206
    goto/16 :goto_b

    .line 207
    .line 208
    :cond_cf
    const/4 p0, 0x5

    .line 209
    goto :goto_10c

    .line 210
    :sswitch_d1
    const-string v0, "translationX"

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_db

    .line 217
    .line 218
    goto/16 :goto_b

    .line 219
    .line 220
    :cond_db
    const/4 p0, 0x4

    .line 221
    goto :goto_10c

    .line 222
    :sswitch_dd
    const-string v0, "rotationZ"

    .line 223
    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-nez p0, :cond_e7

    .line 229
    .line 230
    goto/16 :goto_b

    .line 231
    .line 232
    :cond_e7
    const/4 p0, 0x3

    .line 233
    goto :goto_10c

    .line 234
    :sswitch_e9
    const-string v0, "rotationY"

    .line 235
    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    if-nez p0, :cond_f3

    .line 241
    .line 242
    goto/16 :goto_b

    .line 243
    .line 244
    :cond_f3
    const/4 p0, 0x2

    .line 245
    goto :goto_10c

    .line 246
    :sswitch_f5
    const-string v0, "rotationX"

    .line 247
    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_ff

    .line 253
    .line 254
    goto/16 :goto_b

    .line 255
    .line 256
    :cond_ff
    const/4 p0, 0x1

    .line 257
    goto :goto_10c

    .line 258
    :sswitch_101
    const-string v0, "easing"

    .line 259
    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    if-nez p0, :cond_10b

    .line 265
    .line 266
    goto/16 :goto_b

    .line 267
    .line 268
    :cond_10b
    const/4 p0, 0x0

    .line 269
    :goto_10c
    packed-switch p0, :pswitch_data_19e

    .line 270
    .line 271
    .line 272
    return v1

    .line 273
    :pswitch_110
    const/16 p0, 0x12e

    .line 274
    .line 275
    return p0

    .line 276
    :pswitch_113
    const/16 p0, 0x13e

    .line 277
    .line 278
    return p0

    .line 279
    :pswitch_116
    const/16 p0, 0x13c

    .line 280
    .line 281
    return p0

    .line 282
    :pswitch_119
    const/16 p0, 0x12d

    .line 283
    .line 284
    return p0

    .line 285
    :pswitch_11c
    const/16 p0, 0x64

    .line 286
    .line 287
    return p0

    .line 288
    :pswitch_11f
    const/16 p0, 0x12f

    .line 289
    .line 290
    return p0

    .line 291
    :pswitch_122
    const/16 p0, 0x133

    .line 292
    .line 293
    return p0

    .line 294
    :pswitch_125
    const/16 p0, 0x65

    .line 295
    .line 296
    return p0

    .line 297
    :pswitch_128
    const/16 p0, 0x138

    .line 298
    .line 299
    return p0

    .line 300
    :pswitch_12b
    const/16 p0, 0x137

    .line 301
    .line 302
    return p0

    .line 303
    :pswitch_12e
    const/16 p0, 0x13a

    .line 304
    .line 305
    return p0

    .line 306
    :pswitch_131
    const/16 p0, 0x139

    .line 307
    .line 308
    return p0

    .line 309
    :pswitch_134
    const/16 p0, 0x13b

    .line 310
    .line 311
    return p0

    .line 312
    :pswitch_137
    const/16 p0, 0x132

    .line 313
    .line 314
    return p0

    .line 315
    :pswitch_13a
    const/16 p0, 0x131

    .line 316
    .line 317
    return p0

    .line 318
    :pswitch_13d
    const/16 p0, 0x130

    .line 319
    .line 320
    return p0

    .line 321
    :pswitch_140
    const/16 p0, 0x136

    .line 322
    .line 323
    return p0

    .line 324
    :pswitch_143
    const/16 p0, 0x135

    .line 325
    .line 326
    return p0

    .line 327
    :pswitch_146
    const/16 p0, 0x134

    .line 328
    .line 329
    return p0

    .line 330
    :pswitch_149
    const/16 p0, 0x13d

    .line 331
    .line 332
    return p0

    .line 333
    :sswitch_data_14c
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_101
        -0x4a771f66 -> :sswitch_f5
        -0x4a771f65 -> :sswitch_e9
        -0x4a771f64 -> :sswitch_dd
        -0x490b9c39 -> :sswitch_d1
        -0x490b9c38 -> :sswitch_c5
        -0x490b9c37 -> :sswitch_b9
        -0x3bab3dd3 -> :sswitch_ad
        -0x3ae243aa -> :sswitch_9f
        -0x3ae243a9 -> :sswitch_91
        -0x3621dfb2 -> :sswitch_83
        -0x3621dfb1 -> :sswitch_76
        -0x34818e6f -> :sswitch_69
        -0x42d1a3 -> :sswitch_5c
        0x589b15e -> :sswitch_4f
        0x5d2a96d -> :sswitch_42
        0x2283b8a2 -> :sswitch_35
        0x2fdfbde0 -> :sswitch_28
        0x45917073 -> :sswitch_1b
        0x73b66312 -> :sswitch_e
    .end sparse-switch

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
    .line 370
    .line 371
    .line 372
    .line 373
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
    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p0, v0, :cond_12

    .line 4
    .line 5
    const/16 v0, 0x65

    .line 6
    .line 7
    if-eq p0, v0, :cond_f

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_14

    .line 10
    .line 11
    .line 12
    const/4 p0, -0x1

    .line 13
    return p0

    .line 14
    :pswitch_d
    const/4 p0, 0x4

    .line 15
    return p0

    .line 16
    :cond_f
    :pswitch_f
    const/16 p0, 0x8

    .line 17
    .line 18
    return p0

    .line 19
    :cond_12
    :pswitch_12
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :pswitch_data_14
    .packed-switch 0x12d
        :pswitch_12
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
