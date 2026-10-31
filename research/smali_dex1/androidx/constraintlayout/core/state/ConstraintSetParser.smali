.class public Landroidx/constraintlayout/core/state/ConstraintSetParser;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$MotionLayoutDebugFlags;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$OverrideValue;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$GeneratedValue;
    }
.end annotation


# static fields
.field private static final PARSER_DEBUG:Z = false


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

.method public static applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V
    .registers 13

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_2de

    .line 16
    .line 17
    .line 18
    :goto_11
    move v0, v6

    .line 19
    goto/16 :goto_149

    .line 20
    .line 21
    :sswitch_14
    const-string v0, "visibility"

    .line 22
    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1d

    .line 28
    .line 29
    goto :goto_11

    .line 30
    :cond_1d
    const/16 v0, 0x17

    .line 31
    .line 32
    goto/16 :goto_149

    .line 33
    .line 34
    :sswitch_21
    const-string v0, "centerHorizontally"

    .line 35
    .line 36
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2a

    .line 41
    .line 42
    goto :goto_11

    .line 43
    :cond_2a
    const/16 v0, 0x16

    .line 44
    .line 45
    goto/16 :goto_149

    .line 46
    .line 47
    :sswitch_2e
    const-string v0, "hWeight"

    .line 48
    .line 49
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_37

    .line 54
    .line 55
    goto :goto_11

    .line 56
    :cond_37
    const/16 v0, 0x15

    .line 57
    .line 58
    goto/16 :goto_149

    .line 59
    .line 60
    :sswitch_3b
    const-string v0, "width"

    .line 61
    .line 62
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_44

    .line 67
    .line 68
    goto :goto_11

    .line 69
    :cond_44
    const/16 v0, 0x14

    .line 70
    .line 71
    goto/16 :goto_149

    .line 72
    .line 73
    :sswitch_48
    const-string v0, "vBias"

    .line 74
    .line 75
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_51

    .line 80
    .line 81
    goto :goto_11

    .line 82
    :cond_51
    const/16 v0, 0x13

    .line 83
    .line 84
    goto/16 :goto_149

    .line 85
    .line 86
    :sswitch_55
    const-string v0, "hBias"

    .line 87
    .line 88
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_5e

    .line 93
    .line 94
    goto :goto_11

    .line 95
    :cond_5e
    const/16 v0, 0x12

    .line 96
    .line 97
    goto/16 :goto_149

    .line 98
    .line 99
    :sswitch_62
    const-string v0, "alpha"

    .line 100
    .line 101
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6b

    .line 106
    .line 107
    goto :goto_11

    .line 108
    :cond_6b
    const/16 v0, 0x11

    .line 109
    .line 110
    goto/16 :goto_149

    .line 111
    .line 112
    :sswitch_6f
    const-string v0, "vWeight"

    .line 113
    .line 114
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_78

    .line 119
    .line 120
    goto :goto_11

    .line 121
    :cond_78
    const/16 v0, 0x10

    .line 122
    .line 123
    goto/16 :goto_149

    .line 124
    .line 125
    :sswitch_7c
    const-string v0, "hRtlBias"

    .line 126
    .line 127
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_85

    .line 132
    .line 133
    goto :goto_11

    .line 134
    :cond_85
    const/16 v0, 0xf

    .line 135
    .line 136
    goto/16 :goto_149

    .line 137
    .line 138
    :sswitch_89
    const-string v0, "scaleY"

    .line 139
    .line 140
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_93

    .line 145
    .line 146
    goto/16 :goto_11

    .line 147
    .line 148
    :cond_93
    const/16 v0, 0xe

    .line 149
    .line 150
    goto/16 :goto_149

    .line 151
    .line 152
    :sswitch_97
    const-string v0, "scaleX"

    .line 153
    .line 154
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_a1

    .line 159
    .line 160
    goto/16 :goto_11

    .line 161
    .line 162
    :cond_a1
    const/16 v0, 0xd

    .line 163
    .line 164
    goto/16 :goto_149

    .line 165
    .line 166
    :sswitch_a5
    const-string v0, "pivotY"

    .line 167
    .line 168
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_af

    .line 173
    .line 174
    goto/16 :goto_11

    .line 175
    .line 176
    :cond_af
    const/16 v0, 0xc

    .line 177
    .line 178
    goto/16 :goto_149

    .line 179
    .line 180
    :sswitch_b3
    const-string v0, "pivotX"

    .line 181
    .line 182
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_bd

    .line 187
    .line 188
    goto/16 :goto_11

    .line 189
    .line 190
    :cond_bd
    const/16 v0, 0xb

    .line 191
    .line 192
    goto/16 :goto_149

    .line 193
    .line 194
    :sswitch_c1
    const-string v0, "motion"

    .line 195
    .line 196
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_cb

    .line 201
    .line 202
    goto/16 :goto_11

    .line 203
    .line 204
    :cond_cb
    const/16 v0, 0xa

    .line 205
    .line 206
    goto/16 :goto_149

    .line 207
    .line 208
    :sswitch_cf
    const-string v0, "height"

    .line 209
    .line 210
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_d9

    .line 215
    .line 216
    goto/16 :goto_11

    .line 217
    .line 218
    :cond_d9
    const/16 v0, 0x9

    .line 219
    .line 220
    goto/16 :goto_149

    .line 221
    .line 222
    :sswitch_dd
    const-string v0, "translationZ"

    .line 223
    .line 224
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_e7

    .line 229
    .line 230
    goto/16 :goto_11

    .line 231
    .line 232
    :cond_e7
    move v0, v1

    .line 233
    goto/16 :goto_149

    .line 234
    .line 235
    :sswitch_ea
    const-string v0, "translationY"

    .line 236
    .line 237
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_f4

    .line 242
    .line 243
    goto/16 :goto_11

    .line 244
    .line 245
    :cond_f4
    const/4 v0, 0x7

    .line 246
    goto :goto_149

    .line 247
    :sswitch_f6
    const-string v0, "translationX"

    .line 248
    .line 249
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_100

    .line 254
    .line 255
    goto/16 :goto_11

    .line 256
    .line 257
    :cond_100
    const/4 v0, 0x6

    .line 258
    goto :goto_149

    .line 259
    :sswitch_102
    const-string v0, "rotationZ"

    .line 260
    .line 261
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_10c

    .line 266
    .line 267
    goto/16 :goto_11

    .line 268
    .line 269
    :cond_10c
    const/4 v0, 0x5

    .line 270
    goto :goto_149

    .line 271
    :sswitch_10e
    const-string v0, "rotationY"

    .line 272
    .line 273
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_118

    .line 278
    .line 279
    goto/16 :goto_11

    .line 280
    .line 281
    :cond_118
    move v0, v2

    .line 282
    goto :goto_149

    .line 283
    :sswitch_11a
    const-string v0, "rotationX"

    .line 284
    .line 285
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-nez v0, :cond_124

    .line 290
    .line 291
    goto/16 :goto_11

    .line 292
    .line 293
    :cond_124
    const/4 v0, 0x3

    .line 294
    goto :goto_149

    .line 295
    :sswitch_126
    const-string v0, "custom"

    .line 296
    .line 297
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-nez v0, :cond_130

    .line 302
    .line 303
    goto/16 :goto_11

    .line 304
    .line 305
    :cond_130
    move v0, v3

    .line 306
    goto :goto_149

    .line 307
    :sswitch_132
    const-string v0, "center"

    .line 308
    .line 309
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_13c

    .line 314
    .line 315
    goto/16 :goto_11

    .line 316
    .line 317
    :cond_13c
    move v0, v4

    .line 318
    goto :goto_149

    .line 319
    :sswitch_13e
    const-string v0, "centerVertically"

    .line 320
    .line 321
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_148

    .line 326
    .line 327
    goto/16 :goto_11

    .line 328
    .line 329
    :cond_148
    move v0, v5

    .line 330
    :goto_149
    const-string v7, "parent"

    .line 331
    .line 332
    packed-switch v0, :pswitch_data_340

    .line 333
    .line 334
    .line 335
    invoke-static {p0, p1, p3, p2, p4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_152
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    sparse-switch p1, :sswitch_data_374

    .line 351
    .line 352
    .line 353
    :goto_160
    move v3, v6

    .line 354
    goto :goto_180

    .line 355
    :sswitch_162
    const-string p1, "visible"

    .line 356
    .line 357
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result p0

    .line 361
    if-nez p0, :cond_180

    .line 362
    .line 363
    goto :goto_160

    .line 364
    :sswitch_16b
    const-string p1, "gone"

    .line 365
    .line 366
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-nez p0, :cond_174

    .line 371
    .line 372
    goto :goto_160

    .line 373
    :cond_174
    move v3, v4

    .line 374
    goto :goto_180

    .line 375
    :sswitch_176
    const-string p1, "invisible"

    .line 376
    .line 377
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result p0

    .line 381
    if-nez p0, :cond_17f

    .line 382
    .line 383
    goto :goto_160

    .line 384
    :cond_17f
    move v3, v5

    .line 385
    :cond_180
    :goto_180
    packed-switch v3, :pswitch_data_382

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :pswitch_184
    invoke-virtual {p2, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :pswitch_188
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :pswitch_18c
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->visibility(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 398
    .line 399
    .line 400
    const/4 p0, 0x0

    .line 401
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->alpha(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :pswitch_194
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result p3

    .line 413
    if-eqz p3, :cond_1a0

    .line 414
    .line 415
    sget-object p1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 416
    .line 417
    :cond_1a0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :pswitch_1ab
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainWeight(F)V

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_1b7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->getDpToPixel()Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-static {p3, p4, p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimension(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/CorePixelDp;)Landroidx/constraintlayout/core/state/Dimension;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 449
    .line 450
    .line 451
    return-void

    .line 452
    :pswitch_1c3
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 457
    .line 458
    .line 459
    move-result p0

    .line 460
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :pswitch_1cf
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :pswitch_1db
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->alpha(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :pswitch_1e7
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 493
    .line 494
    .line 495
    move-result p0

    .line 496
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainWeight(F)V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :pswitch_1f3
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 501
    .line 502
    .line 503
    move-result-object p3

    .line 504
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 509
    .line 510
    .line 511
    move-result p0

    .line 512
    if-eqz p0, :cond_205

    .line 513
    .line 514
    const/high16 p0, 0x3f800000    # 1.0f

    .line 515
    .line 516
    sub-float p1, p0, p1

    .line 517
    .line 518
    :cond_205
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_209
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 527
    .line 528
    .line 529
    move-result p0

    .line 530
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->scaleY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :pswitch_215
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 539
    .line 540
    .line 541
    move-result p0

    .line 542
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->scaleX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :pswitch_221
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 547
    .line 548
    .line 549
    move-result-object p0

    .line 550
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 551
    .line 552
    .line 553
    move-result p0

    .line 554
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->pivotY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :pswitch_22d
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 563
    .line 564
    .line 565
    move-result p0

    .line 566
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->pivotX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :pswitch_239
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    invoke-static {p0, p2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseMotionProperties(Landroidx/constraintlayout/core/parser/CLElement;Landroidx/constraintlayout/core/state/ConstraintReference;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :pswitch_241
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->getDpToPixel()Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    invoke-static {p3, p4, p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimension(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/CorePixelDp;)Landroidx/constraintlayout/core/state/Dimension;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 587
    .line 588
    .line 589
    return-void

    .line 590
    :pswitch_24d
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 591
    .line 592
    .line 593
    move-result-object p3

    .line 594
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 595
    .line 596
    .line 597
    move-result p1

    .line 598
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 599
    .line 600
    .line 601
    move-result p0

    .line 602
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->translationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :pswitch_25d
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 607
    .line 608
    .line 609
    move-result-object p3

    .line 610
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 615
    .line 616
    .line 617
    move-result p0

    .line 618
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->translationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_26d
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 623
    .line 624
    .line 625
    move-result-object p3

    .line 626
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 627
    .line 628
    .line 629
    move-result p1

    .line 630
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 631
    .line 632
    .line 633
    move-result p0

    .line 634
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->translationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_27d
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 639
    .line 640
    .line 641
    move-result-object p0

    .line 642
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 643
    .line 644
    .line 645
    move-result p0

    .line 646
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rotationZ(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :pswitch_289
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 655
    .line 656
    .line 657
    move-result p0

    .line 658
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rotationY(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 659
    .line 660
    .line 661
    return-void

    .line 662
    :pswitch_295
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 663
    .line 664
    .line 665
    move-result-object p0

    .line 666
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 667
    .line 668
    .line 669
    move-result p0

    .line 670
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->rotationX(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    :pswitch_2a1
    invoke-static {p3, p2, p4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseCustomProperties(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :pswitch_2a5
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result p3

    .line 686
    if-eqz p3, :cond_2b6

    .line 687
    .line 688
    sget-object p1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 689
    .line 690
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 691
    .line 692
    .line 693
    move-result-object p0

    .line 694
    goto :goto_2ba

    .line 695
    :cond_2b6
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    :goto_2ba
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 700
    .line 701
    .line 702
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 706
    .line 707
    .line 708
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 709
    .line 710
    .line 711
    return-void

    .line 712
    :pswitch_2c7
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p1

    .line 716
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result p3

    .line 720
    if-eqz p3, :cond_2d3

    .line 721
    .line 722
    sget-object p1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 723
    .line 724
    :cond_2d3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 725
    .line 726
    .line 727
    move-result-object p0

    .line 728
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 729
    .line 730
    .line 731
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 732
    .line 733
    .line 734
    return-void

    .line 735
    :sswitch_data_2de
    .sparse-switch
        -0x565a8e48 -> :sswitch_13e
        -0x514d33ab -> :sswitch_132
        -0x5069748f -> :sswitch_126
        -0x4a771f66 -> :sswitch_11a
        -0x4a771f65 -> :sswitch_10e
        -0x4a771f64 -> :sswitch_102
        -0x490b9c39 -> :sswitch_f6
        -0x490b9c38 -> :sswitch_ea
        -0x490b9c37 -> :sswitch_dd
        -0x48c76ed9 -> :sswitch_cf
        -0x3fad404a -> :sswitch_c1
        -0x3ae243aa -> :sswitch_b3
        -0x3ae243a9 -> :sswitch_a5
        -0x3621dfb2 -> :sswitch_97
        -0x3621dfb1 -> :sswitch_89
        -0xec32145 -> :sswitch_7c
        -0x3aa8172 -> :sswitch_6f
        0x589b15e -> :sswitch_62
        0x5d92341 -> :sswitch_55
        0x69e6c4f -> :sswitch_48
        0x6be2dc6 -> :sswitch_3b
        0x17be4100 -> :sswitch_2e
        0x53b069a6 -> :sswitch_21
        0x73b66312 -> :sswitch_14
    .end sparse-switch

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
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
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
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
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
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :pswitch_data_340
    .packed-switch 0x0
        :pswitch_2c7
        :pswitch_2a5
        :pswitch_2a1
        :pswitch_295
        :pswitch_289
        :pswitch_27d
        :pswitch_26d
        :pswitch_25d
        :pswitch_24d
        :pswitch_241
        :pswitch_239
        :pswitch_22d
        :pswitch_221
        :pswitch_215
        :pswitch_209
        :pswitch_1f3
        :pswitch_1e7
        :pswitch_1db
        :pswitch_1cf
        :pswitch_1c3
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_194
        :pswitch_152
    .end packed-switch

    .line 834
    .line 835
    .line 836
    .line 837
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
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :sswitch_data_374
    .sparse-switch
        -0x715b4053 -> :sswitch_176
        0x30809f -> :sswitch_16b
        0x1bd1f072 -> :sswitch_162
    .end sparse-switch

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    :pswitch_data_382
    .packed-switch 0x0
        :pswitch_18c
        :pswitch_188
        :pswitch_184
    .end packed-switch
.end method

.method private static varargs indexOf(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_10

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    return v0

    .line 14
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_10
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public static lookForType(Landroidx/constraintlayout/core/parser/CLObject;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :cond_9
    if-ge v2, v1, :cond_20

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "type"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_9

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_20
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static override(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 11

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/parser/CLContainer;->put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :cond_18
    :goto_18
    if-ge v2, v0, :cond_e4

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "clear"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_32

    .line 42
    .line 43
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0, v3, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->put(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 48
    .line 49
    .line 50
    goto :goto_18

    .line 51
    :cond_32
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    move v4, v1

    .line 56
    :goto_37
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-ge v4, v5, :cond_18

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v5, :cond_45

    .line 67
    .line 68
    goto/16 :goto_e0

    .line 69
    .line 70
    :cond_45
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const/4 v7, -0x1

    .line 75
    sparse-switch v6, :sswitch_data_e6

    .line 76
    .line 77
    .line 78
    goto :goto_6e

    .line 79
    :sswitch_4e
    const-string v6, "dimensions"

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_57

    .line 86
    .line 87
    goto :goto_6e

    .line 88
    :cond_57
    const/4 v7, 0x2

    .line 89
    goto :goto_6e

    .line 90
    :sswitch_59
    const-string v6, "constraints"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_62

    .line 97
    .line 98
    goto :goto_6e

    .line 99
    :cond_62
    const/4 v7, 0x1

    .line 100
    goto :goto_6e

    .line 101
    :sswitch_64
    const-string v6, "transforms"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_6d

    .line 108
    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v7, v1

    .line 111
    :goto_6e
    packed-switch v7, :pswitch_data_f4

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_e0

    .line 118
    :pswitch_75
    const-string v5, "width"

    .line 119
    .line 120
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v5, "height"

    .line 124
    .line 125
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_e0

    .line 129
    :pswitch_80
    const-string v5, "start"

    .line 130
    .line 131
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v5, "end"

    .line 135
    .line 136
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v5, "top"

    .line 140
    .line 141
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v5, "bottom"

    .line 145
    .line 146
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v5, "baseline"

    .line 150
    .line 151
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v5, "center"

    .line 155
    .line 156
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v5, "centerHorizontally"

    .line 160
    .line 161
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v5, "centerVertically"

    .line 165
    .line 166
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_e0

    .line 170
    :pswitch_a9
    const-string v5, "visibility"

    .line 171
    .line 172
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v5, "alpha"

    .line 176
    .line 177
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string v5, "pivotX"

    .line 181
    .line 182
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v5, "pivotY"

    .line 186
    .line 187
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v5, "rotationX"

    .line 191
    .line 192
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v5, "rotationY"

    .line 196
    .line 197
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v5, "rotationZ"

    .line 201
    .line 202
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v5, "scaleX"

    .line 206
    .line 207
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v5, "scaleY"

    .line 211
    .line 212
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v5, "translationX"

    .line 216
    .line 217
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const-string v5, "translationY"

    .line 221
    .line 222
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->remove(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :goto_e0
    add-int/lit8 v4, v4, 0x1

    .line 226
    .line 227
    goto/16 :goto_37

    .line 228
    .line 229
    :cond_e4
    return-void

    .line 230
    nop

    .line 231
    :sswitch_data_e6
    .sparse-switch
        -0x66f0fd79 -> :sswitch_64
        -0x5fc459ca -> :sswitch_59
        0x18b23fcd -> :sswitch_4e
    .end sparse-switch

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_80
        :pswitch_75
    .end packed-switch
.end method

.method public static parseBarrier(Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/state/State;->barrier(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Direction;)Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_12

    .line 16
    .line 17
    goto/16 :goto_11f

    .line 18
    .line 19
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :cond_18
    :goto_18
    if-ge v4, v2, :cond_11f

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x2

    .line 43
    const/4 v8, -0x1

    .line 44
    const/4 v9, 0x1

    .line 45
    sparse-switch v6, :sswitch_data_120

    .line 46
    .line 47
    .line 48
    :goto_2f
    move v6, v8

    .line 49
    goto :goto_51

    .line 50
    :sswitch_31
    const-string v6, "contains"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3a

    .line 57
    .line 58
    goto :goto_2f

    .line 59
    :cond_3a
    move v6, v7

    .line 60
    goto :goto_51

    .line 61
    :sswitch_3c
    const-string v6, "direction"

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_45

    .line 68
    .line 69
    goto :goto_2f

    .line 70
    :cond_45
    move v6, v9

    .line 71
    goto :goto_51

    .line 72
    :sswitch_47
    const-string v6, "margin"

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_50

    .line 79
    .line 80
    goto :goto_2f

    .line 81
    :cond_50
    move v6, v3

    .line 82
    :goto_51
    packed-switch v6, :pswitch_data_12e

    .line 83
    .line 84
    .line 85
    goto :goto_18

    .line 86
    :pswitch_55
    invoke-virtual {p2, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-eqz v5, :cond_18

    .line 91
    .line 92
    move v6, v3

    .line 93
    :goto_5c
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-ge v6, v7, :cond_18

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_5c

    .line 121
    :pswitch_78
    invoke-virtual {p2, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    sparse-switch v6, :sswitch_data_138

    .line 133
    .line 134
    .line 135
    :goto_86
    move v7, v8

    .line 136
    goto :goto_c7

    .line 137
    :sswitch_88
    const-string v6, "start"

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_91

    .line 144
    .line 145
    goto :goto_86

    .line 146
    :cond_91
    const/4 v7, 0x5

    .line 147
    goto :goto_c7

    .line 148
    :sswitch_93
    const-string v6, "right"

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-nez v5, :cond_9c

    .line 155
    .line 156
    goto :goto_86

    .line 157
    :cond_9c
    const/4 v7, 0x4

    .line 158
    goto :goto_c7

    .line 159
    :sswitch_9e
    const-string v6, "left"

    .line 160
    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_a7

    .line 166
    .line 167
    goto :goto_86

    .line 168
    :cond_a7
    const/4 v7, 0x3

    .line 169
    goto :goto_c7

    .line 170
    :sswitch_a9
    const-string v6, "top"

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_c7

    .line 177
    .line 178
    goto :goto_86

    .line 179
    :sswitch_b2
    const-string v6, "end"

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_bb

    .line 186
    .line 187
    goto :goto_86

    .line 188
    :cond_bb
    move v7, v9

    .line 189
    goto :goto_c7

    .line 190
    :sswitch_bd
    const-string v6, "bottom"

    .line 191
    .line 192
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-nez v5, :cond_c6

    .line 197
    .line 198
    goto :goto_86

    .line 199
    :cond_c6
    move v7, v3

    .line 200
    :cond_c7
    :goto_c7
    packed-switch v7, :pswitch_data_152

    .line 201
    .line 202
    .line 203
    goto/16 :goto_18

    .line 204
    .line 205
    :pswitch_cc
    if-nez v0, :cond_d5

    .line 206
    .line 207
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 208
    .line 209
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_18

    .line 213
    .line 214
    :cond_d5
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 215
    .line 216
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_18

    .line 220
    .line 221
    :pswitch_dc
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 222
    .line 223
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_18

    .line 227
    .line 228
    :pswitch_e3
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 229
    .line 230
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_18

    .line 234
    .line 235
    :pswitch_ea
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    .line 236
    .line 237
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_18

    .line 241
    .line 242
    :pswitch_f1
    if-nez v0, :cond_fa

    .line 243
    .line 244
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 245
    .line 246
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_18

    .line 250
    .line 251
    :cond_fa
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    .line 252
    .line 253
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_18

    .line 257
    .line 258
    :pswitch_101
    sget-object v5, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    .line 259
    .line 260
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_18

    .line 264
    .line 265
    :pswitch_108
    invoke-virtual {p2, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    if-nez v6, :cond_18

    .line 274
    .line 275
    invoke-static {p0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 284
    .line 285
    .line 286
    goto/16 :goto_18

    .line 287
    .line 288
    :cond_11f
    :goto_11f
    return-void

    .line 289
    :sswitch_data_120
    .sparse-switch
        -0x40737a52 -> :sswitch_47
        -0x395ff881 -> :sswitch_3c
        -0x21d289e1 -> :sswitch_31
    .end sparse-switch

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
    .line 300
    .line 301
    .line 302
    .line 303
    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_108
        :pswitch_78
        :pswitch_55
    .end packed-switch

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
    :sswitch_data_138
    .sparse-switch
        -0x527265d5 -> :sswitch_bd
        0x188db -> :sswitch_b2
        0x1c155 -> :sswitch_a9
        0x32a007 -> :sswitch_9e
        0x677c21c -> :sswitch_93
        0x68ac462 -> :sswitch_88
    .end sparse-switch

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
    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_101
        :pswitch_f1
        :pswitch_ea
        :pswitch_e3
        :pswitch_dc
        :pswitch_cc
    .end packed-switch
.end method

.method public static parseChain(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V
    .registers 12

    .line 1
    if-nez p0, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/State;->horizontalChain()Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/State;->verticalChain()Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_b
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLArray;

    .line 18
    .line 19
    if-eqz v2, :cond_ae

    .line 20
    .line 21
    check-cast v1, Landroidx/constraintlayout/core/parser/CLArray;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v2, v0, :cond_1e

    .line 28
    .line 29
    goto/16 :goto_ae

    .line 30
    .line 31
    :cond_1e
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_20
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_34

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_20

    .line 53
    :cond_34
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v3, 0x2

    .line 58
    if-le v1, v3, :cond_ae

    .line 59
    .line 60
    invoke-virtual {p3, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    instance-of v1, p3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 65
    .line 66
    if-nez v1, :cond_44

    .line 67
    .line 68
    goto :goto_ae

    .line 69
    :cond_44
    check-cast p3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 70
    .line 71
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    move v4, v2

    .line 80
    :goto_4f
    if-ge v4, v3, :cond_ae

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v6, "style"

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_68

    .line 100
    .line 101
    invoke-static {p1, p2, p3, p0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4f

    .line 105
    :cond_68
    invoke-virtual {p3, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 110
    .line 111
    if-eqz v6, :cond_85

    .line 112
    .line 113
    move-object v6, v5

    .line 114
    check-cast v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 115
    .line 116
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-le v7, v0, :cond_85

    .line 121
    .line 122
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->bias(F)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 131
    .line 132
    .line 133
    goto :goto_89

    .line 134
    :cond_85
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    :goto_89
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string v6, "packed"

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_a8

    .line 148
    .line 149
    const-string v6, "spread_inside"

    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-nez v5, :cond_a2

    .line 156
    .line 157
    sget-object v5, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    .line 158
    .line 159
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 160
    .line 161
    .line 162
    goto :goto_4f

    .line 163
    :cond_a2
    sget-object v5, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    .line 164
    .line 165
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 166
    .line 167
    .line 168
    goto :goto_4f

    .line 169
    :cond_a8
    sget-object v5, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    .line 170
    .line 171
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 172
    .line 173
    .line 174
    goto :goto_4f

    .line 175
    :cond_ae
    :goto_ae
    return-void
.end method

.method private static parseChainType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object/from16 v4, p0

    .line 9
    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/16 v5, 0x68

    .line 15
    .line 16
    if-ne v4, v5, :cond_17

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/State;->horizontalChain()Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    :goto_15
    move-object v5, v4

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/State;->verticalChain()Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    goto :goto_15

    .line 29
    :goto_1c
    invoke-virtual {v5, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setKey(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    move v6, v3

    .line 41
    :goto_28
    if-ge v6, v12, :cond_227

    .line 42
    .line 43
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    add-int/lit8 v13, v6, 0x1

    .line 48
    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/4 v14, 0x6

    .line 59
    const/4 v8, 0x4

    .line 60
    const/4 v9, 0x3

    .line 61
    const/4 v10, 0x2

    .line 62
    const/4 v11, 0x1

    .line 63
    const/16 v16, -0x1

    .line 64
    .line 65
    sparse-switch v6, :sswitch_data_228

    .line 66
    .line 67
    .line 68
    goto/16 :goto_a5

    .line 69
    .line 70
    :sswitch_45
    const-string v6, "style"

    .line 71
    .line 72
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_4f

    .line 77
    .line 78
    goto/16 :goto_a5

    .line 79
    .line 80
    :cond_4f
    const/16 v16, 0x7

    .line 81
    .line 82
    goto :goto_a5

    .line 83
    :sswitch_52
    const-string v6, "start"

    .line 84
    .line 85
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_5b

    .line 90
    .line 91
    goto :goto_a5

    .line 92
    :cond_5b
    move/from16 v16, v14

    .line 93
    .line 94
    goto :goto_a5

    .line 95
    :sswitch_5e
    const-string v6, "right"

    .line 96
    .line 97
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_67

    .line 102
    .line 103
    goto :goto_a5

    .line 104
    :cond_67
    const/16 v16, 0x5

    .line 105
    .line 106
    goto :goto_a5

    .line 107
    :sswitch_6a
    const-string v6, "left"

    .line 108
    .line 109
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_73

    .line 114
    .line 115
    goto :goto_a5

    .line 116
    :cond_73
    move/from16 v16, v8

    .line 117
    .line 118
    goto :goto_a5

    .line 119
    :sswitch_76
    const-string v6, "top"

    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_7f

    .line 126
    .line 127
    goto :goto_a5

    .line 128
    :cond_7f
    move/from16 v16, v9

    .line 129
    .line 130
    goto :goto_a5

    .line 131
    :sswitch_82
    const-string v6, "end"

    .line 132
    .line 133
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_8b

    .line 138
    .line 139
    goto :goto_a5

    .line 140
    :cond_8b
    move/from16 v16, v10

    .line 141
    .line 142
    goto :goto_a5

    .line 143
    :sswitch_8e
    const-string v6, "contains"

    .line 144
    .line 145
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-nez v6, :cond_97

    .line 150
    .line 151
    goto :goto_a5

    .line 152
    :cond_97
    move/from16 v16, v11

    .line 153
    .line 154
    goto :goto_a5

    .line 155
    :sswitch_9a
    const-string v6, "bottom"

    .line 156
    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-nez v6, :cond_a3

    .line 162
    .line 163
    goto :goto_a5

    .line 164
    :cond_a3
    move/from16 v16, v3

    .line 165
    .line 166
    :goto_a5
    packed-switch v16, :pswitch_data_24a

    .line 167
    .line 168
    .line 169
    :cond_a8
    :goto_a8
    move-object/from16 v3, p3

    .line 170
    .line 171
    goto/16 :goto_223

    .line 172
    .line 173
    :pswitch_ac
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 178
    .line 179
    if-eqz v7, :cond_c9

    .line 180
    .line 181
    move-object v7, v6

    .line 182
    check-cast v7, Landroidx/constraintlayout/core/parser/CLArray;

    .line 183
    .line 184
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-le v8, v11, :cond_c9

    .line 189
    .line 190
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->bias(F)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 199
    .line 200
    .line 201
    goto :goto_cd

    .line 202
    :cond_c9
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    :goto_cd
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    const-string v7, "packed"

    .line 210
    .line 211
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-nez v7, :cond_ec

    .line 216
    .line 217
    const-string v7, "spread_inside"

    .line 218
    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-nez v6, :cond_e6

    .line 224
    .line 225
    sget-object v6, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    .line 226
    .line 227
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 228
    .line 229
    .line 230
    goto :goto_a8

    .line 231
    :cond_e6
    sget-object v6, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    .line 232
    .line 233
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 234
    .line 235
    .line 236
    goto :goto_a8

    .line 237
    :cond_ec
    sget-object v6, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    .line 238
    .line 239
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->style(Landroidx/constraintlayout/core/state/State$Chain;)Landroidx/constraintlayout/core/state/helpers/ChainReference;

    .line 240
    .line 241
    .line 242
    goto :goto_a8

    .line 243
    :pswitch_f2
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 248
    .line 249
    if-eqz v7, :cond_202

    .line 250
    .line 251
    move-object v7, v6

    .line 252
    check-cast v7, Landroidx/constraintlayout/core/parser/CLArray;

    .line 253
    .line 254
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 255
    .line 256
    .line 257
    move-result v15

    .line 258
    if-ge v15, v11, :cond_105

    .line 259
    .line 260
    goto/16 :goto_202

    .line 261
    .line 262
    :cond_105
    move v15, v3

    .line 263
    :goto_106
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-ge v15, v6, :cond_a8

    .line 268
    .line 269
    invoke-virtual {v7, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    instance-of v11, v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 274
    .line 275
    if-eqz v11, :cond_1e1

    .line 276
    .line 277
    check-cast v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 278
    .line 279
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    if-lez v11, :cond_1d8

    .line 284
    .line 285
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 298
    .line 299
    if-eq v3, v10, :cond_1be

    .line 300
    .line 301
    if-eq v3, v9, :cond_1a0

    .line 302
    .line 303
    if-eq v3, v8, :cond_179

    .line 304
    .line 305
    if-eq v3, v14, :cond_143

    .line 306
    .line 307
    move-object v3, v7

    .line 308
    move/from16 v18, v8

    .line 309
    .line 310
    move/from16 v19, v9

    .line 311
    .line 312
    move v14, v10

    .line 313
    move-object v6, v11

    .line 314
    move/from16 v7, v17

    .line 315
    .line 316
    move v8, v7

    .line 317
    move v9, v8

    .line 318
    move v10, v9

    .line 319
    move v11, v10

    .line 320
    :goto_13f
    const/16 v20, 0x1

    .line 321
    .line 322
    goto/16 :goto_1d4

    .line 323
    .line 324
    :cond_143
    const/4 v3, 0x1

    .line 325
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 326
    .line 327
    .line 328
    move-result v17

    .line 329
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 330
    .line 331
    .line 332
    move-result v14

    .line 333
    invoke-static {v0, v14}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 334
    .line 335
    .line 336
    move-result v14

    .line 337
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    invoke-static {v0, v10}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    invoke-static {v0, v9}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    const/4 v3, 0x5

    .line 354
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    invoke-static {v0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    move-object v3, v11

    .line 363
    move v11, v6

    .line 364
    move-object v6, v3

    .line 365
    move v3, v10

    .line 366
    move v10, v9

    .line 367
    move v9, v3

    .line 368
    move-object v3, v7

    .line 369
    move/from16 v18, v8

    .line 370
    .line 371
    move v8, v14

    .line 372
    move/from16 v7, v17

    .line 373
    .line 374
    const/4 v14, 0x2

    .line 375
    const/16 v19, 0x3

    .line 376
    .line 377
    goto :goto_13f

    .line 378
    :cond_179
    const/4 v3, 0x5

    .line 379
    const/4 v9, 0x1

    .line 380
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    const/4 v14, 0x2

    .line 385
    invoke-virtual {v6, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    const/4 v8, 0x3

    .line 394
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 395
    .line 396
    .line 397
    move-result v6

    .line 398
    invoke-static {v0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    move/from16 v19, v8

    .line 403
    .line 404
    move/from16 v20, v9

    .line 405
    .line 406
    const/16 v18, 0x4

    .line 407
    .line 408
    move v8, v3

    .line 409
    move v9, v6

    .line 410
    move-object v3, v7

    .line 411
    move v7, v10

    .line 412
    move-object v6, v11

    .line 413
    move/from16 v10, v17

    .line 414
    .line 415
    :goto_19e
    move v11, v10

    .line 416
    goto :goto_1d4

    .line 417
    :cond_1a0
    move v8, v9

    .line 418
    move v14, v10

    .line 419
    const/4 v9, 0x1

    .line 420
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    invoke-virtual {v6, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    invoke-static {v0, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    move-object v10, v7

    .line 433
    move v7, v3

    .line 434
    move-object v3, v10

    .line 435
    move/from16 v19, v8

    .line 436
    .line 437
    move/from16 v20, v9

    .line 438
    .line 439
    move/from16 v10, v17

    .line 440
    .line 441
    const/16 v18, 0x4

    .line 442
    .line 443
    move v8, v6

    .line 444
    move v9, v8

    .line 445
    move-object v6, v11

    .line 446
    goto :goto_19e

    .line 447
    :cond_1be
    move v8, v9

    .line 448
    move v14, v10

    .line 449
    const/4 v9, 0x1

    .line 450
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    move-object v6, v7

    .line 455
    move v7, v3

    .line 456
    move-object v3, v6

    .line 457
    move/from16 v19, v8

    .line 458
    .line 459
    move/from16 v20, v9

    .line 460
    .line 461
    move-object v6, v11

    .line 462
    move/from16 v8, v17

    .line 463
    .line 464
    move v9, v8

    .line 465
    move v10, v9

    .line 466
    move v11, v10

    .line 467
    const/16 v18, 0x4

    .line 468
    .line 469
    :goto_1d4
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/state/helpers/ChainReference;->addChainElement(Ljava/lang/Object;FFFFF)V

    .line 470
    .line 471
    .line 472
    goto :goto_1f4

    .line 473
    :cond_1d8
    move-object v3, v7

    .line 474
    move/from16 v18, v8

    .line 475
    .line 476
    move/from16 v19, v9

    .line 477
    .line 478
    move v14, v10

    .line 479
    const/16 v20, 0x1

    .line 480
    .line 481
    goto :goto_1f4

    .line 482
    :cond_1e1
    move-object v3, v7

    .line 483
    move/from16 v18, v8

    .line 484
    .line 485
    move/from16 v19, v9

    .line 486
    .line 487
    move v14, v10

    .line 488
    const/16 v20, 0x1

    .line 489
    .line 490
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 499
    .line 500
    .line 501
    :goto_1f4
    add-int/lit8 v15, v15, 0x1

    .line 502
    .line 503
    move-object v7, v3

    .line 504
    move v10, v14

    .line 505
    move/from16 v8, v18

    .line 506
    .line 507
    move/from16 v9, v19

    .line 508
    .line 509
    move/from16 v11, v20

    .line 510
    .line 511
    const/4 v3, 0x0

    .line 512
    const/4 v14, 0x6

    .line 513
    goto/16 :goto_106

    .line 514
    .line 515
    :cond_202
    :goto_202
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 516
    .line 517
    const-string v2, " contains should be an array \""

    .line 518
    .line 519
    invoke-static {v1, v2}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v2, "\""

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :pswitch_21e
    move-object/from16 v3, p3

    .line 544
    .line 545
    invoke-static {v0, v3, v2, v5, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    :goto_223
    move v6, v13

    .line 549
    const/4 v3, 0x0

    .line 550
    goto/16 :goto_28

    .line 551
    .line 552
    :cond_227
    return-void

    .line 553
    :sswitch_data_228
    .sparse-switch
        -0x527265d5 -> :sswitch_9a
        -0x21d289e1 -> :sswitch_8e
        0x188db -> :sswitch_82
        0x1c155 -> :sswitch_76
        0x32a007 -> :sswitch_6a
        0x677c21c -> :sswitch_5e
        0x68ac462 -> :sswitch_52
        0x68b1db1 -> :sswitch_45
    .end sparse-switch

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
    .line 565
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
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_21e
        :pswitch_f2
        :pswitch_21e
        :pswitch_21e
        :pswitch_21e
        :pswitch_21e
        :pswitch_21e
        :pswitch_ac
    .end packed-switch
.end method

.method public static parseColorString(Ljava/lang/String;)J
    .registers 3

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_21

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x6

    .line 19
    if-ne v0, v1, :cond_1a

    .line 20
    .line 21
    const-string v0, "FF"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_1a
    const/16 v0, 0x10

    .line 28
    .line 29
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0

    .line 34
    :cond_21
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    return-wide v0
.end method

.method public static parseConstraint(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    xor-int/lit8 v6, v5, 0x1

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const-string v9, "start"

    .line 22
    .line 23
    const-string v10, "end"

    .line 24
    .line 25
    const-string v11, "top"

    .line 26
    .line 27
    const-string v12, "bottom"

    .line 28
    .line 29
    const-string v13, "baseline"

    .line 30
    .line 31
    const-string v15, "parent"

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v14, 0x1

    .line 35
    move/from16 v18, v5

    .line 36
    .line 37
    if-eqz v7, :cond_241

    .line 38
    .line 39
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-le v5, v14, :cond_241

    .line 44
    .line 45
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/16 v19, 0x0

    .line 58
    .line 59
    const/4 v14, 0x2

    .line 60
    if-le v8, v14, :cond_4a

    .line 61
    .line 62
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-static {v0, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    move/from16 v8, v19

    .line 76
    .line 77
    :goto_4c
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    move/from16 v21, v6

    .line 82
    .line 83
    const/4 v6, 0x3

    .line 84
    if-le v14, v6, :cond_62

    .line 85
    .line 86
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    invoke-static {v0, v14}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 95
    .line 96
    .line 97
    move-result v14

    .line 98
    goto :goto_64

    .line 99
    :cond_62
    move/from16 v14, v19

    .line 100
    .line 101
    :goto_64
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    if-eqz v15, :cond_71

    .line 106
    .line 107
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    goto :goto_75

    .line 114
    :cond_71
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    const-string v6, "right"

    .line 126
    .line 127
    move/from16 p2, v8

    .line 128
    .line 129
    const-string v8, "left"

    .line 130
    .line 131
    sparse-switch v15, :sswitch_data_2c8

    .line 132
    .line 133
    .line 134
    :goto_85
    const/4 v4, -0x1

    .line 135
    goto :goto_d0

    .line 136
    :sswitch_87
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_8e

    .line 141
    .line 142
    goto :goto_85

    .line 143
    :cond_8e
    const/4 v4, 0x7

    .line 144
    goto :goto_d0

    .line 145
    :sswitch_90
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_97

    .line 150
    .line 151
    goto :goto_85

    .line 152
    :cond_97
    const/4 v4, 0x6

    .line 153
    goto :goto_d0

    .line 154
    :sswitch_99
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_a0

    .line 159
    .line 160
    goto :goto_85

    .line 161
    :cond_a0
    const/4 v4, 0x5

    .line 162
    goto :goto_d0

    .line 163
    :sswitch_a2
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_a9

    .line 168
    .line 169
    goto :goto_85

    .line 170
    :cond_a9
    const/4 v4, 0x4

    .line 171
    goto :goto_d0

    .line 172
    :sswitch_ab
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-nez v4, :cond_b2

    .line 177
    .line 178
    goto :goto_85

    .line 179
    :cond_b2
    const/4 v4, 0x3

    .line 180
    goto :goto_d0

    .line 181
    :sswitch_b4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_bb

    .line 186
    .line 187
    goto :goto_85

    .line 188
    :cond_bb
    const/4 v4, 0x2

    .line 189
    goto :goto_d0

    .line 190
    :sswitch_bd
    const-string v15, "circular"

    .line 191
    .line 192
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-nez v4, :cond_c6

    .line 197
    .line 198
    goto :goto_85

    .line 199
    :cond_c6
    const/4 v4, 0x1

    .line 200
    goto :goto_d0

    .line 201
    :sswitch_c8
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_cf

    .line 206
    .line 207
    goto :goto_85

    .line 208
    :cond_cf
    const/4 v4, 0x0

    .line 209
    :goto_d0
    packed-switch v4, :pswitch_data_2ea

    .line 210
    .line 211
    .line 212
    :goto_d3
    const/4 v4, 0x1

    .line 213
    const/4 v15, 0x2

    .line 214
    goto/16 :goto_1d7

    .line 215
    .line 216
    :pswitch_d7
    move/from16 v0, v21

    .line 217
    .line 218
    :goto_d9
    const/4 v4, 0x1

    .line 219
    const/4 v15, 0x2

    .line 220
    const/16 v20, 0x1

    .line 221
    .line 222
    goto/16 :goto_1da

    .line 223
    .line 224
    :pswitch_df
    const/4 v0, 0x0

    .line 225
    goto :goto_d9

    .line 226
    :pswitch_e1
    const/4 v0, 0x1

    .line 227
    goto :goto_d9

    .line 228
    :pswitch_e3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    sparse-switch v1, :sswitch_data_2fe

    .line 236
    .line 237
    .line 238
    :goto_ed
    const/4 v1, -0x1

    .line 239
    goto :goto_109

    .line 240
    :sswitch_ef
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_f6

    .line 245
    .line 246
    goto :goto_ed

    .line 247
    :cond_f6
    const/4 v1, 0x2

    .line 248
    goto :goto_109

    .line 249
    :sswitch_f8
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_ff

    .line 254
    .line 255
    goto :goto_ed

    .line 256
    :cond_ff
    const/4 v1, 0x1

    .line 257
    goto :goto_109

    .line 258
    :sswitch_101
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_108

    .line 263
    .line 264
    goto :goto_ed

    .line 265
    :cond_108
    const/4 v1, 0x0

    .line 266
    :goto_109
    packed-switch v1, :pswitch_data_30c

    .line 267
    .line 268
    .line 269
    goto :goto_d3

    .line 270
    :pswitch_10d
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 271
    .line 272
    .line 273
    goto :goto_d3

    .line 274
    :pswitch_111
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 275
    .line 276
    .line 277
    goto :goto_d3

    .line 278
    :pswitch_115
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 286
    .line 287
    .line 288
    goto :goto_d3

    .line 289
    :pswitch_120
    move/from16 v0, v18

    .line 290
    .line 291
    goto :goto_d9

    .line 292
    :pswitch_123
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    sparse-switch v1, :sswitch_data_316

    .line 300
    .line 301
    .line 302
    :goto_12d
    const/4 v1, -0x1

    .line 303
    goto :goto_149

    .line 304
    :sswitch_12f
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_136

    .line 309
    .line 310
    goto :goto_12d

    .line 311
    :cond_136
    const/4 v1, 0x2

    .line 312
    goto :goto_149

    .line 313
    :sswitch_138
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_13f

    .line 318
    .line 319
    goto :goto_12d

    .line 320
    :cond_13f
    const/4 v1, 0x1

    .line 321
    goto :goto_149

    .line 322
    :sswitch_141
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_148

    .line 327
    .line 328
    goto :goto_12d

    .line 329
    :cond_148
    const/4 v1, 0x0

    .line 330
    :goto_149
    packed-switch v1, :pswitch_data_324

    .line 331
    .line 332
    .line 333
    goto :goto_d3

    .line 334
    :pswitch_14d
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 335
    .line 336
    .line 337
    goto :goto_d3

    .line 338
    :pswitch_151
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 339
    .line 340
    .line 341
    goto/16 :goto_d3

    .line 342
    .line 343
    :pswitch_156
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 351
    .line 352
    .line 353
    goto/16 :goto_d3

    .line 354
    .line 355
    :pswitch_162
    const/4 v4, 0x1

    .line 356
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 361
    .line 362
    .line 363
    move-result v11

    .line 364
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    const/4 v15, 0x2

    .line 369
    if-le v12, v15, :cond_17e

    .line 370
    .line 371
    invoke-virtual {v7, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-static {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 380
    .line 381
    .line 382
    move-result v19

    .line 383
    :cond_17e
    move/from16 v0, v19

    .line 384
    .line 385
    invoke-virtual {v3, v2, v11, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->circularConstraint(Ljava/lang/Object;FF)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 386
    .line 387
    .line 388
    goto :goto_1d7

    .line 389
    :pswitch_184
    const/4 v4, 0x1

    .line 390
    const/4 v15, 0x2

    .line 391
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    sparse-switch v1, :sswitch_data_32e

    .line 399
    .line 400
    .line 401
    :goto_190
    const/4 v1, -0x1

    .line 402
    goto :goto_1ac

    .line 403
    :sswitch_192
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-nez v1, :cond_199

    .line 408
    .line 409
    goto :goto_190

    .line 410
    :cond_199
    move v1, v15

    .line 411
    goto :goto_1ac

    .line 412
    :sswitch_19b
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-nez v1, :cond_1a2

    .line 417
    .line 418
    goto :goto_190

    .line 419
    :cond_1a2
    move v1, v4

    .line 420
    goto :goto_1ac

    .line 421
    :sswitch_1a4
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-nez v1, :cond_1ab

    .line 426
    .line 427
    goto :goto_190

    .line 428
    :cond_1ab
    const/4 v1, 0x0

    .line 429
    :goto_1ac
    packed-switch v1, :pswitch_data_33c

    .line 430
    .line 431
    .line 432
    goto :goto_1d7

    .line 433
    :pswitch_1b0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 441
    .line 442
    .line 443
    goto :goto_1d7

    .line 444
    :pswitch_1bb
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 452
    .line 453
    .line 454
    goto :goto_1d7

    .line 455
    :pswitch_1c6
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 470
    .line 471
    .line 472
    :goto_1d7
    move v0, v4

    .line 473
    const/16 v20, 0x0

    .line 474
    .line 475
    :goto_1da
    if-eqz v20, :cond_231

    .line 476
    .line 477
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    sparse-switch v1, :sswitch_data_346

    .line 485
    .line 486
    .line 487
    :goto_1e6
    const/16 v16, -0x1

    .line 488
    .line 489
    goto :goto_210

    .line 490
    :sswitch_1e9
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_1f0

    .line 495
    .line 496
    goto :goto_1e6

    .line 497
    :cond_1f0
    const/16 v16, 0x3

    .line 498
    .line 499
    goto :goto_210

    .line 500
    :sswitch_1f3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-nez v1, :cond_1fa

    .line 505
    .line 506
    goto :goto_1e6

    .line 507
    :cond_1fa
    move/from16 v16, v15

    .line 508
    .line 509
    goto :goto_210

    .line 510
    :sswitch_1fd
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-nez v1, :cond_204

    .line 515
    .line 516
    goto :goto_1e6

    .line 517
    :cond_204
    move/from16 v16, v4

    .line 518
    .line 519
    goto :goto_210

    .line 520
    :sswitch_207
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-nez v1, :cond_20e

    .line 525
    .line 526
    goto :goto_1e6

    .line 527
    :cond_20e
    const/16 v16, 0x0

    .line 528
    .line 529
    :goto_210
    packed-switch v16, :pswitch_data_358

    .line 530
    .line 531
    .line 532
    :pswitch_213
    move v5, v4

    .line 533
    goto :goto_21c

    .line 534
    :pswitch_215
    move/from16 v5, v21

    .line 535
    .line 536
    goto :goto_21c

    .line 537
    :pswitch_218
    const/4 v5, 0x0

    .line 538
    goto :goto_21c

    .line 539
    :pswitch_21a
    move/from16 v5, v18

    .line 540
    .line 541
    :goto_21c
    if-eqz v0, :cond_228

    .line 542
    .line 543
    if-eqz v5, :cond_224

    .line 544
    .line 545
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 546
    .line 547
    .line 548
    goto :goto_231

    .line 549
    :cond_224
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 550
    .line 551
    .line 552
    goto :goto_231

    .line 553
    :cond_228
    if-eqz v5, :cond_22e

    .line 554
    .line 555
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 556
    .line 557
    .line 558
    goto :goto_231

    .line 559
    :cond_22e
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 560
    .line 561
    .line 562
    :cond_231
    :goto_231
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :cond_241
    move/from16 v20, v14

    .line 579
    .line 580
    const/16 v17, 0x2

    .line 581
    .line 582
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    if-eqz v1, :cond_2c7

    .line 587
    .line 588
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    if-eqz v2, :cond_258

    .line 593
    .line 594
    sget-object v1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    goto :goto_25c

    .line 601
    :cond_258
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    :goto_25c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    sparse-switch v2, :sswitch_data_364

    .line 613
    .line 614
    .line 615
    :goto_266
    const/4 v8, -0x1

    .line 616
    goto :goto_296

    .line 617
    :sswitch_268
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-nez v2, :cond_26f

    .line 622
    .line 623
    goto :goto_266

    .line 624
    :cond_26f
    const/4 v8, 0x4

    .line 625
    goto :goto_296

    .line 626
    :sswitch_271
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-nez v2, :cond_278

    .line 631
    .line 632
    goto :goto_266

    .line 633
    :cond_278
    const/4 v8, 0x3

    .line 634
    goto :goto_296

    .line 635
    :sswitch_27a
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    if-nez v2, :cond_281

    .line 640
    .line 641
    goto :goto_266

    .line 642
    :cond_281
    move/from16 v8, v17

    .line 643
    .line 644
    goto :goto_296

    .line 645
    :sswitch_284
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    if-nez v2, :cond_28b

    .line 650
    .line 651
    goto :goto_266

    .line 652
    :cond_28b
    move/from16 v8, v20

    .line 653
    .line 654
    goto :goto_296

    .line 655
    :sswitch_28e
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-nez v2, :cond_295

    .line 660
    .line 661
    goto :goto_266

    .line 662
    :cond_295
    const/4 v8, 0x0

    .line 663
    :goto_296
    packed-switch v8, :pswitch_data_37a

    .line 664
    .line 665
    .line 666
    goto :goto_2c7

    .line 667
    :pswitch_29a
    if-nez v18, :cond_2a0

    .line 668
    .line 669
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 670
    .line 671
    .line 672
    return-void

    .line 673
    :cond_2a0
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :pswitch_2a4
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 678
    .line 679
    .line 680
    return-void

    .line 681
    :pswitch_2a8
    if-nez v18, :cond_2ae

    .line 682
    .line 683
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->rightToRight(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :cond_2ae
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->leftToLeft(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 688
    .line 689
    .line 690
    return-void

    .line 691
    :pswitch_2b2
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 692
    .line 693
    .line 694
    return-void

    .line 695
    :pswitch_2b6
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->baselineNeededFor(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->baselineToBaseline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 710
    .line 711
    .line 712
    :cond_2c7
    :goto_2c7
    return-void

    .line 713
    :sswitch_data_2c8
    .sparse-switch
        -0x669119bb -> :sswitch_c8
        -0x594af961 -> :sswitch_bd
        -0x527265d5 -> :sswitch_b4
        0x188db -> :sswitch_ab
        0x1c155 -> :sswitch_a2
        0x32a007 -> :sswitch_99
        0x677c21c -> :sswitch_90
        0x68ac462 -> :sswitch_87
    .end sparse-switch

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
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
    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_184
        :pswitch_162
        :pswitch_123
        :pswitch_120
        :pswitch_e3
        :pswitch_e1
        :pswitch_df
        :pswitch_d7
    .end packed-switch

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :sswitch_data_2fe
    .sparse-switch
        -0x669119bb -> :sswitch_101
        -0x527265d5 -> :sswitch_f8
        0x1c155 -> :sswitch_ef
    .end sparse-switch

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    :pswitch_data_30c
    .packed-switch 0x0
        :pswitch_115
        :pswitch_111
        :pswitch_10d
    .end packed-switch

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    :sswitch_data_316
    .sparse-switch
        -0x669119bb -> :sswitch_141
        -0x527265d5 -> :sswitch_138
        0x1c155 -> :sswitch_12f
    .end sparse-switch

    .line 792
    .line 793
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
    :pswitch_data_324
    .packed-switch 0x0
        :pswitch_156
        :pswitch_151
        :pswitch_14d
    .end packed-switch

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    :sswitch_data_32e
    .sparse-switch
        -0x669119bb -> :sswitch_1a4
        -0x527265d5 -> :sswitch_19b
        0x1c155 -> :sswitch_192
    .end sparse-switch

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :pswitch_data_33c
    .packed-switch 0x0
        :pswitch_1c6
        :pswitch_1bb
        :pswitch_1b0
    .end packed-switch

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    :sswitch_data_346
    .sparse-switch
        0x188db -> :sswitch_207
        0x32a007 -> :sswitch_1fd
        0x677c21c -> :sswitch_1f3
        0x68ac462 -> :sswitch_1e9
    .end sparse-switch

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
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    :pswitch_data_358
    .packed-switch 0x0
        :pswitch_21a
        :pswitch_213
        :pswitch_218
        :pswitch_215
    .end packed-switch

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :sswitch_data_364
    .sparse-switch
        -0x669119bb -> :sswitch_28e
        -0x527265d5 -> :sswitch_284
        0x188db -> :sswitch_27a
        0x1c155 -> :sswitch_271
        0x68ac462 -> :sswitch_268
    .end sparse-switch

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    :pswitch_data_37a
    .packed-switch 0x0
        :pswitch_2b6
        :pswitch_2b2
        :pswitch_2a8
        :pswitch_2a4
        :pswitch_29a
    .end packed-switch
.end method

.method public static parseConstraintSets(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 15

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_68

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v3, v1, :cond_68

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "Extends"

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-eqz v6, :cond_60

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_60

    .line 41
    .line 42
    invoke-interface {p0, v6}, Landroidx/constraintlayout/core/state/CoreMotionScene;->getConstraintSet(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-nez v6, :cond_30

    .line 47
    .line 48
    goto :goto_d

    .line 49
    :cond_30
    invoke-static {v6}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-nez v7, :cond_3b

    .line 58
    .line 59
    goto :goto_d

    .line 60
    :cond_3b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    move v9, v2

    .line 65
    :cond_40
    :goto_40
    if-ge v9, v8, :cond_58

    .line 66
    .line 67
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    check-cast v10, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    instance-of v12, v11, Landroidx/constraintlayout/core/parser/CLObject;

    .line 80
    .line 81
    if-eqz v12, :cond_40

    .line 82
    .line 83
    check-cast v11, Landroidx/constraintlayout/core/parser/CLObject;

    .line 84
    .line 85
    invoke-static {v6, v10, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->override(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 86
    .line 87
    .line 88
    goto :goto_40

    .line 89
    :cond_58
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {p0, v4, v5}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setConstraintSetContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_d

    .line 97
    :cond_60
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {p0, v4, v5}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setConstraintSetContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_d

    .line 105
    :cond_68
    :goto_68
    return-void
.end method

.method public static parseCustomProperties(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/parser/CLContainer;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_7

    .line 6
    .line 7
    goto :goto_44

    .line 8
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_e

    .line 13
    .line 14
    goto :goto_44

    .line 15
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :cond_13
    :goto_13
    if-ge v1, v0, :cond_44

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 35
    .line 36
    if-eqz v4, :cond_2d

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->addCustomFloat(Ljava/lang/String;F)V

    .line 43
    .line 44
    .line 45
    goto :goto_13

    .line 46
    :cond_2d
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLString;

    .line 47
    .line 48
    if-eqz v4, :cond_13

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    const-wide/16 v5, -0x1

    .line 59
    .line 60
    cmp-long v5, v3, v5

    .line 61
    .line 62
    if-eqz v5, :cond_13

    .line 63
    .line 64
    long-to-int v3, v3

    .line 65
    invoke-virtual {p1, v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->addCustomColor(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    goto :goto_13

    .line 69
    :cond_44
    :goto_44
    return-void
.end method

.method public static parseDesignElementsJSON(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    goto/16 :goto_8f

    .line 12
    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_8f

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v2, "Design"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_29

    .line 40
    .line 41
    goto :goto_8f

    .line 42
    :cond_29
    instance-of v2, p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 43
    .line 44
    if-nez v2, :cond_2e

    .line 45
    .line 46
    goto :goto_8f

    .line 47
    :cond_2e
    check-cast p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move v3, v1

    .line 54
    :goto_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ge v3, v4, :cond_8f

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 71
    .line 72
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 73
    .line 74
    const-string v7, "element found "

    .line 75
    .line 76
    const-string v8, ""

    .line 77
    .line 78
    invoke-static {v7, v4, v8}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    new-array v7, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {v6, v4, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 85
    .line 86
    .line 87
    const-string v4, "type"

    .line 88
    .line 89
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    if-eqz v4, :cond_8c

    .line 94
    .line 95
    new-instance v6, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    move v8, v1

    .line 105
    :goto_68
    if-ge v8, v7, :cond_84

    .line 106
    .line 107
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroidx/constraintlayout/core/parser/CLKey;

    .line 112
    .line 113
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    if-eqz v9, :cond_81

    .line 126
    .line 127
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_81
    add-int/lit8 v8, v8, 0x1

    .line 131
    .line 132
    goto :goto_68

    .line 133
    :cond_84
    new-instance v5, Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;

    .line 134
    .line 135
    invoke-direct {v5, v0, v4, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser$DesignElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_35

    .line 144
    :cond_8f
    :goto_8f
    return-void
.end method

.method public static parseDimension(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/CorePixelDp;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Landroidx/constraintlayout/core/state/Dimension;->createFixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLString;

    .line 11
    .line 12
    if-eqz v2, :cond_16

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimensionMode(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 24
    .line 25
    if-eqz v2, :cond_2f

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-interface {p3, p0}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createFixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    instance-of p0, v0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 49
    .line 50
    if-eqz p0, :cond_97

    .line 51
    .line 52
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 53
    .line 54
    const-string p0, "value"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_41

    .line 61
    .line 62
    invoke-static {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseDimensionMode(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_41
    const-string p0, "min"

    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_6c

    .line 73
    .line 74
    instance-of p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 75
    .line 76
    if-eqz p1, :cond_63

    .line 77
    .line 78
    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-interface {p3, p0}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->min(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 97
    .line 98
    .line 99
    goto :goto_6c

    .line 100
    :cond_63
    instance-of p0, p0, Landroidx/constraintlayout/core/parser/CLString;

    .line 101
    .line 102
    if-eqz p0, :cond_6c

    .line 103
    .line 104
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->min(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 107
    .line 108
    .line 109
    :cond_6c
    :goto_6c
    const-string p0, "max"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-eqz p0, :cond_97

    .line 116
    .line 117
    instance-of p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 118
    .line 119
    if-eqz p1, :cond_8e

    .line 120
    .line 121
    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->getFloat()F

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-interface {p3, p0}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->max(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 140
    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_8e
    instance-of p0, p0, Landroidx/constraintlayout/core/parser/CLString;

    .line 144
    .line 145
    if-eqz p0, :cond_97

    .line 146
    .line 147
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->max(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 150
    .line 151
    .line 152
    :cond_97
    return-object v1
.end method

.method public static parseDimensionMode(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->createFixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    sparse-switch v2, :sswitch_data_92

    .line 15
    .line 16
    .line 17
    goto :goto_3c

    .line 18
    :sswitch_11
    const-string v2, "wrap"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1a

    .line 25
    .line 26
    goto :goto_3c

    .line 27
    :cond_1a
    const/4 v3, 0x3

    .line 28
    goto :goto_3c

    .line 29
    :sswitch_1c
    const-string v2, "spread"

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_25

    .line 36
    .line 37
    goto :goto_3c

    .line 38
    :cond_25
    const/4 v3, 0x2

    .line 39
    goto :goto_3c

    .line 40
    :sswitch_27
    const-string v2, "parent"

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_30

    .line 47
    .line 48
    goto :goto_3c

    .line 49
    :cond_30
    const/4 v3, 0x1

    .line 50
    goto :goto_3c

    .line 51
    :sswitch_32
    const-string v2, "preferWrap"

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3b

    .line 58
    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v3, v0

    .line 61
    :goto_3c
    packed-switch v3, :pswitch_data_a4

    .line 62
    .line 63
    .line 64
    const-string v2, "%"

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_65

    .line 71
    .line 72
    const/16 v1, 0x25

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    const/high16 v1, 0x42c80000    # 100.0f

    .line 87
    .line 88
    div-float/2addr p0, v1

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1, p0}, Landroidx/constraintlayout/core/state/Dimension;->createPercent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_65
    const-string v0, ":"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_78

    .line 109
    .line 110
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createRatio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_78
    return-object v1

    .line 122
    :pswitch_79
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createWrap()Landroidx/constraintlayout/core/state/Dimension;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_7e
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createSuggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    return-object p0

    .line 134
    :pswitch_85
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createParent()Landroidx/constraintlayout/core/state/Dimension;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_8a
    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->createSuggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    nop

    .line 147
    :sswitch_data_92
    .sparse-switch
        -0x57099186 -> :sswitch_32
        -0x3b54f756 -> :sswitch_27
        -0x35630e8d -> :sswitch_1c
        0x37d04a -> :sswitch_11
    .end sparse-switch

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
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_85
        :pswitch_7e
        :pswitch_79
    .end packed-switch
.end method

.method private static parseFlowType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/high16 v3, 0x3f000000    # 0.5f

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object/from16 v6, p0

    .line 15
    .line 16
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const/16 v7, 0x76

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    if-ne v6, v7, :cond_1a

    .line 24
    .line 25
    move v6, v8

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v6, v5

    .line 28
    :goto_1b
    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/core/state/State;->getFlow(Ljava/lang/Object;Z)Landroidx/constraintlayout/core/state/helpers/FlowReference;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    move v10, v5

    .line 41
    :goto_28
    if-ge v10, v9, :cond_46b

    .line 42
    .line 43
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    add-int/lit8 v10, v10, 0x1

    .line 48
    .line 49
    check-cast v11, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    const/4 v15, 0x3

    .line 59
    move/from16 v16, v3

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    sparse-switch v12, :sswitch_data_46c

    .line 63
    .line 64
    .line 65
    :goto_40
    const/4 v12, -0x1

    .line 66
    goto/16 :goto_de

    .line 67
    .line 68
    :sswitch_43
    const-string v12, "wrap"

    .line 69
    .line 70
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-nez v12, :cond_4c

    .line 75
    .line 76
    goto :goto_40

    .line 77
    :cond_4c
    const/16 v12, 0xc

    .line 78
    .line 79
    goto/16 :goto_de

    .line 80
    .line 81
    :sswitch_50
    const-string v12, "vGap"

    .line 82
    .line 83
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    if-nez v12, :cond_59

    .line 88
    .line 89
    goto :goto_40

    .line 90
    :cond_59
    const/16 v12, 0xb

    .line 91
    .line 92
    goto/16 :goto_de

    .line 93
    .line 94
    :sswitch_5d
    const-string v12, "type"

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-nez v12, :cond_66

    .line 101
    .line 102
    goto :goto_40

    .line 103
    :cond_66
    const/16 v12, 0xa

    .line 104
    .line 105
    goto/16 :goto_de

    .line 106
    .line 107
    :sswitch_6a
    const-string v12, "hGap"

    .line 108
    .line 109
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-nez v12, :cond_73

    .line 114
    .line 115
    goto :goto_40

    .line 116
    :cond_73
    const/16 v12, 0x9

    .line 117
    .line 118
    goto/16 :goto_de

    .line 119
    .line 120
    :sswitch_77
    const-string v12, "maxElement"

    .line 121
    .line 122
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-nez v12, :cond_80

    .line 127
    .line 128
    goto :goto_40

    .line 129
    :cond_80
    const/16 v12, 0x8

    .line 130
    .line 131
    goto/16 :goto_de

    .line 132
    .line 133
    :sswitch_84
    const-string v12, "contains"

    .line 134
    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-nez v12, :cond_8d

    .line 140
    .line 141
    goto :goto_40

    .line 142
    :cond_8d
    const/4 v12, 0x7

    .line 143
    goto :goto_de

    .line 144
    :sswitch_8f
    const-string v12, "vFlowBias"

    .line 145
    .line 146
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-nez v12, :cond_98

    .line 151
    .line 152
    goto :goto_40

    .line 153
    :cond_98
    const/4 v12, 0x6

    .line 154
    goto :goto_de

    .line 155
    :sswitch_9a
    const-string v12, "padding"

    .line 156
    .line 157
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-nez v12, :cond_a3

    .line 162
    .line 163
    goto :goto_40

    .line 164
    :cond_a3
    const/4 v12, 0x5

    .line 165
    goto :goto_de

    .line 166
    :sswitch_a5
    const-string v12, "vStyle"

    .line 167
    .line 168
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v12

    .line 172
    if-nez v12, :cond_ae

    .line 173
    .line 174
    goto :goto_40

    .line 175
    :cond_ae
    const/4 v12, 0x4

    .line 176
    goto :goto_de

    .line 177
    :sswitch_b0
    const-string v12, "vAlign"

    .line 178
    .line 179
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-nez v12, :cond_b9

    .line 184
    .line 185
    goto :goto_40

    .line 186
    :cond_b9
    move v12, v15

    .line 187
    goto :goto_de

    .line 188
    :sswitch_bb
    const-string v12, "hFlowBias"

    .line 189
    .line 190
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-nez v12, :cond_c5

    .line 195
    .line 196
    goto/16 :goto_40

    .line 197
    .line 198
    :cond_c5
    move v12, v3

    .line 199
    goto :goto_de

    .line 200
    :sswitch_c7
    const-string v12, "hStyle"

    .line 201
    .line 202
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    if-nez v12, :cond_d1

    .line 207
    .line 208
    goto/16 :goto_40

    .line 209
    .line 210
    :cond_d1
    move v12, v8

    .line 211
    goto :goto_de

    .line 212
    :sswitch_d3
    const-string v12, "hAlign"

    .line 213
    .line 214
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    if-nez v12, :cond_dd

    .line 219
    .line 220
    goto/16 :goto_40

    .line 221
    .line 222
    :cond_dd
    move v12, v5

    .line 223
    :goto_de
    const-string v14, ""

    .line 224
    .line 225
    packed-switch v12, :pswitch_data_4a2

    .line 226
    .line 227
    .line 228
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object/from16 v12, p3

    .line 233
    .line 234
    invoke-static {v0, v12, v3, v2, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_ec
    :goto_ec
    move v11, v8

    .line 238
    move v8, v5

    .line 239
    goto/16 :goto_465

    .line 240
    .line 241
    :pswitch_f0
    move-object/from16 v12, p3

    .line 242
    .line 243
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3}, Landroidx/constraintlayout/core/state/State$Wrap;->getValueByString(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setWrapMode(I)V

    .line 256
    .line 257
    .line 258
    goto :goto_ec

    .line 259
    :pswitch_102
    move-object/from16 v12, p3

    .line 260
    .line 261
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalGap(I)V

    .line 270
    .line 271
    .line 272
    goto :goto_ec

    .line 273
    :pswitch_110
    move-object/from16 v12, p3

    .line 274
    .line 275
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    const-string v11, "hFlow"

    .line 284
    .line 285
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_126

    .line 290
    .line 291
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setOrientation(I)V

    .line 292
    .line 293
    .line 294
    goto :goto_ec

    .line 295
    :cond_126
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setOrientation(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_ec

    .line 299
    :pswitch_12a
    move-object/from16 v12, p3

    .line 300
    .line 301
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalGap(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_ec

    .line 313
    :pswitch_138
    move-object/from16 v12, p3

    .line 314
    .line 315
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setMaxElementsWrap(I)V

    .line 324
    .line 325
    .line 326
    goto :goto_ec

    .line 327
    :pswitch_146
    move-object/from16 v12, p3

    .line 328
    .line 329
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 330
    .line 331
    .line 332
    move-result-object v11

    .line 333
    instance-of v14, v11, Landroidx/constraintlayout/core/parser/CLArray;

    .line 334
    .line 335
    if-eqz v14, :cond_1d5

    .line 336
    .line 337
    move-object v14, v11

    .line 338
    check-cast v14, Landroidx/constraintlayout/core/parser/CLArray;

    .line 339
    .line 340
    invoke-virtual {v14}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    if-ge v13, v8, :cond_15b

    .line 345
    .line 346
    goto/16 :goto_1d5

    .line 347
    .line 348
    :cond_15b
    move v11, v5

    .line 349
    :goto_15c
    invoke-virtual {v14}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    if-ge v11, v13, :cond_ec

    .line 354
    .line 355
    invoke-virtual {v14, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    instance-of v8, v13, Landroidx/constraintlayout/core/parser/CLArray;

    .line 360
    .line 361
    if-eqz v8, :cond_1c3

    .line 362
    .line 363
    check-cast v13, Landroidx/constraintlayout/core/parser/CLArray;

    .line 364
    .line 365
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-lez v8, :cond_1ce

    .line 370
    .line 371
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 384
    .line 385
    if-eq v5, v3, :cond_1b7

    .line 386
    .line 387
    if-eq v5, v15, :cond_1a6

    .line 388
    .line 389
    const/4 v15, 0x4

    .line 390
    if-eq v5, v15, :cond_18c

    .line 391
    .line 392
    move/from16 v3, v17

    .line 393
    .line 394
    move v5, v3

    .line 395
    :goto_18a
    move v15, v5

    .line 396
    goto :goto_1bf

    .line 397
    :cond_18c
    const/4 v5, 0x1

    .line 398
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 399
    .line 400
    .line 401
    move-result v17

    .line 402
    invoke-virtual {v13, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 403
    .line 404
    .line 405
    move-result v15

    .line 406
    invoke-static {v0, v15}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    const/4 v3, 0x3

    .line 411
    invoke-virtual {v13, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    invoke-static {v0, v13}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    move v5, v3

    .line 420
    :goto_1a3
    move/from16 v3, v17

    .line 421
    .line 422
    goto :goto_1bf

    .line 423
    :cond_1a6
    const/4 v5, 0x1

    .line 424
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 425
    .line 426
    .line 427
    move-result v17

    .line 428
    const/4 v3, 0x2

    .line 429
    invoke-virtual {v13, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 430
    .line 431
    .line 432
    move-result v13

    .line 433
    invoke-static {v0, v13}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    move v5, v3

    .line 438
    move v15, v5

    .line 439
    goto :goto_1a3

    .line 440
    :cond_1b7
    const/4 v5, 0x1

    .line 441
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    move/from16 v5, v17

    .line 446
    .line 447
    goto :goto_18a

    .line 448
    :goto_1bf
    invoke-virtual {v6, v8, v3, v15, v5}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->addFlowElement(Ljava/lang/String;FFF)V

    .line 449
    .line 450
    .line 451
    goto :goto_1ce

    .line 452
    :cond_1c3
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 461
    .line 462
    .line 463
    :cond_1ce
    :goto_1ce
    add-int/lit8 v11, v11, 0x1

    .line 464
    .line 465
    const/4 v3, 0x2

    .line 466
    const/4 v5, 0x0

    .line 467
    const/4 v8, 0x1

    .line 468
    const/4 v15, 0x3

    .line 469
    goto :goto_15c

    .line 470
    :cond_1d5
    :goto_1d5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 471
    .line 472
    const-string v2, " contains should be an array \""

    .line 473
    .line 474
    invoke-static {v1, v2}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v2, "\""

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    return-void

    .line 498
    :pswitch_1f1
    move-object/from16 v12, p3

    .line 499
    .line 500
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    instance-of v5, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 505
    .line 506
    if-eqz v5, :cond_228

    .line 507
    .line 508
    move-object v5, v3

    .line 509
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 510
    .line 511
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    const/4 v11, 0x1

    .line 516
    if-le v8, v11, :cond_228

    .line 517
    .line 518
    const/4 v8, 0x0

    .line 519
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 532
    .line 533
    .line 534
    move-result-object v8

    .line 535
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 536
    .line 537
    .line 538
    move-result v11

    .line 539
    const/4 v13, 0x2

    .line 540
    if-le v11, v13, :cond_226

    .line 541
    .line 542
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    goto :goto_232

    .line 551
    :cond_226
    move-object v5, v4

    .line 552
    goto :goto_232

    .line 553
    :cond_228
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 554
    .line 555
    .line 556
    move-result v3

    .line 557
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 558
    .line 559
    .line 560
    move-result-object v8

    .line 561
    move-object v3, v4

    .line 562
    move-object v5, v3

    .line 563
    :goto_232
    :try_start_232
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 564
    .line 565
    .line 566
    move-result v8

    .line 567
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 571
    .line 572
    .line 573
    move-result v8

    .line 574
    cmpl-float v8, v8, v16

    .line 575
    .line 576
    if-eqz v8, :cond_248

    .line 577
    .line 578
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstVerticalBias(F)V

    .line 583
    .line 584
    .line 585
    :cond_248
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    cmpl-float v3, v3, v16

    .line 590
    .line 591
    if-eqz v3, :cond_257

    .line 592
    .line 593
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastVerticalBias(F)V
    :try_end_257
    .catch Ljava/lang/NumberFormatException; {:try_start_232 .. :try_end_257} :catch_257

    .line 598
    .line 599
    .line 600
    :catch_257
    :cond_257
    :goto_257
    const/4 v8, 0x0

    .line 601
    :goto_258
    const/4 v11, 0x1

    .line 602
    goto/16 :goto_465

    .line 603
    .line 604
    :pswitch_25b
    move-object/from16 v12, p3

    .line 605
    .line 606
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    instance-of v5, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 611
    .line 612
    if-eqz v5, :cond_294

    .line 613
    .line 614
    move-object v5, v3

    .line 615
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 616
    .line 617
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    const/4 v11, 0x1

    .line 622
    if-le v8, v11, :cond_294

    .line 623
    .line 624
    const/4 v8, 0x0

    .line 625
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 626
    .line 627
    .line 628
    move-result v13

    .line 629
    int-to-float v8, v13

    .line 630
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 631
    .line 632
    .line 633
    move-result v13

    .line 634
    int-to-float v11, v13

    .line 635
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 636
    .line 637
    .line 638
    move-result v13

    .line 639
    const/4 v14, 0x2

    .line 640
    if-le v13, v14, :cond_291

    .line 641
    .line 642
    invoke-virtual {v5, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    int-to-float v5, v5

    .line 647
    :try_start_286
    check-cast v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 648
    .line 649
    const/4 v13, 0x3

    .line 650
    invoke-virtual {v3, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 651
    .line 652
    .line 653
    move-result v3
    :try_end_28d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_286 .. :try_end_28d} :catch_28f

    .line 654
    int-to-float v3, v3

    .line 655
    goto :goto_29c

    .line 656
    :catch_28f
    const/4 v3, 0x0

    .line 657
    goto :goto_29c

    .line 658
    :cond_291
    move v5, v8

    .line 659
    move v3, v11

    .line 660
    goto :goto_29c

    .line 661
    :cond_294
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    int-to-float v8, v3

    .line 666
    move v3, v8

    .line 667
    move v5, v3

    .line 668
    move v11, v5

    .line 669
    :goto_29c
    invoke-static {v0, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 670
    .line 671
    .line 672
    move-result v8

    .line 673
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 674
    .line 675
    .line 676
    move-result v8

    .line 677
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingLeft(I)V

    .line 678
    .line 679
    .line 680
    invoke-static {v0, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingTop(I)V

    .line 689
    .line 690
    .line 691
    invoke-static {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 696
    .line 697
    .line 698
    move-result v5

    .line 699
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingRight(I)V

    .line 700
    .line 701
    .line 702
    invoke-static {v0, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setPaddingBottom(I)V

    .line 711
    .line 712
    .line 713
    goto :goto_257

    .line 714
    :pswitch_2c9
    move-object/from16 v12, p3

    .line 715
    .line 716
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    instance-of v5, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 721
    .line 722
    if-eqz v5, :cond_2f4

    .line 723
    .line 724
    move-object v5, v3

    .line 725
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 726
    .line 727
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 728
    .line 729
    .line 730
    move-result v8

    .line 731
    const/4 v11, 0x1

    .line 732
    if-le v8, v11, :cond_2f4

    .line 733
    .line 734
    const/4 v8, 0x0

    .line 735
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v8

    .line 743
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 744
    .line 745
    .line 746
    move-result v11

    .line 747
    const/4 v13, 0x2

    .line 748
    if-le v11, v13, :cond_2f2

    .line 749
    .line 750
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    goto :goto_2fa

    .line 755
    :cond_2f2
    move-object v5, v14

    .line 756
    goto :goto_2fa

    .line 757
    :cond_2f4
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v8

    .line 761
    move-object v3, v14

    .line 762
    move-object v5, v3

    .line 763
    :goto_2fa
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v11

    .line 767
    if-nez v11, :cond_307

    .line 768
    .line 769
    invoke-static {v8}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    move-result v8

    .line 773
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalStyle(I)V

    .line 774
    .line 775
    .line 776
    :cond_307
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v8

    .line 780
    if-nez v8, :cond_314

    .line 781
    .line 782
    invoke-static {v3}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstVerticalStyle(I)V

    .line 787
    .line 788
    .line 789
    :cond_314
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    if-nez v3, :cond_257

    .line 794
    .line 795
    invoke-static {v5}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move-result v3

    .line 799
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastVerticalStyle(I)V

    .line 800
    .line 801
    .line 802
    goto/16 :goto_257

    .line 803
    .line 804
    :pswitch_323
    move-object/from16 v12, p3

    .line 805
    .line 806
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 818
    .line 819
    .line 820
    move-result v5

    .line 821
    sparse-switch v5, :sswitch_data_4c0

    .line 822
    .line 823
    .line 824
    :goto_337
    const/4 v14, -0x1

    .line 825
    goto :goto_359

    .line 826
    :sswitch_339
    const-string v5, "top"

    .line 827
    .line 828
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    if-nez v3, :cond_342

    .line 833
    .line 834
    goto :goto_337

    .line 835
    :cond_342
    const/4 v14, 0x2

    .line 836
    goto :goto_359

    .line 837
    :sswitch_344
    const-string v5, "bottom"

    .line 838
    .line 839
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    if-nez v3, :cond_34d

    .line 844
    .line 845
    goto :goto_337

    .line 846
    :cond_34d
    const/4 v14, 0x1

    .line 847
    goto :goto_359

    .line 848
    :sswitch_34f
    const-string v5, "baseline"

    .line 849
    .line 850
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-nez v3, :cond_358

    .line 855
    .line 856
    goto :goto_337

    .line 857
    :cond_358
    const/4 v14, 0x0

    .line 858
    :goto_359
    packed-switch v14, :pswitch_data_4ce

    .line 859
    .line 860
    .line 861
    const/4 v13, 0x2

    .line 862
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 863
    .line 864
    .line 865
    :goto_360
    const/4 v5, 0x1

    .line 866
    goto :goto_371

    .line 867
    :pswitch_362
    const/4 v8, 0x0

    .line 868
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 869
    .line 870
    .line 871
    goto :goto_360

    .line 872
    :pswitch_367
    const/4 v5, 0x1

    .line 873
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 874
    .line 875
    .line 876
    goto :goto_371

    .line 877
    :pswitch_36c
    const/4 v5, 0x1

    .line 878
    const/4 v13, 0x3

    .line 879
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setVerticalAlign(I)V

    .line 880
    .line 881
    .line 882
    :goto_371
    move v11, v5

    .line 883
    const/4 v8, 0x0

    .line 884
    goto/16 :goto_465

    .line 885
    .line 886
    :pswitch_375
    move-object/from16 v12, p3

    .line 887
    .line 888
    move v5, v8

    .line 889
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    instance-of v8, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 894
    .line 895
    if-eqz v8, :cond_3ac

    .line 896
    .line 897
    move-object v8, v3

    .line 898
    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    .line 899
    .line 900
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 901
    .line 902
    .line 903
    move-result v11

    .line 904
    if-le v11, v5, :cond_3ac

    .line 905
    .line 906
    const/4 v11, 0x0

    .line 907
    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 908
    .line 909
    .line 910
    move-result v3

    .line 911
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 916
    .line 917
    .line 918
    move-result v11

    .line 919
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 924
    .line 925
    .line 926
    move-result v11

    .line 927
    const/4 v13, 0x2

    .line 928
    if-le v11, v13, :cond_3aa

    .line 929
    .line 930
    invoke-virtual {v8, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 931
    .line 932
    .line 933
    move-result v8

    .line 934
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 935
    .line 936
    .line 937
    move-result-object v8

    .line 938
    goto :goto_3b6

    .line 939
    :cond_3aa
    move-object v8, v4

    .line 940
    goto :goto_3b6

    .line 941
    :cond_3ac
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 946
    .line 947
    .line 948
    move-result-object v5

    .line 949
    move-object v3, v4

    .line 950
    move-object v8, v3

    .line 951
    :goto_3b6
    :try_start_3b6
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 952
    .line 953
    .line 954
    move-result v5

    .line 955
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 959
    .line 960
    .line 961
    move-result v5

    .line 962
    cmpl-float v5, v5, v16

    .line 963
    .line 964
    if-eqz v5, :cond_3cc

    .line 965
    .line 966
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 967
    .line 968
    .line 969
    move-result v3

    .line 970
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstHorizontalBias(F)V

    .line 971
    .line 972
    .line 973
    :cond_3cc
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    cmpl-float v3, v3, v16

    .line 978
    .line 979
    if-eqz v3, :cond_257

    .line 980
    .line 981
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 982
    .line 983
    .line 984
    move-result v3

    .line 985
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastHorizontalBias(F)V
    :try_end_3db
    .catch Ljava/lang/NumberFormatException; {:try_start_3b6 .. :try_end_3db} :catch_257

    .line 986
    .line 987
    .line 988
    goto/16 :goto_257

    .line 989
    .line 990
    :pswitch_3dd
    move-object/from16 v12, p3

    .line 991
    .line 992
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    instance-of v5, v3, Landroidx/constraintlayout/core/parser/CLArray;

    .line 997
    .line 998
    if-eqz v5, :cond_408

    .line 999
    .line 1000
    move-object v5, v3

    .line 1001
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 1002
    .line 1003
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 1004
    .line 1005
    .line 1006
    move-result v8

    .line 1007
    const/4 v11, 0x1

    .line 1008
    if-le v8, v11, :cond_408

    .line 1009
    .line 1010
    const/4 v8, 0x0

    .line 1011
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v8

    .line 1019
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 1020
    .line 1021
    .line 1022
    move-result v11

    .line 1023
    const/4 v13, 0x2

    .line 1024
    if-le v11, v13, :cond_406

    .line 1025
    .line 1026
    invoke-virtual {v5, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v5

    .line 1030
    goto :goto_40e

    .line 1031
    :cond_406
    move-object v5, v14

    .line 1032
    goto :goto_40e

    .line 1033
    :cond_408
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v8

    .line 1037
    move-object v3, v14

    .line 1038
    move-object v5, v3

    .line 1039
    :goto_40e
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v11

    .line 1043
    if-nez v11, :cond_41b

    .line 1044
    .line 1045
    invoke-static {v8}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    move-result v8

    .line 1049
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalStyle(I)V

    .line 1050
    .line 1051
    .line 1052
    :cond_41b
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v8

    .line 1056
    if-nez v8, :cond_428

    .line 1057
    .line 1058
    invoke-static {v3}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    move-result v3

    .line 1062
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setFirstHorizontalStyle(I)V

    .line 1063
    .line 1064
    .line 1065
    :cond_428
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v3

    .line 1069
    if-nez v3, :cond_257

    .line 1070
    .line 1071
    invoke-static {v5}, Landroidx/constraintlayout/core/state/State$Chain;->getValueByString(Ljava/lang/String;)I

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setLastHorizontalStyle(I)V

    .line 1076
    .line 1077
    .line 1078
    goto/16 :goto_257

    .line 1079
    .line 1080
    :pswitch_437
    move-object/from16 v12, p3

    .line 1081
    .line 1082
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v3

    .line 1086
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    .line 1092
    .line 1093
    const-string v5, "end"

    .line 1094
    .line 1095
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v5

    .line 1099
    if-nez v5, :cond_460

    .line 1100
    .line 1101
    const-string v5, "start"

    .line 1102
    .line 1103
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v3

    .line 1107
    if-nez v3, :cond_45a

    .line 1108
    .line 1109
    const/4 v13, 0x2

    .line 1110
    invoke-virtual {v6, v13}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalAlign(I)V

    .line 1111
    .line 1112
    .line 1113
    goto/16 :goto_257

    .line 1114
    .line 1115
    :cond_45a
    const/4 v8, 0x0

    .line 1116
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalAlign(I)V

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_258

    .line 1120
    .line 1121
    :cond_460
    const/4 v8, 0x0

    .line 1122
    const/4 v11, 0x1

    .line 1123
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;->setHorizontalAlign(I)V

    .line 1124
    .line 1125
    .line 1126
    :goto_465
    move v5, v8

    .line 1127
    move v8, v11

    .line 1128
    move/from16 v3, v16

    .line 1129
    .line 1130
    goto/16 :goto_28

    .line 1131
    .line 1132
    :cond_46b
    return-void

    .line 1133
    :sswitch_data_46c
    .sparse-switch
        -0x4ac15883 -> :sswitch_d3
        -0x49bfd1d7 -> :sswitch_c7
        -0x47693271 -> :sswitch_bb
        -0x32dd7fd1 -> :sswitch_b0
        -0x31dbf925 -> :sswitch_a5
        -0x300fc3ef -> :sswitch_9a
        -0x2bab2063 -> :sswitch_8f
        -0x21d289e1 -> :sswitch_84
        -0x1d240708 -> :sswitch_77
        0x305d4e -> :sswitch_6a
        0x368f3a -> :sswitch_5d
        0x36ba80 -> :sswitch_50
        0x37d04a -> :sswitch_43
    .end sparse-switch

    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    :pswitch_data_4a2
    .packed-switch 0x0
        :pswitch_437
        :pswitch_3dd
        :pswitch_375
        :pswitch_323
        :pswitch_2c9
        :pswitch_25b
        :pswitch_1f1
        :pswitch_146
        :pswitch_138
        :pswitch_12a
        :pswitch_110
        :pswitch_102
        :pswitch_f0
    .end packed-switch

    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    :sswitch_data_4c0
    .sparse-switch
        -0x669119bb -> :sswitch_34f
        -0x527265d5 -> :sswitch_344
        0x1c155 -> :sswitch_339
    .end sparse-switch

    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    :pswitch_data_4ce
    .packed-switch 0x0
        :pswitch_36c
        :pswitch_367
        :pswitch_362
    .end packed-switch
.end method

.method public static parseGenerate(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 13

    .line 1
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_3b

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :cond_d
    if-ge v3, v1, :cond_3b

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    check-cast v4, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_d

    .line 33
    .line 34
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 35
    .line 36
    if-eqz v6, :cond_d

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    move v7, v2

    .line 43
    :goto_2a
    if-ge v7, v6, :cond_d

    .line 44
    .line 45
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    check-cast v8, Ljava/lang/String;

    .line 52
    .line 53
    move-object v9, v5

    .line 54
    check-cast v9, Landroidx/constraintlayout/core/parser/CLObject;

    .line 55
    .line 56
    invoke-static {p0, p1, v8, v9}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2a

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static parseGridType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 16

    .line 1
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/core/state/State;->getGrid(Ljava/lang/Object;Ljava/lang/String;)Landroidx/constraintlayout/core/state/helpers/GridReference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p4}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_e
    :goto_e
    if-ge v3, v1, :cond_230

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x3

    .line 33
    const/4 v7, 0x2

    .line 34
    const/4 v8, 0x1

    .line 35
    const/4 v9, -0x1

    .line 36
    sparse-switch v5, :sswitch_data_232

    .line 37
    .line 38
    .line 39
    goto/16 :goto_b7

    .line 40
    .line 41
    :sswitch_28
    const-string v5, "columnWeights"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_32

    .line 48
    .line 49
    goto/16 :goto_b7

    .line 50
    .line 51
    :cond_32
    const/16 v9, 0xb

    .line 52
    .line 53
    goto/16 :goto_b7

    .line 54
    .line 55
    :sswitch_36
    const-string v5, "columns"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_40

    .line 62
    .line 63
    goto/16 :goto_b7

    .line 64
    .line 65
    :cond_40
    const/16 v9, 0xa

    .line 66
    .line 67
    goto/16 :goto_b7

    .line 68
    .line 69
    :sswitch_44
    const-string v5, "rowWeights"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_4e

    .line 76
    .line 77
    goto/16 :goto_b7

    .line 78
    .line 79
    :cond_4e
    const/16 v9, 0x9

    .line 80
    .line 81
    goto/16 :goto_b7

    .line 82
    .line 83
    :sswitch_52
    const-string v5, "spans"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_5c

    .line 90
    .line 91
    goto/16 :goto_b7

    .line 92
    .line 93
    :cond_5c
    const/16 v9, 0x8

    .line 94
    .line 95
    goto/16 :goto_b7

    .line 96
    .line 97
    :sswitch_60
    const-string v5, "skips"

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_69

    .line 104
    .line 105
    goto :goto_b7

    .line 106
    :cond_69
    const/4 v9, 0x7

    .line 107
    goto :goto_b7

    .line 108
    :sswitch_6b
    const-string v5, "flags"

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_74

    .line 115
    .line 116
    goto :goto_b7

    .line 117
    :cond_74
    const/4 v9, 0x6

    .line 118
    goto :goto_b7

    .line 119
    :sswitch_76
    const-string v5, "vGap"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_7f

    .line 126
    .line 127
    goto :goto_b7

    .line 128
    :cond_7f
    const/4 v9, 0x5

    .line 129
    goto :goto_b7

    .line 130
    :sswitch_81
    const-string v5, "rows"

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_8a

    .line 137
    .line 138
    goto :goto_b7

    .line 139
    :cond_8a
    const/4 v9, 0x4

    .line 140
    goto :goto_b7

    .line 141
    :sswitch_8c
    const-string v5, "hGap"

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_95

    .line 148
    .line 149
    goto :goto_b7

    .line 150
    :cond_95
    move v9, v6

    .line 151
    goto :goto_b7

    .line 152
    :sswitch_97
    const-string v5, "contains"

    .line 153
    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_a0

    .line 159
    .line 160
    goto :goto_b7

    .line 161
    :cond_a0
    move v9, v7

    .line 162
    goto :goto_b7

    .line 163
    :sswitch_a2
    const-string v5, "padding"

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-nez v5, :cond_ab

    .line 170
    .line 171
    goto :goto_b7

    .line 172
    :cond_ab
    move v9, v8

    .line 173
    goto :goto_b7

    .line 174
    :sswitch_ad
    const-string v5, "orientation"

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-nez v5, :cond_b6

    .line 181
    .line 182
    goto :goto_b7

    .line 183
    :cond_b6
    move v9, v2

    .line 184
    :goto_b7
    const-string v5, ":"

    .line 185
    .line 186
    const-string v10, ","

    .line 187
    .line 188
    packed-switch v9, :pswitch_data_264

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-static {p1, p3, v5, p4, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_e

    .line 199
    .line 200
    :pswitch_c7
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    if-eqz v4, :cond_e

    .line 209
    .line 210
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_e

    .line 215
    .line 216
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setColumnWeights(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_e

    .line 220
    .line 221
    :pswitch_dc
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-lez v4, :cond_e

    .line 230
    .line 231
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setColumnsSet(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_e

    .line 235
    .line 236
    :pswitch_eb
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    if-eqz v4, :cond_e

    .line 245
    .line 246
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    if-eqz v5, :cond_e

    .line 251
    .line 252
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setRowWeights(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_e

    .line 256
    .line 257
    :pswitch_100
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    if-eqz v4, :cond_e

    .line 266
    .line 267
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_e

    .line 272
    .line 273
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setSpans(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_e

    .line 277
    .line 278
    :pswitch_115
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    if-eqz v4, :cond_e

    .line 287
    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_e

    .line 293
    .line 294
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setSkips(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_e

    .line 298
    .line 299
    :pswitch_12a
    const-string v5, ""

    .line 300
    .line 301
    :try_start_12c
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    instance-of v6, v4, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 306
    .line 307
    if-eqz v6, :cond_13b

    .line 308
    .line 309
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    goto :goto_154

    .line 314
    :catch_139
    move-exception v4

    .line 315
    goto :goto_140

    .line 316
    :cond_13b
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v5
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_13f} :catch_139

    .line 320
    goto :goto_153

    .line 321
    :goto_140
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 322
    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    const-string v8, "Error parsing grid flags "

    .line 326
    .line 327
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    :goto_153
    move v4, v2

    .line 341
    :goto_154
    if-eqz v5, :cond_161

    .line 342
    .line 343
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    if-nez v6, :cond_161

    .line 348
    .line 349
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setFlags(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_e

    .line 353
    .line 354
    :cond_161
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setFlags(I)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_e

    .line 358
    .line 359
    :pswitch_166
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    invoke-static {p1, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setVerticalGaps(F)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_e

    .line 375
    .line 376
    :pswitch_177
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    if-lez v4, :cond_e

    .line 385
    .line 386
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setRowsSet(I)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_e

    .line 390
    .line 391
    :pswitch_186
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    invoke-static {p1, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setHorizontalGaps(F)V

    .line 404
    .line 405
    .line 406
    goto/16 :goto_e

    .line 407
    .line 408
    :pswitch_197
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    if-eqz v4, :cond_e

    .line 413
    .line 414
    move v5, v2

    .line 415
    :goto_19e
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    if-ge v5, v6, :cond_e

    .line 420
    .line 421
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/state/HelperReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 438
    .line 439
    .line 440
    add-int/lit8 v5, v5, 0x1

    .line 441
    .line 442
    goto :goto_19e

    .line 443
    :pswitch_1ba
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLArray;

    .line 448
    .line 449
    if-eqz v5, :cond_1ed

    .line 450
    .line 451
    move-object v5, v4

    .line 452
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 453
    .line 454
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 455
    .line 456
    .line 457
    move-result v9

    .line 458
    if-le v9, v8, :cond_1ed

    .line 459
    .line 460
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    int-to-float v9, v9

    .line 465
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    int-to-float v8, v8

    .line 470
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 471
    .line 472
    .line 473
    move-result v10

    .line 474
    if-le v10, v7, :cond_1ea

    .line 475
    .line 476
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    int-to-float v5, v5

    .line 481
    :try_start_1e0
    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    .line 482
    .line 483
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 484
    .line 485
    .line 486
    move-result v4
    :try_end_1e6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e0 .. :try_end_1e6} :catch_1e8

    .line 487
    int-to-float v4, v4

    .line 488
    goto :goto_1f5

    .line 489
    :catch_1e8
    const/4 v4, 0x0

    .line 490
    goto :goto_1f5

    .line 491
    :cond_1ea
    move v4, v8

    .line 492
    move v5, v9

    .line 493
    goto :goto_1f5

    .line 494
    :cond_1ed
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    int-to-float v9, v4

    .line 499
    move v4, v9

    .line 500
    move v5, v4

    .line 501
    move v8, v5

    .line 502
    :goto_1f5
    invoke-static {p1, v9}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingStart(I)V

    .line 511
    .line 512
    .line 513
    invoke-static {p1, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingTop(I)V

    .line 522
    .line 523
    .line 524
    invoke-static {p1, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingEnd(I)V

    .line 533
    .line 534
    .line 535
    invoke-static {p1, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setPaddingBottom(I)V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_e

    .line 547
    .line 548
    :pswitch_223
    invoke-virtual {p4, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/helpers/GridReference;->setOrientation(I)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_e

    .line 560
    .line 561
    :cond_230
    return-void

    .line 562
    nop

    .line 563
    :sswitch_data_232
    .sparse-switch
        -0x55cd0a30 -> :sswitch_ad
        -0x300fc3ef -> :sswitch_a2
        -0x21d289e1 -> :sswitch_97
        0x305d4e -> :sswitch_8c
        0x3581d9 -> :sswitch_81
        0x36ba80 -> :sswitch_76
        0x5cfee87 -> :sswitch_6b
        0x686cad4 -> :sswitch_60
        0x688f269 -> :sswitch_52
        0x89c01c1 -> :sswitch_44
        0x389b97dd -> :sswitch_36
        0x793284c5 -> :sswitch_28
    .end sparse-switch

    .line 564
    .line 565
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
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
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
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_223
        :pswitch_1ba
        :pswitch_197
        :pswitch_186
        :pswitch_177
        :pswitch_166
        :pswitch_12a
        :pswitch_115
        :pswitch_100
        :pswitch_eb
        :pswitch_dc
        :pswitch_c7
    .end packed-switch
.end method

.method public static parseGuideline(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/parser/CLArray;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    instance-of v0, p2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 7
    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    goto :goto_14

    .line 11
    :cond_a
    check-cast p2, Landroidx/constraintlayout/core/parser/CLObject;

    .line 12
    .line 13
    const-string v0, "id"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_15

    .line 20
    .line 21
    :goto_14
    return-void

    .line 22
    :cond_15
    invoke-static {p0, p1, v0, p2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez p0, :cond_15

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 19
    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 23
    .line 24
    .line 25
    :goto_18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/State;->isRtl()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_23

    .line 30
    .line 31
    if-nez p0, :cond_21

    .line 32
    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/4 v4, 0x0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    :goto_23
    const/4 v4, 0x1

    .line 37
    :goto_24
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x1

    .line 50
    const/4 v11, 0x0

    .line 51
    :goto_32
    if-ge v11, v7, :cond_11a

    .line 52
    .line 53
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    add-int/lit8 v11, v11, 0x1

    .line 58
    .line 59
    check-cast v12, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v13

    .line 68
    const-string v14, "start"

    .line 69
    .line 70
    const-string v15, "right"

    .line 71
    .line 72
    const/16 v16, 0x2

    .line 73
    .line 74
    const-string v5, "left"

    .line 75
    .line 76
    const-string v6, "end"

    .line 77
    .line 78
    const/16 v18, -0x1

    .line 79
    .line 80
    sparse-switch v13, :sswitch_data_13c

    .line 81
    .line 82
    .line 83
    :goto_52
    move/from16 v13, v18

    .line 84
    .line 85
    goto :goto_84

    .line 86
    :sswitch_55
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-nez v13, :cond_5c

    .line 91
    .line 92
    goto :goto_52

    .line 93
    :cond_5c
    const/4 v13, 0x4

    .line 94
    goto :goto_84

    .line 95
    :sswitch_5e
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-nez v13, :cond_65

    .line 100
    .line 101
    goto :goto_52

    .line 102
    :cond_65
    const/4 v13, 0x3

    .line 103
    goto :goto_84

    .line 104
    :sswitch_67
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    if-nez v13, :cond_6e

    .line 109
    .line 110
    goto :goto_52

    .line 111
    :cond_6e
    move/from16 v13, v16

    .line 112
    .line 113
    goto :goto_84

    .line 114
    :sswitch_71
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-nez v13, :cond_78

    .line 119
    .line 120
    goto :goto_52

    .line 121
    :cond_78
    const/4 v13, 0x1

    .line 122
    goto :goto_84

    .line 123
    :sswitch_7a
    const-string v13, "percent"

    .line 124
    .line 125
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-nez v13, :cond_83

    .line 130
    .line 131
    goto :goto_52

    .line 132
    :cond_83
    const/4 v13, 0x0

    .line 133
    :goto_84
    packed-switch v13, :pswitch_data_152

    .line 134
    .line 135
    .line 136
    :goto_87
    const/4 v12, 0x0

    .line 137
    const/4 v13, 0x1

    .line 138
    goto :goto_32

    .line 139
    :pswitch_8a
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    move v10, v4

    .line 148
    :goto_93
    move v8, v5

    .line 149
    goto :goto_87

    .line 150
    :pswitch_95
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    invoke-static {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    move v8, v5

    .line 159
    const/4 v10, 0x0

    .line 160
    goto :goto_87

    .line 161
    :pswitch_a0
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-static {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    move v8, v5

    .line 170
    :goto_a9
    const/4 v10, 0x1

    .line 171
    goto :goto_87

    .line 172
    :pswitch_ab
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-static {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->toPix(Landroidx/constraintlayout/core/state/State;F)F

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    xor-int/lit8 v10, v4, 0x1

    .line 181
    .line 182
    goto :goto_93

    .line 183
    :pswitch_b6
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    if-nez v9, :cond_c3

    .line 188
    .line 189
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    move v8, v5

    .line 194
    const/4 v9, 0x1

    .line 195
    goto :goto_a9

    .line 196
    :cond_c3
    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    const/4 v13, 0x1

    .line 201
    if-le v12, v13, :cond_118

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    invoke-virtual {v9, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v9, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result v17

    .line 219
    sparse-switch v17, :sswitch_data_160

    .line 220
    .line 221
    .line 222
    :goto_dd
    move/from16 v15, v18

    .line 223
    .line 224
    goto :goto_104

    .line 225
    :sswitch_e0
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-nez v5, :cond_e7

    .line 230
    .line 231
    goto :goto_dd

    .line 232
    :cond_e7
    const/4 v15, 0x3

    .line 233
    goto :goto_104

    .line 234
    :sswitch_e9
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_f0

    .line 239
    .line 240
    goto :goto_dd

    .line 241
    :cond_f0
    move/from16 v15, v16

    .line 242
    .line 243
    goto :goto_104

    .line 244
    :sswitch_f3
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_fa

    .line 249
    .line 250
    goto :goto_dd

    .line 251
    :cond_fa
    move v15, v13

    .line 252
    goto :goto_104

    .line 253
    :sswitch_fc
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-nez v5, :cond_103

    .line 258
    .line 259
    goto :goto_dd

    .line 260
    :cond_103
    move v15, v12

    .line 261
    :goto_104
    packed-switch v15, :pswitch_data_172

    .line 262
    .line 263
    .line 264
    :goto_107
    move v8, v9

    .line 265
    :goto_108
    move v9, v13

    .line 266
    goto/16 :goto_32

    .line 267
    .line 268
    :pswitch_10b
    move v10, v4

    .line 269
    goto :goto_107

    .line 270
    :pswitch_10d
    move v8, v9

    .line 271
    move v10, v12

    .line 272
    goto :goto_108

    .line 273
    :pswitch_110
    move v8, v9

    .line 274
    move v9, v13

    .line 275
    move v10, v9

    .line 276
    goto/16 :goto_32

    .line 277
    .line 278
    :pswitch_115
    xor-int/lit8 v10, v4, 0x1

    .line 279
    .line 280
    goto :goto_107

    .line 281
    :cond_118
    const/4 v12, 0x0

    .line 282
    goto :goto_108

    .line 283
    :cond_11a
    if-eqz v9, :cond_129

    .line 284
    .line 285
    if-eqz v10, :cond_122

    .line 286
    .line 287
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->percent(F)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_122
    const/high16 v0, 0x3f800000    # 1.0f

    .line 292
    .line 293
    sub-float/2addr v0, v8

    .line 294
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->percent(F)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_129
    if-eqz v10, :cond_133

    .line 299
    .line 300
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->start(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :cond_133
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->end(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    nop

    .line 317
    :sswitch_data_13c
    .sparse-switch
        -0x28779bbb -> :sswitch_7a
        0x188db -> :sswitch_71
        0x32a007 -> :sswitch_67
        0x677c21c -> :sswitch_5e
        0x68ac462 -> :sswitch_55
    .end sparse-switch

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
    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_ab
        :pswitch_a0
        :pswitch_95
        :pswitch_8a
    .end packed-switch

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
    :sswitch_data_160
    .sparse-switch
        0x188db -> :sswitch_fc
        0x32a007 -> :sswitch_f3
        0x677c21c -> :sswitch_e9
        0x68ac462 -> :sswitch_e0
    .end sparse-switch

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
    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_115
        :pswitch_110
        :pswitch_10d
        :pswitch_10b
    .end packed-switch
.end method

.method public static parseHeader(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 3

    .line 1
    const-string v0, "export"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setDebugName(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_b
    return-void
.end method

.method public static parseHelpers(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_6a

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    instance-of v3, v2, Landroidx/constraintlayout/core/parser/CLArray;

    .line 14
    .line 15
    if-eqz v3, :cond_67

    .line 16
    .line 17
    check-cast v2, Landroidx/constraintlayout/core/parser/CLArray;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-le v3, v4, :cond_67

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, -0x1

    .line 38
    sparse-switch v5, :sswitch_data_6c

    .line 39
    .line 40
    .line 41
    goto :goto_54

    .line 42
    :sswitch_29
    const-string v5, "hGuideline"

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_32

    .line 49
    .line 50
    goto :goto_54

    .line 51
    :cond_32
    const/4 v6, 0x3

    .line 52
    goto :goto_54

    .line 53
    :sswitch_34
    const-string v5, "vChain"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3d

    .line 60
    .line 61
    goto :goto_54

    .line 62
    :cond_3d
    const/4 v6, 0x2

    .line 63
    goto :goto_54

    .line 64
    :sswitch_3f
    const-string v5, "hChain"

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_48

    .line 71
    .line 72
    goto :goto_54

    .line 73
    :cond_48
    move v6, v4

    .line 74
    goto :goto_54

    .line 75
    :sswitch_4a
    const-string v5, "vGuideline"

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_53

    .line 82
    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v6, v0

    .line 85
    :goto_54
    packed-switch v6, :pswitch_data_7e

    .line 86
    .line 87
    .line 88
    goto :goto_67

    .line 89
    :pswitch_58
    invoke-static {v0, p0, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuideline(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 90
    .line 91
    .line 92
    goto :goto_67

    .line 93
    :pswitch_5c
    invoke-static {v4, p0, p1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseChain(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 94
    .line 95
    .line 96
    goto :goto_67

    .line 97
    :pswitch_60
    invoke-static {v0, p0, p1, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseChain(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 98
    .line 99
    .line 100
    goto :goto_67

    .line 101
    :pswitch_64
    invoke-static {v4, p0, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuideline(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 102
    .line 103
    .line 104
    :cond_67
    :goto_67
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6a
    return-void

    .line 108
    nop

    .line 109
    :sswitch_data_6c
    .sparse-switch
        -0x6a6caee6 -> :sswitch_4a
        -0x4aa718c7 -> :sswitch_3f
        -0x32c34015 -> :sswitch_34
        0x398f2168 -> :sswitch_29
    .end sparse-switch

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
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_58
    .end packed-switch
.end method

.method public static parseJSON(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    .registers 4

    .line 130
    :try_start_0
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    .line 131
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->populateState(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    :try_end_7
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 132
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error parsing JSON "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static parseJSON(Ljava/lang/String;Landroidx/constraintlayout/core/state/Transition;I)V
    .registers 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    :try_start_4
    invoke-static/range {p0 .. p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_f

    .line 14
    .line 15
    goto :goto_6b

    .line 16
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :cond_15
    if-ge v6, v4, :cond_6b

    .line 23
    .line 24
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    add-int/lit8 v6, v6, 0x1

    .line 29
    .line 30
    check-cast v7, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLObject;

    .line 37
    .line 38
    if-eqz v9, :cond_15

    .line 39
    .line 40
    check-cast v8, Landroidx/constraintlayout/core/parser/CLObject;

    .line 41
    .line 42
    const-string v9, "custom"

    .line 43
    .line 44
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    if-eqz v8, :cond_15

    .line 49
    .line 50
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    move v11, v5

    .line 59
    :cond_3a
    :goto_3a
    if-ge v11, v10, :cond_15

    .line 60
    .line 61
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    add-int/lit8 v11, v11, 0x1

    .line 66
    .line 67
    check-cast v12, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    instance-of v14, v13, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 74
    .line 75
    if-eqz v14, :cond_54

    .line 76
    .line 77
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    invoke-virtual {v0, v1, v7, v12, v13}, Landroidx/constraintlayout/core/state/Transition;->addCustomFloat(ILjava/lang/String;Ljava/lang/String;F)V

    .line 82
    .line 83
    .line 84
    goto :goto_3a

    .line 85
    :cond_54
    instance-of v14, v13, Landroidx/constraintlayout/core/parser/CLString;

    .line 86
    .line 87
    if-eqz v14, :cond_3a

    .line 88
    .line 89
    invoke-virtual {v13}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-static {v13}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v13

    .line 97
    const-wide/16 v15, -0x1

    .line 98
    .line 99
    cmp-long v15, v13, v15

    .line 100
    .line 101
    if-eqz v15, :cond_3a

    .line 102
    .line 103
    long-to-int v13, v13

    .line 104
    invoke-virtual {v0, v1, v7, v12, v13}, Landroidx/constraintlayout/core/state/Transition;->addCustomColor(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6a
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_4 .. :try_end_6a} :catch_6c

    .line 105
    .line 106
    .line 107
    goto :goto_3a

    .line 108
    :cond_6b
    :goto_6b
    return-void

    .line 109
    :catch_6c
    move-exception v0

    .line 110
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "Error parsing JSON "

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private static parseMotionProperties(Landroidx/constraintlayout/core/parser/CLElement;Landroidx/constraintlayout/core/state/ConstraintReference;)V
    .registers 16

    .line 1
    instance-of v0, p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_12

    .line 6
    :cond_5
    check-cast p0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 7
    .line 8
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_13

    .line 18
    .line 19
    :goto_12
    return-void

    .line 20
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :cond_19
    :goto_19
    if-ge v4, v2, :cond_10b

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    check-cast v5, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, -0x1

    .line 44
    const/4 v8, 0x2

    .line 45
    const/4 v9, 0x1

    .line 46
    sparse-switch v6, :sswitch_data_10e

    .line 47
    .line 48
    .line 49
    :goto_30
    move v6, v7

    .line 50
    goto :goto_68

    .line 51
    :sswitch_32
    const-string v6, "relativeTo"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_3b

    .line 58
    .line 59
    goto :goto_30

    .line 60
    :cond_3b
    const/4 v6, 0x4

    .line 61
    goto :goto_68

    .line 62
    :sswitch_3d
    const-string v6, "pathArc"

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_46

    .line 69
    .line 70
    goto :goto_30

    .line 71
    :cond_46
    const/4 v6, 0x3

    .line 72
    goto :goto_68

    .line 73
    :sswitch_48
    const-string v6, "quantize"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_51

    .line 80
    .line 81
    goto :goto_30

    .line 82
    :cond_51
    move v6, v8

    .line 83
    goto :goto_68

    .line 84
    :sswitch_53
    const-string v6, "easing"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_5c

    .line 91
    .line 92
    goto :goto_30

    .line 93
    :cond_5c
    move v6, v9

    .line 94
    goto :goto_68

    .line 95
    :sswitch_5e
    const-string v6, "stagger"

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_67

    .line 102
    .line 103
    goto :goto_30

    .line 104
    :cond_67
    move v6, v3

    .line 105
    :goto_68
    packed-switch v6, :pswitch_data_124

    .line 106
    .line 107
    .line 108
    goto :goto_19

    .line 109
    :pswitch_6c
    const/16 v6, 0x25d

    .line 110
    .line 111
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v0, v6, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_19

    .line 119
    :pswitch_76
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-string v12, "below"

    .line 124
    .line 125
    const-string v13, "above"

    .line 126
    .line 127
    const-string v8, "none"

    .line 128
    .line 129
    const-string v9, "startVertical"

    .line 130
    .line 131
    const-string v10, "startHorizontal"

    .line 132
    .line 133
    const-string v11, "flip"

    .line 134
    .line 135
    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-ne v6, v7, :cond_b4

    .line 144
    .line 145
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 146
    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLElement;->getLine()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v8, " pathArc = \'"

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v5, "\'"

    .line 168
    .line 169
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_19

    .line 180
    .line 181
    :cond_b4
    const/16 v5, 0x25f

    .line 182
    .line 183
    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_19

    .line 187
    .line 188
    :pswitch_bb
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 193
    .line 194
    const/16 v10, 0x262

    .line 195
    .line 196
    if-eqz v7, :cond_ec

    .line 197
    .line 198
    check-cast v6, Landroidx/constraintlayout/core/parser/CLArray;

    .line 199
    .line 200
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-lez v5, :cond_19

    .line 205
    .line 206
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    invoke-virtual {v0, v10, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 211
    .line 212
    .line 213
    if-le v5, v9, :cond_19

    .line 214
    .line 215
    const/16 v7, 0x263

    .line 216
    .line 217
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v0, v7, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    if-le v5, v8, :cond_19

    .line 225
    .line 226
    const/16 v5, 0x25a

    .line 227
    .line 228
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_19

    .line 236
    .line 237
    :cond_ec
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    invoke-virtual {v0, v10, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_19

    .line 245
    .line 246
    :pswitch_f5
    const/16 v6, 0x25b

    .line 247
    .line 248
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v0, v6, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_19

    .line 256
    .line 257
    :pswitch_100
    const/16 v6, 0x258

    .line 258
    .line 259
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(Ljava/lang/String;)F

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    invoke-virtual {v0, v6, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_19

    .line 267
    .line 268
    :cond_10b
    iput-object v0, p1, Landroidx/constraintlayout/core/state/ConstraintReference;->mMotionProperties:Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 269
    .line 270
    return-void

    .line 271
    :sswitch_data_10e
    .sparse-switch
        -0x7119f053 -> :sswitch_5e
        -0x4e19c2d5 -> :sswitch_53
        -0x4c979acf -> :sswitch_48
        -0x2f2d1013 -> :sswitch_3d
        -0xe1f7d99 -> :sswitch_32
    .end sparse-switch

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
    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_100
        :pswitch_f5
        :pswitch_bb
        :pswitch_76
        :pswitch_6c
    .end packed-switch
.end method

.method public static parseMotionSceneJSON(Landroidx/constraintlayout/core/state/CoreMotionScene;Ljava/lang/String;)V
    .registers 9

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_5c

    .line 12
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :cond_10
    :goto_10
    if-ge v2, v1, :cond_5c

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLObject;

    .line 32
    .line 33
    if-eqz v5, :cond_10

    .line 34
    .line 35
    check-cast v4, Landroidx/constraintlayout/core/parser/CLObject;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const v6, -0x7f663153

    .line 42
    .line 43
    .line 44
    if-eq v5, v6, :cond_50

    .line 45
    .line 46
    const v6, -0xe641a62

    .line 47
    .line 48
    .line 49
    if-eq v5, v6, :cond_44

    .line 50
    .line 51
    const v6, 0x41acefee

    .line 52
    .line 53
    .line 54
    if-eq v5, v6, :cond_38

    .line 55
    .line 56
    goto :goto_10

    .line 57
    :cond_38
    const-string v5, "ConstraintSets"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_10

    .line 64
    .line 65
    invoke-static {p0, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseConstraintSets(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 66
    .line 67
    .line 68
    goto :goto_10

    .line 69
    :cond_44
    const-string v5, "Transitions"

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_10

    .line 76
    .line 77
    invoke-static {p0, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseTransitions(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 78
    .line 79
    .line 80
    goto :goto_10

    .line 81
    :cond_50
    const-string v5, "Header"

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_10

    .line 88
    .line 89
    invoke-static {p0, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseHeader(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    :try_end_5b
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_0 .. :try_end_5b} :catch_5d

    .line 90
    .line 91
    .line 92
    goto :goto_10

    .line 93
    :cond_5c
    :goto_5c
    return-void

    .line 94
    :catch_5d
    move-exception p0

    .line 95
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "Error parsing JSON "

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public static parseTransitions(Landroidx/constraintlayout/core/state/CoreMotionScene;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_22

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_c
    if-ge v2, v1, :cond_22

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getObject(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {p0, v3, v4}, Landroidx/constraintlayout/core/state/CoreMotionScene;->setTransitionContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_c

    .line 35
    :cond_22
    :goto_22
    return-void
.end method

.method private static parseVariables(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 15

    .line 1
    invoke-virtual {p2}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_c1

    .line 8
    .line 9
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_e
    :goto_e
    if-ge v3, v1, :cond_c1

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    move-object v6, v4

    .line 24
    check-cast v6, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 31
    .line 32
    if-eqz v5, :cond_29

    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p1, v6, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_e

    .line 42
    :cond_29
    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLObject;

    .line 43
    .line 44
    if-eqz v5, :cond_e

    .line 45
    .line 46
    check-cast v4, Landroidx/constraintlayout/core/parser/CLObject;

    .line 47
    .line 48
    const-string v5, "from"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_63

    .line 55
    .line 56
    const-string v7, "to"

    .line 57
    .line 58
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_63

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    const-string v7, "prefix"

    .line 81
    .line 82
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    const-string v7, "postfix"

    .line 87
    .line 88
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const/high16 v9, 0x3f800000    # 1.0f

    .line 93
    .line 94
    move v7, v5

    .line 95
    move-object v5, p1

    .line 96
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;FFFLjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_e

    .line 100
    :cond_63
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_85

    .line 105
    .line 106
    const-string v7, "step"

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_85

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->get(Ljava/lang/Object;)F

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {p1, v6, v5, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;FF)V

    .line 131
    .line 132
    .line 133
    goto :goto_e

    .line 134
    :cond_85
    const-string v5, "ids"

    .line 135
    .line 136
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_ac

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    .line 151
    move v7, v2

    .line 152
    :goto_97
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-ge v7, v8, :cond_a7

    .line 157
    .line 158
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    add-int/lit8 v7, v7, 0x1

    .line 166
    .line 167
    goto :goto_97

    .line 168
    :cond_a7
    invoke-virtual {p1, v6, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_e

    .line 172
    .line 173
    :cond_ac
    const-string v5, "tag"

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_e

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/State;->getIdsForTag(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {p1, v6, v4}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_e

    .line 193
    .line 194
    :cond_c1
    :goto_c1
    return-void
.end method

.method public static parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 8

    .line 1
    invoke-virtual {p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createWrap()Landroidx/constraintlayout/core/state/Dimension;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 12
    .line 13
    .line 14
    :cond_d
    invoke-virtual {p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1a

    .line 19
    .line 20
    invoke-static {}, Landroidx/constraintlayout/core/state/Dimension;->createWrap()Landroidx/constraintlayout/core/state/Dimension;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_21

    .line 32
    .line 33
    goto :goto_34

    .line 34
    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_26
    if-ge v2, v1, :cond_34

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    check-cast v3, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p0, p1, p2, p3, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->applyAttribute(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_26

    .line 53
    :cond_34
    :goto_34
    return-void
.end method

.method public static parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .registers 4

    .line 54
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p2

    .line 55
    invoke-static {p0, p1, p2, p3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/parser/CLObject;)V

    return-void
.end method

.method public static populateState(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    .registers 14
    .param p0    # Landroidx/constraintlayout/core/parser/CLObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/constraintlayout/core/state/State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->names()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    goto/16 :goto_129

    .line 8
    .line 9
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_e
    :goto_e
    if-ge v3, v1, :cond_129

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->get(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x2

    .line 37
    const/4 v8, -0x1

    .line 38
    const/4 v9, 0x1

    .line 39
    sparse-switch v6, :sswitch_data_12a

    .line 40
    .line 41
    .line 42
    :goto_29
    move v6, v8

    .line 43
    goto :goto_4b

    .line 44
    :sswitch_2b
    const-string v6, "Variables"

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_34

    .line 51
    .line 52
    goto :goto_29

    .line 53
    :cond_34
    move v6, v7

    .line 54
    goto :goto_4b

    .line 55
    :sswitch_36
    const-string v6, "Generate"

    .line 56
    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3f

    .line 62
    .line 63
    goto :goto_29

    .line 64
    :cond_3f
    move v6, v9

    .line 65
    goto :goto_4b

    .line 66
    :sswitch_41
    const-string v6, "Helpers"

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_4a

    .line 73
    .line 74
    goto :goto_29

    .line 75
    :cond_4a
    move v6, v2

    .line 76
    :goto_4b
    packed-switch v6, :pswitch_data_138

    .line 77
    .line 78
    .line 79
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 80
    .line 81
    if-eqz v6, :cond_fb

    .line 82
    .line 83
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 84
    .line 85
    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->lookForType(Landroidx/constraintlayout/core/parser/CLObject;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_f6

    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    sparse-switch v10, :sswitch_data_142

    .line 96
    .line 97
    .line 98
    :goto_61
    move v7, v8

    .line 99
    goto/16 :goto_d3

    .line 100
    .line 101
    :sswitch_64
    const-string v7, "hGuideline"

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-nez v7, :cond_6d

    .line 108
    .line 109
    goto :goto_61

    .line 110
    :cond_6d
    const/16 v7, 0x9

    .line 111
    .line 112
    goto/16 :goto_d3

    .line 113
    .line 114
    :sswitch_71
    const-string v7, "vFlow"

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_7a

    .line 121
    .line 122
    goto :goto_61

    .line 123
    :cond_7a
    const/16 v7, 0x8

    .line 124
    .line 125
    goto/16 :goto_d3

    .line 126
    .line 127
    :sswitch_7e
    const-string v7, "hFlow"

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_87

    .line 134
    .line 135
    goto :goto_61

    .line 136
    :cond_87
    const/4 v7, 0x7

    .line 137
    goto :goto_d3

    .line 138
    :sswitch_89
    const-string v7, "grid"

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-nez v7, :cond_92

    .line 145
    .line 146
    goto :goto_61

    .line 147
    :cond_92
    const/4 v7, 0x6

    .line 148
    goto :goto_d3

    .line 149
    :sswitch_94
    const-string v7, "row"

    .line 150
    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-nez v7, :cond_9d

    .line 156
    .line 157
    goto :goto_61

    .line 158
    :cond_9d
    const/4 v7, 0x5

    .line 159
    goto :goto_d3

    .line 160
    :sswitch_9f
    const-string v7, "barrier"

    .line 161
    .line 162
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_a8

    .line 167
    .line 168
    goto :goto_61

    .line 169
    :cond_a8
    const/4 v7, 0x4

    .line 170
    goto :goto_d3

    .line 171
    :sswitch_aa
    const-string v7, "vChain"

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_b3

    .line 178
    .line 179
    goto :goto_61

    .line 180
    :cond_b3
    const/4 v7, 0x3

    .line 181
    goto :goto_d3

    .line 182
    :sswitch_b5
    const-string v10, "hChain"

    .line 183
    .line 184
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-nez v10, :cond_d3

    .line 189
    .line 190
    goto :goto_61

    .line 191
    :sswitch_be
    const-string v7, "column"

    .line 192
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-nez v7, :cond_c7

    .line 198
    .line 199
    goto :goto_61

    .line 200
    :cond_c7
    move v7, v9

    .line 201
    goto :goto_d3

    .line 202
    :sswitch_c9
    const-string v7, "vGuideline"

    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-nez v7, :cond_d2

    .line 209
    .line 210
    goto :goto_61

    .line 211
    :cond_d2
    move v7, v2

    .line 212
    :cond_d3
    :goto_d3
    packed-switch v7, :pswitch_data_16c

    .line 213
    .line 214
    .line 215
    goto/16 :goto_e

    .line 216
    .line 217
    :pswitch_d8
    invoke-static {v2, p1, v4, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_e

    .line 221
    .line 222
    :pswitch_dd
    invoke-static {v6, p1, v4, p2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseFlowType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_e

    .line 226
    .line 227
    :pswitch_e2
    invoke-static {p1, v4, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseBarrier(Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_e

    .line 231
    .line 232
    :pswitch_e7
    invoke-static {v6, p1, v4, p2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseChainType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_e

    .line 236
    .line 237
    :pswitch_ec
    invoke-static {v6, p1, v4, p2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGridType(Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_e

    .line 241
    .line 242
    :pswitch_f1
    invoke-static {v9, p1, v4, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGuidelineParams(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_e

    .line 246
    .line 247
    :cond_f6
    invoke-static {p1, p2, v4, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseWidget(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_e

    .line 251
    .line 252
    :cond_fb
    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 253
    .line 254
    if-eqz v6, :cond_e

    .line 255
    .line 256
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    invoke-virtual {p2, v4, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->put(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_e

    .line 264
    .line 265
    :pswitch_108
    instance-of v4, v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 266
    .line 267
    if-eqz v4, :cond_e

    .line 268
    .line 269
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 270
    .line 271
    invoke-static {p1, p2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseVariables(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_e

    .line 275
    .line 276
    :pswitch_113
    instance-of v4, v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 277
    .line 278
    if-eqz v4, :cond_e

    .line 279
    .line 280
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 281
    .line 282
    invoke-static {p1, p2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseGenerate(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLObject;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_e

    .line 286
    .line 287
    :pswitch_11e
    instance-of v4, v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 288
    .line 289
    if-eqz v4, :cond_e

    .line 290
    .line 291
    check-cast v5, Landroidx/constraintlayout/core/parser/CLArray;

    .line 292
    .line 293
    invoke-static {p1, p2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseHelpers(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_e

    .line 297
    .line 298
    :cond_129
    :goto_129
    return-void

    .line 299
    :sswitch_data_12a
    .sparse-switch
        -0x6cbf819b -> :sswitch_41
        0x6fc27995 -> :sswitch_36
        0x72879d57 -> :sswitch_2b
    .end sparse-switch

    .line 300
    .line 301
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
    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_113
        :pswitch_108
    .end packed-switch

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
    :sswitch_data_142
    .sparse-switch
        -0x6a6caee6 -> :sswitch_c9
        -0x50c12caa -> :sswitch_be
        -0x4aa718c7 -> :sswitch_b5
        -0x32c34015 -> :sswitch_aa
        -0x13db5c49 -> :sswitch_9f
        0x1b9da -> :sswitch_94
        0x308b46 -> :sswitch_89
        0x5db01b6 -> :sswitch_7e
        0x6a04ac4 -> :sswitch_71
        0x398f2168 -> :sswitch_64
    .end sparse-switch

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
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_ec
        :pswitch_e7
        :pswitch_e7
        :pswitch_e2
        :pswitch_ec
        :pswitch_ec
        :pswitch_dd
        :pswitch_dd
        :pswitch_d8
    .end packed-switch
.end method

.method private static toPix(Landroidx/constraintlayout/core/state/State;F)F
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/State;->getDpToPixel()Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
