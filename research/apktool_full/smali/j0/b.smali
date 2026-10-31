.class public final Lj0/b;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj0/b;->b:I

    const v0, 0x7f0c0110

    .line 17
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x7f0c0109

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lj0/b;->b:I

    .line 3
    .line 4
    const v0, 0x7f0c0110

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0c0109

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 0

    .line 1
    int-to-float p0, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p0, p1

    .line 13
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static b(ILandroid/content/Context;)I
    .locals 0

    .line 1
    int-to-float p0, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p0, p1

    .line 13
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method


# virtual methods
.method public final c(IZ)Landroid/widget/LinearLayout;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj0/b;->b:I

    .line 4
    .line 5
    const/16 v2, 0xc1

    .line 6
    .line 7
    const/16 v3, 0xb0

    .line 8
    .line 9
    const/16 v4, 0x9d

    .line 10
    .line 11
    const/16 v5, 0xb

    .line 12
    .line 13
    const/16 v6, 0x92

    .line 14
    .line 15
    const/16 v7, 0x84

    .line 16
    .line 17
    const/16 v8, 0x69

    .line 18
    .line 19
    const v9, 0x7f070184

    .line 20
    .line 21
    .line 22
    const/4 v13, 0x1

    .line 23
    const v14, 0x7f0302ea

    .line 24
    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    const/16 v10, 0x10

    .line 28
    .line 29
    const/16 v16, 0x30

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v11, Landroid/util/TypedValue;

    .line 39
    .line 40
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 44
    .line 45
    .line 46
    move-result-object v12

    .line 47
    invoke-virtual {v12, v14, v11, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    if-eqz v12, :cond_0

    .line 52
    .line 53
    iget v11, v11, Landroid/util/TypedValue;->data:I

    .line 54
    .line 55
    if-eqz v11, :cond_0

    .line 56
    .line 57
    :goto_0
    move v11, v13

    .line 58
    goto :goto_3

    .line 59
    :cond_0
    move-object v11, v1

    .line 60
    :goto_1
    if-eqz v11, :cond_2

    .line 61
    .line 62
    instance-of v12, v11, Lcom/example/navistart/ModernMainActivity;

    .line 63
    .line 64
    if-eqz v12, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    instance-of v12, v11, Landroid/content/ContextWrapper;

    .line 68
    .line 69
    if-nez v12, :cond_3

    .line 70
    .line 71
    :cond_2
    :goto_2
    move v11, v15

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    move-object v12, v11

    .line 74
    check-cast v12, Landroid/content/ContextWrapper;

    .line 75
    .line 76
    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    if-ne v12, v11, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move-object v11, v12

    .line 84
    goto :goto_1

    .line 85
    :goto_3
    new-instance v12, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    .line 95
    .line 96
    if-eqz v11, :cond_6

    .line 97
    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    const/16 v14, 0xa

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    const/4 v14, 0x4

    .line 104
    :goto_4
    invoke-static {v14, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    move v14, v10

    .line 110
    :goto_5
    if-eqz v11, :cond_8

    .line 111
    .line 112
    if-eqz p2, :cond_7

    .line 113
    .line 114
    const/16 v15, 0x8

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_7
    const/4 v15, 0x2

    .line 118
    :goto_6
    invoke-static {v15, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    goto :goto_7

    .line 123
    :cond_8
    move v15, v10

    .line 124
    :goto_7
    invoke-virtual {v12, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    .line 126
    .line 127
    if-eqz v11, :cond_a

    .line 128
    .line 129
    if-eqz p2, :cond_9

    .line 130
    .line 131
    const/16 v14, 0x40

    .line 132
    .line 133
    goto :goto_8

    .line 134
    :cond_9
    move/from16 v14, v16

    .line 135
    .line 136
    :goto_8
    invoke-static {v14, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    invoke-virtual {v12, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 141
    .line 142
    .line 143
    if-eqz p2, :cond_a

    .line 144
    .line 145
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    :cond_a
    new-instance v9, Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Lj0/e;

    .line 158
    .line 159
    iget-object v14, v14, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    if-eqz v14, :cond_b

    .line 162
    .line 163
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .line 165
    .line 166
    :cond_b
    if-eqz v11, :cond_d

    .line 167
    .line 168
    new-instance v14, Landroid/widget/FrameLayout;

    .line 169
    .line 170
    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    .line 174
    .line 175
    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-static {v8, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 183
    .line 184
    .line 185
    invoke-static {v5, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    int-to-float v5, v5

    .line 190
    invoke-virtual {v15, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 191
    .line 192
    .line 193
    invoke-static {v13, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-virtual {v15, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    .line 206
    .line 207
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 208
    .line 209
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    .line 211
    .line 212
    const/4 v2, 0x7

    .line 213
    invoke-static {v2, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 221
    .line 222
    const/4 v3, -0x1

    .line 223
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    if-eqz p2, :cond_c

    .line 230
    .line 231
    move/from16 v2, v16

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_c
    const/16 v2, 0x28

    .line 235
    .line 236
    :goto_9
    invoke-static {v2, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .line 242
    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_d
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 250
    .line 251
    const/16 v3, 0x48

    .line 252
    .line 253
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    :goto_a
    new-instance v2, Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Lj0/e;

    .line 272
    .line 273
    iget-object v3, v3, Lj0/e;->i:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    .line 277
    .line 278
    if-eqz v11, :cond_e

    .line 279
    .line 280
    const/high16 v3, 0x41880000    # 17.0f

    .line 281
    .line 282
    :goto_b
    const/4 v15, 0x2

    .line 283
    goto :goto_c

    .line 284
    :cond_e
    const/high16 v3, 0x41a00000    # 20.0f

    .line 285
    .line 286
    goto :goto_b

    .line 287
    :goto_c
    invoke-virtual {v2, v15, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    .line 292
    .line 293
    if-eqz v11, :cond_f

    .line 294
    .line 295
    const/16 v3, 0xe

    .line 296
    .line 297
    invoke-static {v3, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    :cond_f
    const/4 v3, 0x0

    .line 302
    invoke-virtual {v2, v10, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 303
    .line 304
    .line 305
    if-eqz v11, :cond_12

    .line 306
    .line 307
    const v3, 0x7f050381

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    .line 316
    .line 317
    if-eqz p2, :cond_10

    .line 318
    .line 319
    move/from16 v3, v16

    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_10
    const/16 v3, 0x28

    .line 323
    .line 324
    :goto_d
    invoke-static {v3, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 329
    .line 330
    .line 331
    if-eqz p2, :cond_11

    .line 332
    .line 333
    const/4 v3, 0x3

    .line 334
    move v15, v3

    .line 335
    :cond_11
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 336
    .line 337
    .line 338
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 341
    .line 342
    .line 343
    :cond_12
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    .line 345
    const/4 v4, -0x2

    .line 346
    const/high16 v5, 0x3f800000    # 1.0f

    .line 347
    .line 348
    const/4 v6, 0x0

    .line 349
    invoke-direct {v3, v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    .line 354
    .line 355
    if-eqz v11, :cond_13

    .line 356
    .line 357
    if-nez p2, :cond_13

    .line 358
    .line 359
    new-instance v2, Landroid/widget/TextView;

    .line 360
    .line 361
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    const/4 v3, 0x3

    .line 365
    new-array v3, v3, [B

    .line 366
    .line 367
    fill-array-data v3, :array_0

    .line 368
    .line 369
    .line 370
    const/16 v11, 0x8

    .line 371
    .line 372
    new-array v4, v11, [B

    .line 373
    .line 374
    fill-array-data v4, :array_1

    .line 375
    .line 376
    .line 377
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    const/high16 v3, 0x41900000    # 18.0f

    .line 385
    .line 386
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 387
    .line 388
    .line 389
    const v3, 0x7f05037b

    .line 390
    .line 391
    .line 392
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    .line 398
    .line 399
    const/16 v3, 0x11

    .line 400
    .line 401
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 402
    .line 403
    .line 404
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 405
    .line 406
    const/16 v4, 0x1c

    .line 407
    .line 408
    invoke-static {v4, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    const/16 v5, 0x28

    .line 413
    .line 414
    invoke-static {v5, v1}, Lj0/b;->b(ILandroid/content/Context;)I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    .line 423
    .line 424
    :cond_13
    return-object v12

    .line 425
    :pswitch_0
    const/16 v11, 0x8

    .line 426
    .line 427
    const/4 v15, 0x2

    .line 428
    const/16 v17, 0x28

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    new-instance v12, Landroid/util/TypedValue;

    .line 435
    .line 436
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    invoke-virtual {v11, v14, v12, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    if-eqz v11, :cond_14

    .line 448
    .line 449
    iget v11, v12, Landroid/util/TypedValue;->data:I

    .line 450
    .line 451
    if-eqz v11, :cond_14

    .line 452
    .line 453
    :goto_e
    move v11, v13

    .line 454
    goto :goto_11

    .line 455
    :cond_14
    move-object v11, v1

    .line 456
    :goto_f
    if-eqz v11, :cond_16

    .line 457
    .line 458
    instance-of v12, v11, Lcom/example/navistart/ModernMainActivity;

    .line 459
    .line 460
    if-eqz v12, :cond_15

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_15
    instance-of v12, v11, Landroid/content/ContextWrapper;

    .line 464
    .line 465
    if-nez v12, :cond_17

    .line 466
    .line 467
    :cond_16
    :goto_10
    const/4 v11, 0x0

    .line 468
    goto :goto_11

    .line 469
    :cond_17
    move-object v12, v11

    .line 470
    check-cast v12, Landroid/content/ContextWrapper;

    .line 471
    .line 472
    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 473
    .line 474
    .line 475
    move-result-object v12

    .line 476
    if-ne v12, v11, :cond_18

    .line 477
    .line 478
    goto :goto_10

    .line 479
    :cond_18
    move-object v11, v12

    .line 480
    goto :goto_f

    .line 481
    :goto_11
    new-instance v12, Landroid/widget/LinearLayout;

    .line 482
    .line 483
    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 484
    .line 485
    .line 486
    const/4 v14, 0x0

    .line 487
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 491
    .line 492
    .line 493
    if-eqz v11, :cond_1a

    .line 494
    .line 495
    if-eqz p2, :cond_19

    .line 496
    .line 497
    const/16 v14, 0xa

    .line 498
    .line 499
    goto :goto_12

    .line 500
    :cond_19
    const/4 v14, 0x4

    .line 501
    :goto_12
    invoke-static {v14, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    goto :goto_13

    .line 506
    :cond_1a
    move v14, v10

    .line 507
    :goto_13
    if-eqz v11, :cond_1c

    .line 508
    .line 509
    if-eqz p2, :cond_1b

    .line 510
    .line 511
    const/16 v15, 0x8

    .line 512
    .line 513
    :cond_1b
    invoke-static {v15, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 514
    .line 515
    .line 516
    move-result v15

    .line 517
    goto :goto_14

    .line 518
    :cond_1c
    move v15, v10

    .line 519
    :goto_14
    invoke-virtual {v12, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 520
    .line 521
    .line 522
    if-eqz v11, :cond_1e

    .line 523
    .line 524
    if-eqz p2, :cond_1d

    .line 525
    .line 526
    const/16 v14, 0x40

    .line 527
    .line 528
    goto :goto_15

    .line 529
    :cond_1d
    move/from16 v14, v16

    .line 530
    .line 531
    :goto_15
    invoke-static {v14, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 532
    .line 533
    .line 534
    move-result v14

    .line 535
    invoke-virtual {v12, v14}, Landroid/view/View;->setMinimumHeight(I)V

    .line 536
    .line 537
    .line 538
    if-eqz p2, :cond_1e

    .line 539
    .line 540
    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 541
    .line 542
    .line 543
    :cond_1e
    new-instance v9, Landroid/widget/ImageView;

    .line 544
    .line 545
    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v14

    .line 552
    check-cast v14, Lj0/e;

    .line 553
    .line 554
    iget-object v14, v14, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 555
    .line 556
    if-eqz v14, :cond_1f

    .line 557
    .line 558
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    .line 560
    .line 561
    :cond_1f
    if-eqz v11, :cond_21

    .line 562
    .line 563
    new-instance v14, Landroid/widget/FrameLayout;

    .line 564
    .line 565
    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 566
    .line 567
    .line 568
    new-instance v15, Landroid/graphics/drawable/GradientDrawable;

    .line 569
    .line 570
    invoke-direct {v15}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-static {v8, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    .line 574
    .line 575
    .line 576
    move-result v6

    .line 577
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 578
    .line 579
    .line 580
    invoke-static {v5, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 581
    .line 582
    .line 583
    move-result v5

    .line 584
    int-to-float v5, v5

    .line 585
    invoke-virtual {v15, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 586
    .line 587
    .line 588
    invoke-static {v13, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    invoke-static {v4, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    invoke-virtual {v15, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 600
    .line 601
    .line 602
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 603
    .line 604
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 605
    .line 606
    .line 607
    const/4 v2, 0x7

    .line 608
    invoke-static {v2, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    invoke-virtual {v9, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 613
    .line 614
    .line 615
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 616
    .line 617
    const/4 v3, -0x1

    .line 618
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v14, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    .line 623
    .line 624
    if-eqz p2, :cond_20

    .line 625
    .line 626
    move/from16 v5, v16

    .line 627
    .line 628
    goto :goto_16

    .line 629
    :cond_20
    move/from16 v5, v17

    .line 630
    .line 631
    :goto_16
    invoke-static {v5, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 636
    .line 637
    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v12, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    .line 642
    .line 643
    goto :goto_17

    .line 644
    :cond_21
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 645
    .line 646
    const/16 v3, 0x48

    .line 647
    .line 648
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 655
    .line 656
    .line 657
    :goto_17
    new-instance v2, Landroid/widget/TextView;

    .line 658
    .line 659
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    check-cast v3, Lj0/e;

    .line 667
    .line 668
    iget-object v3, v3, Lj0/e;->i:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 674
    .line 675
    .line 676
    if-eqz v11, :cond_22

    .line 677
    .line 678
    const/16 v3, 0xe

    .line 679
    .line 680
    invoke-static {v3, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 681
    .line 682
    .line 683
    move-result v10

    .line 684
    :cond_22
    const/4 v14, 0x0

    .line 685
    invoke-virtual {v2, v10, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 686
    .line 687
    .line 688
    if-eqz v11, :cond_23

    .line 689
    .line 690
    const v3, 0x7f050381

    .line 691
    .line 692
    .line 693
    goto :goto_18

    .line 694
    :cond_23
    const v3, 0x106000c

    .line 695
    .line 696
    .line 697
    :goto_18
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 698
    .line 699
    .line 700
    move-result v3

    .line 701
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 702
    .line 703
    .line 704
    if-eqz v11, :cond_24

    .line 705
    .line 706
    const/high16 v3, 0x41880000    # 17.0f

    .line 707
    .line 708
    goto :goto_19

    .line 709
    :cond_24
    const/high16 v3, 0x41c80000    # 25.0f

    .line 710
    .line 711
    :goto_19
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 712
    .line 713
    .line 714
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 715
    .line 716
    if-eqz v11, :cond_26

    .line 717
    .line 718
    if-eqz p2, :cond_25

    .line 719
    .line 720
    move/from16 v4, v16

    .line 721
    .line 722
    goto :goto_1a

    .line 723
    :cond_25
    move/from16 v4, v17

    .line 724
    .line 725
    :goto_1a
    invoke-static {v4, v1}, Lj0/b;->a(ILandroid/content/Context;)I

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    goto :goto_1b

    .line 730
    :cond_26
    const/4 v1, -0x2

    .line 731
    :goto_1b
    const/high16 v4, 0x3f800000    # 1.0f

    .line 732
    .line 733
    const/4 v14, 0x0

    .line 734
    invoke-direct {v3, v14, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    .line 739
    .line 740
    return-object v12

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_0
    .array-data 1
        0x30t
        -0x36t
        -0x2et
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    :array_1
    .array-data 1
        -0x2et
        0x5ct
        0x6ct
        -0x54t
        0x38t
        -0x77t
        -0x2dt
        -0x2et
    .end array-data
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget p2, p0, Lj0/b;->b:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p0, p1, p2}, Lj0/b;->c(IZ)Landroid/widget/LinearLayout;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :pswitch_0
    const/4 p2, 0x1

    .line 13
    invoke-virtual {p0, p1, p2}, Lj0/b;->c(IZ)Landroid/widget/LinearLayout;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    iget p2, p0, Lj0/b;->b:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lj0/b;->c(IZ)Landroid/widget/LinearLayout;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :pswitch_0
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p0, p1, p2}, Lj0/b;->c(IZ)Landroid/widget/LinearLayout;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
