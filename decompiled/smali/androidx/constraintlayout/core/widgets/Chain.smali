.class public Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final DEBUG:Z = false

.field public static final USE_CHAIN_OPTIMIZATION:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move-object/from16 v2, p4

    .line 8
    .line 9
    iget-object v10, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    .line 11
    iget-object v11, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 12
    .line 13
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    iget-object v13, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    .line 17
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 18
    .line 19
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 20
    .line 21
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    .line 23
    aget-object v5, v5, v9

    .line 24
    .line 25
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    .line 27
    const/4 v14, 0x1

    .line 28
    if-ne v5, v6, :cond_0

    .line 29
    .line 30
    move v5, v14

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v5, 0x0

    .line 33
    :goto_0
    const/4 v6, 0x2

    .line 34
    if-nez v9, :cond_4

    .line 35
    .line 36
    iget v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 37
    .line 38
    if-nez v8, :cond_1

    .line 39
    .line 40
    move v15, v14

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v15, 0x0

    .line 43
    :goto_1
    if-ne v8, v14, :cond_2

    .line 44
    .line 45
    move/from16 v16, v14

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v16, 0x0

    .line 49
    .line 50
    :goto_2
    if-ne v8, v6, :cond_3

    .line 51
    .line 52
    :goto_3
    move v6, v14

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    const/4 v6, 0x0

    .line 55
    :goto_4
    move-object v14, v10

    .line 56
    const/4 v8, 0x0

    .line 57
    goto :goto_7

    .line 58
    :cond_4
    iget v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 59
    .line 60
    if-nez v8, :cond_5

    .line 61
    .line 62
    move v15, v14

    .line 63
    goto :goto_5

    .line 64
    :cond_5
    const/4 v15, 0x0

    .line 65
    :goto_5
    if-ne v8, v14, :cond_6

    .line 66
    .line 67
    move/from16 v16, v14

    .line 68
    .line 69
    goto :goto_6

    .line 70
    :cond_6
    const/16 v16, 0x0

    .line 71
    .line 72
    :goto_6
    if-ne v8, v6, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :goto_7
    move/from16 v19, v4

    .line 76
    .line 77
    const/16 v22, 0x0

    .line 78
    .line 79
    if-nez v8, :cond_14

    .line 80
    .line 81
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 82
    .line 83
    aget-object v4, v4, p3

    .line 84
    .line 85
    if-eqz v6, :cond_7

    .line 86
    .line 87
    const/16 v20, 0x1

    .line 88
    .line 89
    goto :goto_8

    .line 90
    :cond_7
    const/16 v20, 0x4

    .line 91
    .line 92
    :goto_8
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 93
    .line 94
    .line 95
    move-result v23

    .line 96
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 97
    .line 98
    aget-object v7, v7, v9

    .line 99
    .line 100
    move/from16 v24, v5

    .line 101
    .line 102
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 103
    .line 104
    if-ne v7, v5, :cond_8

    .line 105
    .line 106
    iget-object v7, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 107
    .line 108
    aget v7, v7, v9

    .line 109
    .line 110
    if-nez v7, :cond_8

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    :goto_9
    move/from16 v25, v6

    .line 114
    .line 115
    goto :goto_a

    .line 116
    :cond_8
    const/4 v7, 0x0

    .line 117
    goto :goto_9

    .line 118
    :goto_a
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 119
    .line 120
    if-eqz v6, :cond_9

    .line 121
    .line 122
    if-eq v14, v10, :cond_9

    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    add-int v23, v6, v23

    .line 129
    .line 130
    :cond_9
    move/from16 v6, v23

    .line 131
    .line 132
    if-eqz v25, :cond_a

    .line 133
    .line 134
    if-eq v14, v10, :cond_a

    .line 135
    .line 136
    if-eq v14, v12, :cond_a

    .line 137
    .line 138
    const/16 v20, 0x8

    .line 139
    .line 140
    :cond_a
    move/from16 v23, v7

    .line 141
    .line 142
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 143
    .line 144
    move/from16 v26, v8

    .line 145
    .line 146
    if-eqz v7, :cond_e

    .line 147
    .line 148
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 149
    .line 150
    if-ne v14, v12, :cond_b

    .line 151
    .line 152
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 153
    .line 154
    move/from16 v27, v15

    .line 155
    .line 156
    const/4 v15, 0x6

    .line 157
    invoke-virtual {v1, v8, v7, v6, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 158
    .line 159
    .line 160
    goto :goto_b

    .line 161
    :cond_b
    move/from16 v27, v15

    .line 162
    .line 163
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 164
    .line 165
    const/16 v15, 0x8

    .line 166
    .line 167
    invoke-virtual {v1, v8, v7, v6, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 168
    .line 169
    .line 170
    :goto_b
    if-eqz v23, :cond_c

    .line 171
    .line 172
    if-nez v25, :cond_c

    .line 173
    .line 174
    const/16 v20, 0x5

    .line 175
    .line 176
    :cond_c
    if-ne v14, v12, :cond_d

    .line 177
    .line 178
    if-eqz v25, :cond_d

    .line 179
    .line 180
    invoke-virtual {v14, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInBarrier(I)Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_d

    .line 185
    .line 186
    const/4 v7, 0x5

    .line 187
    goto :goto_c

    .line 188
    :cond_d
    move/from16 v7, v20

    .line 189
    .line 190
    :goto_c
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 191
    .line 192
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 193
    .line 194
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 195
    .line 196
    invoke-virtual {v1, v8, v4, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 197
    .line 198
    .line 199
    goto :goto_d

    .line 200
    :cond_e
    move/from16 v27, v15

    .line 201
    .line 202
    :goto_d
    if-eqz v24, :cond_10

    .line 203
    .line 204
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    const/16 v15, 0x8

    .line 209
    .line 210
    if-eq v4, v15, :cond_f

    .line 211
    .line 212
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 213
    .line 214
    aget-object v4, v4, v9

    .line 215
    .line 216
    if-ne v4, v5, :cond_f

    .line 217
    .line 218
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 219
    .line 220
    add-int/lit8 v5, p3, 0x1

    .line 221
    .line 222
    aget-object v5, v4, v5

    .line 223
    .line 224
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 225
    .line 226
    aget-object v4, v4, p3

    .line 227
    .line 228
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 229
    .line 230
    const/4 v6, 0x5

    .line 231
    const/4 v7, 0x0

    .line 232
    invoke-virtual {v1, v5, v4, v7, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 233
    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_f
    const/4 v7, 0x0

    .line 237
    :goto_e
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 238
    .line 239
    aget-object v4, v4, p3

    .line 240
    .line 241
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 242
    .line 243
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    .line 245
    aget-object v5, v5, p3

    .line 246
    .line 247
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 248
    .line 249
    const/16 v15, 0x8

    .line 250
    .line 251
    invoke-virtual {v1, v4, v5, v7, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 252
    .line 253
    .line 254
    :cond_10
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 255
    .line 256
    add-int/lit8 v5, p3, 0x1

    .line 257
    .line 258
    aget-object v4, v4, v5

    .line 259
    .line 260
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 261
    .line 262
    if-eqz v4, :cond_12

    .line 263
    .line 264
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 265
    .line 266
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 267
    .line 268
    aget-object v5, v5, p3

    .line 269
    .line 270
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 271
    .line 272
    if-eqz v5, :cond_12

    .line 273
    .line 274
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 275
    .line 276
    if-eq v5, v14, :cond_11

    .line 277
    .line 278
    goto :goto_f

    .line 279
    :cond_11
    move-object/from16 v22, v4

    .line 280
    .line 281
    :cond_12
    :goto_f
    if-eqz v22, :cond_13

    .line 282
    .line 283
    move-object/from16 v14, v22

    .line 284
    .line 285
    move/from16 v8, v26

    .line 286
    .line 287
    goto :goto_10

    .line 288
    :cond_13
    const/4 v8, 0x1

    .line 289
    :goto_10
    move/from16 v4, v19

    .line 290
    .line 291
    move/from16 v5, v24

    .line 292
    .line 293
    move/from16 v6, v25

    .line 294
    .line 295
    move/from16 v15, v27

    .line 296
    .line 297
    goto/16 :goto_7

    .line 298
    .line 299
    :cond_14
    move/from16 v24, v5

    .line 300
    .line 301
    move/from16 v25, v6

    .line 302
    .line 303
    move/from16 v27, v15

    .line 304
    .line 305
    if-eqz v13, :cond_17

    .line 306
    .line 307
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 308
    .line 309
    add-int/lit8 v5, p3, 0x1

    .line 310
    .line 311
    aget-object v4, v4, v5

    .line 312
    .line 313
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 314
    .line 315
    if-eqz v4, :cond_17

    .line 316
    .line 317
    iget-object v4, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 318
    .line 319
    aget-object v4, v4, v5

    .line 320
    .line 321
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 322
    .line 323
    aget-object v6, v6, v9

    .line 324
    .line 325
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 326
    .line 327
    if-ne v6, v7, :cond_15

    .line 328
    .line 329
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 330
    .line 331
    aget v6, v6, v9

    .line 332
    .line 333
    if-nez v6, :cond_15

    .line 334
    .line 335
    if-nez v25, :cond_15

    .line 336
    .line 337
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 338
    .line 339
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 340
    .line 341
    if-ne v7, v0, :cond_15

    .line 342
    .line 343
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 344
    .line 345
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 346
    .line 347
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    neg-int v8, v8

    .line 352
    const/4 v15, 0x5

    .line 353
    invoke-virtual {v1, v7, v6, v8, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 354
    .line 355
    .line 356
    goto :goto_11

    .line 357
    :cond_15
    const/4 v15, 0x5

    .line 358
    if-eqz v25, :cond_16

    .line 359
    .line 360
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 361
    .line 362
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 363
    .line 364
    if-ne v7, v0, :cond_16

    .line 365
    .line 366
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 367
    .line 368
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 369
    .line 370
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    neg-int v8, v8

    .line 375
    const/4 v14, 0x4

    .line 376
    invoke-virtual {v1, v7, v6, v8, v14}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 377
    .line 378
    .line 379
    :cond_16
    :goto_11
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 380
    .line 381
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 382
    .line 383
    aget-object v5, v7, v5

    .line 384
    .line 385
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 386
    .line 387
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 388
    .line 389
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    neg-int v4, v4

    .line 394
    const/4 v7, 0x6

    .line 395
    invoke-virtual {v1, v6, v5, v4, v7}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 396
    .line 397
    .line 398
    goto :goto_12

    .line 399
    :cond_17
    const/4 v15, 0x5

    .line 400
    :goto_12
    if-eqz v24, :cond_18

    .line 401
    .line 402
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 403
    .line 404
    add-int/lit8 v4, p3, 0x1

    .line 405
    .line 406
    aget-object v0, v0, v4

    .line 407
    .line 408
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 409
    .line 410
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 411
    .line 412
    aget-object v4, v5, v4

    .line 413
    .line 414
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    const/16 v6, 0x8

    .line 421
    .line 422
    invoke-virtual {v1, v0, v5, v4, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 423
    .line 424
    .line 425
    :cond_18
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 426
    .line 427
    if-eqz v0, :cond_1e

    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 430
    .line 431
    .line 432
    move-result v4

    .line 433
    const/4 v5, 0x1

    .line 434
    if-le v4, v5, :cond_1e

    .line 435
    .line 436
    iget-boolean v5, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 437
    .line 438
    if-eqz v5, :cond_19

    .line 439
    .line 440
    iget-boolean v5, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 441
    .line 442
    if-nez v5, :cond_19

    .line 443
    .line 444
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 445
    .line 446
    int-to-float v5, v5

    .line 447
    move/from16 v30, v5

    .line 448
    .line 449
    goto :goto_13

    .line 450
    :cond_19
    move/from16 v30, v19

    .line 451
    .line 452
    :goto_13
    const/4 v5, 0x0

    .line 453
    move/from16 v29, v5

    .line 454
    .line 455
    move-object/from16 v6, v22

    .line 456
    .line 457
    const/4 v7, 0x0

    .line 458
    :goto_14
    if-ge v7, v4, :cond_1e

    .line 459
    .line 460
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v8

    .line 464
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 465
    .line 466
    iget-object v14, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 467
    .line 468
    aget v14, v14, v9

    .line 469
    .line 470
    cmpg-float v19, v14, v5

    .line 471
    .line 472
    if-gez v19, :cond_1b

    .line 473
    .line 474
    iget-boolean v14, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 475
    .line 476
    if-eqz v14, :cond_1a

    .line 477
    .line 478
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 479
    .line 480
    add-int/lit8 v14, p3, 0x1

    .line 481
    .line 482
    aget-object v14, v8, v14

    .line 483
    .line 484
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 485
    .line 486
    aget-object v8, v8, p3

    .line 487
    .line 488
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 489
    .line 490
    move/from16 p0, v5

    .line 491
    .line 492
    const/4 v5, 0x4

    .line 493
    const/4 v15, 0x0

    .line 494
    invoke-virtual {v1, v14, v8, v15, v5}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 495
    .line 496
    .line 497
    move v5, v15

    .line 498
    goto :goto_17

    .line 499
    :cond_1a
    move/from16 p0, v5

    .line 500
    .line 501
    const/4 v5, 0x4

    .line 502
    const/high16 v14, 0x3f800000    # 1.0f

    .line 503
    .line 504
    :goto_15
    move/from16 v31, v14

    .line 505
    .line 506
    goto :goto_16

    .line 507
    :cond_1b
    move/from16 p0, v5

    .line 508
    .line 509
    const/4 v5, 0x4

    .line 510
    goto :goto_15

    .line 511
    :goto_16
    cmpl-float v14, v31, p0

    .line 512
    .line 513
    if-nez v14, :cond_1c

    .line 514
    .line 515
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 516
    .line 517
    add-int/lit8 v14, p3, 0x1

    .line 518
    .line 519
    aget-object v14, v8, v14

    .line 520
    .line 521
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 522
    .line 523
    aget-object v8, v8, p3

    .line 524
    .line 525
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 526
    .line 527
    const/4 v5, 0x0

    .line 528
    const/16 v15, 0x8

    .line 529
    .line 530
    invoke-virtual {v1, v14, v8, v5, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 531
    .line 532
    .line 533
    :goto_17
    move-object/from16 v19, v0

    .line 534
    .line 535
    goto :goto_19

    .line 536
    :cond_1c
    const/4 v5, 0x0

    .line 537
    if-eqz v6, :cond_1d

    .line 538
    .line 539
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 540
    .line 541
    aget-object v14, v6, p3

    .line 542
    .line 543
    iget-object v14, v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 544
    .line 545
    add-int/lit8 v15, p3, 0x1

    .line 546
    .line 547
    aget-object v6, v6, v15

    .line 548
    .line 549
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 550
    .line 551
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 552
    .line 553
    move-object/from16 v19, v0

    .line 554
    .line 555
    aget-object v0, v5, p3

    .line 556
    .line 557
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 558
    .line 559
    aget-object v5, v5, v15

    .line 560
    .line 561
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 562
    .line 563
    invoke-virtual {v1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 564
    .line 565
    .line 566
    move-result-object v28

    .line 567
    move-object/from16 v34, v0

    .line 568
    .line 569
    move-object/from16 v35, v5

    .line 570
    .line 571
    move-object/from16 v33, v6

    .line 572
    .line 573
    move-object/from16 v32, v14

    .line 574
    .line 575
    invoke-virtual/range {v28 .. v35}, Landroidx/constraintlayout/core/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;

    .line 576
    .line 577
    .line 578
    move-object/from16 v0, v28

    .line 579
    .line 580
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 581
    .line 582
    .line 583
    goto :goto_18

    .line 584
    :cond_1d
    move-object/from16 v19, v0

    .line 585
    .line 586
    :goto_18
    move-object v6, v8

    .line 587
    move/from16 v29, v31

    .line 588
    .line 589
    :goto_19
    add-int/lit8 v7, v7, 0x1

    .line 590
    .line 591
    move/from16 v5, p0

    .line 592
    .line 593
    move-object/from16 v0, v19

    .line 594
    .line 595
    const/4 v15, 0x5

    .line 596
    goto/16 :goto_14

    .line 597
    .line 598
    :cond_1e
    if-eqz v12, :cond_25

    .line 599
    .line 600
    if-eq v12, v13, :cond_1f

    .line 601
    .line 602
    if-eqz v25, :cond_25

    .line 603
    .line 604
    :cond_1f
    iget-object v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 605
    .line 606
    aget-object v0, v0, p3

    .line 607
    .line 608
    iget-object v2, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 609
    .line 610
    add-int/lit8 v4, p3, 0x1

    .line 611
    .line 612
    aget-object v2, v2, v4

    .line 613
    .line 614
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 615
    .line 616
    if-eqz v0, :cond_20

    .line 617
    .line 618
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 619
    .line 620
    goto :goto_1a

    .line 621
    :cond_20
    move-object/from16 v0, v22

    .line 622
    .line 623
    :goto_1a
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 624
    .line 625
    if-eqz v5, :cond_21

    .line 626
    .line 627
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 628
    .line 629
    goto :goto_1b

    .line 630
    :cond_21
    move-object/from16 v5, v22

    .line 631
    .line 632
    :goto_1b
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 633
    .line 634
    aget-object v6, v6, p3

    .line 635
    .line 636
    if-eqz v13, :cond_22

    .line 637
    .line 638
    iget-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 639
    .line 640
    aget-object v2, v2, v4

    .line 641
    .line 642
    :cond_22
    if-eqz v0, :cond_24

    .line 643
    .line 644
    if-eqz v5, :cond_24

    .line 645
    .line 646
    if-nez v9, :cond_23

    .line 647
    .line 648
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 649
    .line 650
    :goto_1c
    move v4, v3

    .line 651
    goto :goto_1d

    .line 652
    :cond_23
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 653
    .line 654
    goto :goto_1c

    .line 655
    :goto_1d
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 660
    .line 661
    .line 662
    move-result v7

    .line 663
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 664
    .line 665
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 666
    .line 667
    const/4 v8, 0x7

    .line 668
    move-object/from16 v36, v2

    .line 669
    .line 670
    move-object v2, v0

    .line 671
    move-object v0, v1

    .line 672
    move-object v1, v6

    .line 673
    move-object/from16 v6, v36

    .line 674
    .line 675
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 676
    .line 677
    .line 678
    :cond_24
    move-object/from16 v0, p1

    .line 679
    .line 680
    goto/16 :goto_32

    .line 681
    .line 682
    :cond_25
    if-eqz v27, :cond_37

    .line 683
    .line 684
    if-eqz v12, :cond_37

    .line 685
    .line 686
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 687
    .line 688
    if-lez v0, :cond_26

    .line 689
    .line 690
    iget v1, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 691
    .line 692
    if-ne v1, v0, :cond_26

    .line 693
    .line 694
    const/16 v18, 0x1

    .line 695
    .line 696
    goto :goto_1e

    .line 697
    :cond_26
    const/16 v18, 0x0

    .line 698
    .line 699
    :goto_1e
    move-object v14, v12

    .line 700
    move-object v15, v14

    .line 701
    :goto_1f
    if-eqz v14, :cond_24

    .line 702
    .line 703
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 704
    .line 705
    aget-object v0, v0, v9

    .line 706
    .line 707
    :goto_20
    if-eqz v0, :cond_27

    .line 708
    .line 709
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    const/16 v6, 0x8

    .line 714
    .line 715
    if-ne v1, v6, :cond_28

    .line 716
    .line 717
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 718
    .line 719
    aget-object v0, v0, v9

    .line 720
    .line 721
    goto :goto_20

    .line 722
    :cond_27
    const/16 v6, 0x8

    .line 723
    .line 724
    :cond_28
    if-nez v0, :cond_2a

    .line 725
    .line 726
    if-ne v14, v13, :cond_29

    .line 727
    .line 728
    goto :goto_22

    .line 729
    :cond_29
    move-object/from16 v19, v0

    .line 730
    .line 731
    move v9, v6

    .line 732
    :goto_21
    const/16 v21, 0x5

    .line 733
    .line 734
    goto/16 :goto_28

    .line 735
    .line 736
    :cond_2a
    :goto_22
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 737
    .line 738
    aget-object v1, v1, p3

    .line 739
    .line 740
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 741
    .line 742
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 743
    .line 744
    if-eqz v3, :cond_2b

    .line 745
    .line 746
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 747
    .line 748
    goto :goto_23

    .line 749
    :cond_2b
    move-object/from16 v3, v22

    .line 750
    .line 751
    :goto_23
    if-eq v15, v14, :cond_2c

    .line 752
    .line 753
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 754
    .line 755
    add-int/lit8 v4, p3, 0x1

    .line 756
    .line 757
    aget-object v3, v3, v4

    .line 758
    .line 759
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 760
    .line 761
    goto :goto_24

    .line 762
    :cond_2c
    if-ne v14, v12, :cond_2e

    .line 763
    .line 764
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 765
    .line 766
    aget-object v3, v3, p3

    .line 767
    .line 768
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 769
    .line 770
    if-eqz v3, :cond_2d

    .line 771
    .line 772
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 773
    .line 774
    goto :goto_24

    .line 775
    :cond_2d
    move-object/from16 v3, v22

    .line 776
    .line 777
    :cond_2e
    :goto_24
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 782
    .line 783
    add-int/lit8 v5, p3, 0x1

    .line 784
    .line 785
    aget-object v4, v4, v5

    .line 786
    .line 787
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 788
    .line 789
    .line 790
    move-result v4

    .line 791
    if-eqz v0, :cond_2f

    .line 792
    .line 793
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 794
    .line 795
    aget-object v7, v7, p3

    .line 796
    .line 797
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 798
    .line 799
    goto :goto_25

    .line 800
    :cond_2f
    iget-object v7, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 801
    .line 802
    aget-object v7, v7, v5

    .line 803
    .line 804
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 805
    .line 806
    if-eqz v7, :cond_30

    .line 807
    .line 808
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 809
    .line 810
    goto :goto_25

    .line 811
    :cond_30
    move-object/from16 v8, v22

    .line 812
    .line 813
    :goto_25
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 814
    .line 815
    aget-object v6, v6, v5

    .line 816
    .line 817
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 818
    .line 819
    if-eqz v7, :cond_31

    .line 820
    .line 821
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 822
    .line 823
    .line 824
    move-result v7

    .line 825
    add-int/2addr v4, v7

    .line 826
    :cond_31
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 827
    .line 828
    aget-object v7, v7, v5

    .line 829
    .line 830
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 831
    .line 832
    .line 833
    move-result v7

    .line 834
    add-int/2addr v7, v1

    .line 835
    if-eqz v2, :cond_35

    .line 836
    .line 837
    if-eqz v3, :cond_35

    .line 838
    .line 839
    if-eqz v8, :cond_35

    .line 840
    .line 841
    if-eqz v6, :cond_35

    .line 842
    .line 843
    if-ne v14, v12, :cond_32

    .line 844
    .line 845
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 846
    .line 847
    aget-object v1, v1, p3

    .line 848
    .line 849
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 850
    .line 851
    .line 852
    move-result v7

    .line 853
    :cond_32
    if-ne v14, v13, :cond_33

    .line 854
    .line 855
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 856
    .line 857
    aget-object v1, v1, v5

    .line 858
    .line 859
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 860
    .line 861
    .line 862
    move-result v4

    .line 863
    :cond_33
    move-object v5, v8

    .line 864
    if-eqz v18, :cond_34

    .line 865
    .line 866
    const/16 v8, 0x8

    .line 867
    .line 868
    :goto_26
    move-object v1, v2

    .line 869
    move-object v2, v3

    .line 870
    move v3, v7

    .line 871
    move v7, v4

    .line 872
    goto :goto_27

    .line 873
    :cond_34
    const/4 v8, 0x5

    .line 874
    goto :goto_26

    .line 875
    :goto_27
    const/high16 v4, 0x3f000000    # 0.5f

    .line 876
    .line 877
    move-object/from16 v19, v0

    .line 878
    .line 879
    const/16 v9, 0x8

    .line 880
    .line 881
    const/16 v21, 0x5

    .line 882
    .line 883
    move-object/from16 v0, p1

    .line 884
    .line 885
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 886
    .line 887
    .line 888
    goto :goto_28

    .line 889
    :cond_35
    move-object/from16 v19, v0

    .line 890
    .line 891
    const/16 v9, 0x8

    .line 892
    .line 893
    goto/16 :goto_21

    .line 894
    .line 895
    :goto_28
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    if-eq v0, v9, :cond_36

    .line 900
    .line 901
    move-object v15, v14

    .line 902
    :cond_36
    move/from16 v9, p2

    .line 903
    .line 904
    move-object/from16 v14, v19

    .line 905
    .line 906
    goto/16 :goto_1f

    .line 907
    .line 908
    :cond_37
    const/16 v9, 0x8

    .line 909
    .line 910
    if-eqz v16, :cond_24

    .line 911
    .line 912
    if-eqz v12, :cond_24

    .line 913
    .line 914
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 915
    .line 916
    if-lez v0, :cond_38

    .line 917
    .line 918
    iget v1, v2, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 919
    .line 920
    if-ne v1, v0, :cond_38

    .line 921
    .line 922
    const/16 v18, 0x1

    .line 923
    .line 924
    goto :goto_29

    .line 925
    :cond_38
    const/16 v18, 0x0

    .line 926
    .line 927
    :goto_29
    move-object v14, v12

    .line 928
    move-object v15, v14

    .line 929
    :goto_2a
    if-eqz v14, :cond_44

    .line 930
    .line 931
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 932
    .line 933
    aget-object v0, v0, p2

    .line 934
    .line 935
    :goto_2b
    if-eqz v0, :cond_39

    .line 936
    .line 937
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 938
    .line 939
    .line 940
    move-result v1

    .line 941
    if-ne v1, v9, :cond_39

    .line 942
    .line 943
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 944
    .line 945
    aget-object v0, v0, p2

    .line 946
    .line 947
    goto :goto_2b

    .line 948
    :cond_39
    if-eq v14, v12, :cond_42

    .line 949
    .line 950
    if-eq v14, v13, :cond_42

    .line 951
    .line 952
    if-eqz v0, :cond_42

    .line 953
    .line 954
    if-ne v0, v13, :cond_3a

    .line 955
    .line 956
    move-object/from16 v0, v22

    .line 957
    .line 958
    :cond_3a
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 959
    .line 960
    aget-object v1, v1, p3

    .line 961
    .line 962
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 963
    .line 964
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 965
    .line 966
    if-eqz v3, :cond_3b

    .line 967
    .line 968
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 969
    .line 970
    :cond_3b
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 971
    .line 972
    add-int/lit8 v4, p3, 0x1

    .line 973
    .line 974
    aget-object v3, v3, v4

    .line 975
    .line 976
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 977
    .line 978
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 979
    .line 980
    .line 981
    move-result v1

    .line 982
    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 983
    .line 984
    aget-object v5, v5, v4

    .line 985
    .line 986
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 987
    .line 988
    .line 989
    move-result v5

    .line 990
    if-eqz v0, :cond_3d

    .line 991
    .line 992
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 993
    .line 994
    aget-object v6, v6, p3

    .line 995
    .line 996
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 997
    .line 998
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 999
    .line 1000
    if-eqz v8, :cond_3c

    .line 1001
    .line 1002
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1003
    .line 1004
    goto :goto_2d

    .line 1005
    :cond_3c
    move-object/from16 v8, v22

    .line 1006
    .line 1007
    goto :goto_2d

    .line 1008
    :cond_3d
    iget-object v6, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1009
    .line 1010
    aget-object v6, v6, p3

    .line 1011
    .line 1012
    if-eqz v6, :cond_3e

    .line 1013
    .line 1014
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1015
    .line 1016
    goto :goto_2c

    .line 1017
    :cond_3e
    move-object/from16 v7, v22

    .line 1018
    .line 1019
    :goto_2c
    iget-object v8, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1020
    .line 1021
    aget-object v8, v8, v4

    .line 1022
    .line 1023
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1024
    .line 1025
    :goto_2d
    if-eqz v6, :cond_3f

    .line 1026
    .line 1027
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1028
    .line 1029
    .line 1030
    move-result v6

    .line 1031
    add-int/2addr v5, v6

    .line 1032
    :cond_3f
    iget-object v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1033
    .line 1034
    aget-object v4, v6, v4

    .line 1035
    .line 1036
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1037
    .line 1038
    .line 1039
    move-result v4

    .line 1040
    add-int/2addr v4, v1

    .line 1041
    move-object v6, v8

    .line 1042
    if-eqz v18, :cond_40

    .line 1043
    .line 1044
    move v8, v9

    .line 1045
    goto :goto_2e

    .line 1046
    :cond_40
    const/4 v8, 0x4

    .line 1047
    :goto_2e
    if-eqz v2, :cond_41

    .line 1048
    .line 1049
    if-eqz v3, :cond_41

    .line 1050
    .line 1051
    if-eqz v7, :cond_41

    .line 1052
    .line 1053
    if-eqz v6, :cond_41

    .line 1054
    .line 1055
    move-object v1, v2

    .line 1056
    move-object v2, v3

    .line 1057
    move v3, v4

    .line 1058
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1059
    .line 1060
    move-object/from16 v19, v7

    .line 1061
    .line 1062
    move v7, v5

    .line 1063
    move-object/from16 v5, v19

    .line 1064
    .line 1065
    move-object/from16 v19, v0

    .line 1066
    .line 1067
    const/16 v20, 0x4

    .line 1068
    .line 1069
    move-object/from16 v0, p1

    .line 1070
    .line 1071
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1072
    .line 1073
    .line 1074
    move-object v1, v0

    .line 1075
    goto :goto_2f

    .line 1076
    :cond_41
    move-object/from16 v1, p1

    .line 1077
    .line 1078
    move-object/from16 v19, v0

    .line 1079
    .line 1080
    const/16 v20, 0x4

    .line 1081
    .line 1082
    :goto_2f
    move-object/from16 v0, v19

    .line 1083
    .line 1084
    goto :goto_30

    .line 1085
    :cond_42
    move-object/from16 v1, p1

    .line 1086
    .line 1087
    const/16 v20, 0x4

    .line 1088
    .line 1089
    :goto_30
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    if-eq v2, v9, :cond_43

    .line 1094
    .line 1095
    move-object v15, v14

    .line 1096
    :cond_43
    move-object v14, v0

    .line 1097
    goto/16 :goto_2a

    .line 1098
    .line 1099
    :cond_44
    move-object/from16 v1, p1

    .line 1100
    .line 1101
    iget-object v0, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1102
    .line 1103
    aget-object v0, v0, p3

    .line 1104
    .line 1105
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1106
    .line 1107
    aget-object v2, v2, p3

    .line 1108
    .line 1109
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1110
    .line 1111
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1112
    .line 1113
    add-int/lit8 v4, p3, 0x1

    .line 1114
    .line 1115
    aget-object v9, v3, v4

    .line 1116
    .line 1117
    iget-object v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1118
    .line 1119
    aget-object v3, v3, v4

    .line 1120
    .line 1121
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1122
    .line 1123
    const/4 v8, 0x5

    .line 1124
    if-eqz v2, :cond_45

    .line 1125
    .line 1126
    if-eq v12, v13, :cond_46

    .line 1127
    .line 1128
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1129
    .line 1130
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1131
    .line 1132
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1133
    .line 1134
    .line 1135
    move-result v0

    .line 1136
    invoke-virtual {v1, v3, v2, v0, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 1137
    .line 1138
    .line 1139
    :cond_45
    move-object v0, v1

    .line 1140
    goto :goto_31

    .line 1141
    :cond_46
    if-eqz v10, :cond_45

    .line 1142
    .line 1143
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1144
    .line 1145
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1146
    .line 1147
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1152
    .line 1153
    iget-object v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1154
    .line 1155
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1156
    .line 1157
    .line 1158
    move-result v7

    .line 1159
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1160
    .line 1161
    move-object/from16 v0, p1

    .line 1162
    .line 1163
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1164
    .line 1165
    .line 1166
    :goto_31
    if-eqz v10, :cond_47

    .line 1167
    .line 1168
    if-eq v12, v13, :cond_47

    .line 1169
    .line 1170
    iget-object v1, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1171
    .line 1172
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1173
    .line 1174
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1175
    .line 1176
    .line 1177
    move-result v3

    .line 1178
    neg-int v3, v3

    .line 1179
    invoke-virtual {v0, v1, v2, v3, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 1180
    .line 1181
    .line 1182
    :cond_47
    :goto_32
    if-nez v27, :cond_48

    .line 1183
    .line 1184
    if-eqz v16, :cond_4f

    .line 1185
    .line 1186
    :cond_48
    if-eqz v12, :cond_4f

    .line 1187
    .line 1188
    if-eq v12, v13, :cond_4f

    .line 1189
    .line 1190
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1191
    .line 1192
    aget-object v2, v1, p3

    .line 1193
    .line 1194
    if-nez v13, :cond_49

    .line 1195
    .line 1196
    move-object v13, v12

    .line 1197
    :cond_49
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1198
    .line 1199
    const/16 v17, 0x1

    .line 1200
    .line 1201
    add-int/lit8 v4, p3, 0x1

    .line 1202
    .line 1203
    aget-object v3, v3, v4

    .line 1204
    .line 1205
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1206
    .line 1207
    if-eqz v5, :cond_4a

    .line 1208
    .line 1209
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1210
    .line 1211
    goto :goto_33

    .line 1212
    :cond_4a
    move-object/from16 v5, v22

    .line 1213
    .line 1214
    :goto_33
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1215
    .line 1216
    if-eqz v6, :cond_4b

    .line 1217
    .line 1218
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1219
    .line 1220
    goto :goto_34

    .line 1221
    :cond_4b
    move-object/from16 v6, v22

    .line 1222
    .line 1223
    :goto_34
    if-eq v11, v13, :cond_4d

    .line 1224
    .line 1225
    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1226
    .line 1227
    aget-object v6, v6, v4

    .line 1228
    .line 1229
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1230
    .line 1231
    if-eqz v6, :cond_4c

    .line 1232
    .line 1233
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1234
    .line 1235
    move-object/from16 v22, v6

    .line 1236
    .line 1237
    :cond_4c
    move-object/from16 v6, v22

    .line 1238
    .line 1239
    :cond_4d
    if-ne v12, v13, :cond_4e

    .line 1240
    .line 1241
    aget-object v3, v1, v4

    .line 1242
    .line 1243
    :cond_4e
    if-eqz v5, :cond_4f

    .line 1244
    .line 1245
    if-eqz v6, :cond_4f

    .line 1246
    .line 1247
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1248
    .line 1249
    .line 1250
    move-result v1

    .line 1251
    iget-object v7, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1252
    .line 1253
    aget-object v4, v7, v4

    .line 1254
    .line 1255
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1256
    .line 1257
    .line 1258
    move-result v7

    .line 1259
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1260
    .line 1261
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1262
    .line 1263
    const/4 v8, 0x5

    .line 1264
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1265
    .line 1266
    move-object/from16 v36, v3

    .line 1267
    .line 1268
    move v3, v1

    .line 1269
    move-object v1, v2

    .line 1270
    move-object v2, v5

    .line 1271
    move-object v5, v6

    .line 1272
    move-object/from16 v6, v36

    .line 1273
    .line 1274
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1275
    .line 1276
    .line 1277
    :cond_4f
    return-void
.end method

.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1278
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1279
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    move v3, v0

    goto :goto_0

    .line 1280
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1281
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/4 v3, 0x2

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1282
    aget-object v4, v2, v0

    .line 1283
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ChainHead;->define()V

    if-eqz p2, :cond_1

    .line 1284
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1285
    :cond_1
    invoke-static {p0, p1, p3, v3, v4}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;IILandroidx/constraintlayout/core/widgets/ChainHead;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
