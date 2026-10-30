.class public final Ls1/i0;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final synthetic d:Ls1/q0;


# direct methods
.method public constructor <init>(Ls1/q0;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ls1/i0;->d:Ls1/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ls1/i0;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x0

    .line 25
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    check-cast v1, Lj0/e;

    .line 34
    .line 35
    invoke-static {v1}, Lj0/f;->d(Lj0/e;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Ls1/i0;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object p2, p0, Ls1/i0;->b:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ls1/i0;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    check-cast v4, Lj0/e;

    .line 34
    .line 35
    invoke-static {v4}, Ls1/q0;->b(Lj0/e;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    iget-object p2, p0, Ls1/i0;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lj0/e;

    .line 8
    .line 9
    new-instance p2, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iget-object p3, p0, Ls1/i0;->d:Ls1/q0;

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-virtual {p3, v0}, Ls1/q0;->l(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-virtual {p3, v2}, Ls1/q0;->l(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p3, v0}, Ls1/q0;->l(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p3, v2}, Ls1/q0;->l(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x10

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0xc

    .line 56
    .line 57
    invoke-virtual {p3, v2}, Ls1/q0;->l(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    invoke-virtual {p3, v4}, Ls1/q0;->l(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    const/16 v6, 0xe

    .line 68
    .line 69
    invoke-virtual {p3, v6}, Ls1/q0;->l(I)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    invoke-virtual {p3, v4}, Ls1/q0;->l(I)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    invoke-virtual {v0, v3, v5, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    .line 79
    .line 80
    const v3, -0xe7d9cf

    .line 81
    .line 82
    .line 83
    const v5, -0xd0baab

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v3, v1, v5}, Ls1/q0;->G(III)Landroid/graphics/drawable/GradientDrawable;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Landroid/widget/FrameLayout;

    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    const v5, -0x17100d

    .line 103
    .line 104
    .line 105
    const v7, -0x876f61

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v5, v6, v7}, Ls1/q0;->G(III)Landroid/graphics/drawable/GradientDrawable;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    iget-object v5, p1, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    const/4 v7, 0x3

    .line 118
    const/16 v8, 0x11

    .line 119
    .line 120
    const/4 v9, -0x1

    .line 121
    if-eqz v5, :cond_0

    .line 122
    .line 123
    new-instance v5, Landroid/widget/ImageView;

    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-direct {v5, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    iget-object v10, p1, Lj0/e;->j:Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    .line 136
    .line 137
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 138
    .line 139
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    .line 141
    .line 142
    const/4 v10, 0x7

    .line 143
    invoke-virtual {p3, v10}, Ls1/q0;->l(I)I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    .line 149
    .line 150
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    .line 152
    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    new-array v5, v7, [B

    .line 160
    .line 161
    fill-array-data v5, :array_0

    .line 162
    .line 163
    .line 164
    new-array v10, v4, [B

    .line 165
    .line 166
    fill-array-data v10, :array_1

    .line 167
    .line 168
    .line 169
    invoke-static {v5, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    const v10, -0xe48a69

    .line 174
    .line 175
    .line 176
    const/16 v11, 0x1b

    .line 177
    .line 178
    invoke-virtual {p3, v5, v11, v10}, Ls1/q0;->P(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    .line 184
    .line 185
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    .line 187
    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    :goto_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .line 195
    const/16 v10, 0x3a

    .line 196
    .line 197
    invoke-virtual {p3, v10}, Ls1/q0;->l(I)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    invoke-virtual {p3, v10}, Ls1/q0;->l(I)I

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Ls1/q0;->V()Landroid/widget/LinearLayout;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, v6}, Ls1/q0;->l(I)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p3, v4}, Ls1/q0;->l(I)I

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    const/4 v6, 0x0

    .line 227
    invoke-virtual {v3, v1, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    .line 229
    .line 230
    invoke-static {p1}, Ls1/q0;->b(Lj0/e;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {p3, v1, v8, v9}, Ls1/q0;->P(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 239
    .line 240
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    .line 242
    .line 243
    const/4 v5, 0x1

    .line 244
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 245
    .line 246
    .line 247
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 248
    .line 249
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p1, Lj0/e;->a:Lj0/d;

    .line 256
    .line 257
    sget-object v1, Lj0/d;->c:Lj0/d;

    .line 258
    .line 259
    if-ne p1, v1, :cond_1

    .line 260
    .line 261
    const/16 p1, 0x14

    .line 262
    .line 263
    new-array p1, p1, [B

    .line 264
    .line 265
    fill-array-data p1, :array_2

    .line 266
    .line 267
    .line 268
    new-array v1, v4, [B

    .line 269
    .line 270
    fill-array-data v1, :array_3

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    goto :goto_1

    .line 278
    :cond_1
    sget-object v1, Lj0/d;->d:Lj0/d;

    .line 279
    .line 280
    if-ne p1, v1, :cond_2

    .line 281
    .line 282
    const/16 p1, 0x36

    .line 283
    .line 284
    new-array p1, p1, [B

    .line 285
    .line 286
    fill-array-data p1, :array_4

    .line 287
    .line 288
    .line 289
    new-array v1, v4, [B

    .line 290
    .line 291
    fill-array-data v1, :array_5

    .line 292
    .line 293
    .line 294
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    goto :goto_1

    .line 299
    :cond_2
    sget-object v1, Lj0/d;->e:Lj0/d;

    .line 300
    .line 301
    if-ne p1, v1, :cond_3

    .line 302
    .line 303
    const/16 p1, 0x2f

    .line 304
    .line 305
    new-array p1, p1, [B

    .line 306
    .line 307
    fill-array-data p1, :array_6

    .line 308
    .line 309
    .line 310
    new-array v1, v4, [B

    .line 311
    .line 312
    fill-array-data v1, :array_7

    .line 313
    .line 314
    .line 315
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    goto :goto_1

    .line 320
    :cond_3
    const/16 p1, 0x1f

    .line 321
    .line 322
    new-array p1, p1, [B

    .line 323
    .line 324
    fill-array-data p1, :array_8

    .line 325
    .line 326
    .line 327
    new-array v1, v4, [B

    .line 328
    .line 329
    fill-array-data v1, :array_9

    .line 330
    .line 331
    .line 332
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    :goto_1
    const v1, -0x6c5647

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3, p1, v2, v1}, Ls1/q0;->P(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    .line 348
    .line 349
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 350
    .line 351
    const/high16 v1, 0x3f800000    # 1.0f

    .line 352
    .line 353
    invoke-direct {p1, v6, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    new-array p1, v7, [B

    .line 360
    .line 361
    fill-array-data p1, :array_a

    .line 362
    .line 363
    .line 364
    new-array v1, v4, [B

    .line 365
    .line 366
    fill-array-data v1, :array_b

    .line 367
    .line 368
    .line 369
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    const/16 v1, 0x1a

    .line 374
    .line 375
    const v2, -0x982d0c

    .line 376
    .line 377
    .line 378
    invoke-virtual {p3, p1, v1, v2}, Ls1/q0;->P(Ljava/lang/String;II)Landroid/widget/TextView;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 383
    .line 384
    .line 385
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 386
    .line 387
    const/16 v2, 0x2a

    .line 388
    .line 389
    invoke-virtual {p3, v2}, Ls1/q0;->l(I)I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    invoke-direct {v1, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    .line 398
    .line 399
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 400
    .line 401
    const/16 v1, 0x4c

    .line 402
    .line 403
    invoke-virtual {p3, v1}, Ls1/q0;->l(I)I

    .line 404
    .line 405
    .line 406
    move-result p3

    .line 407
    invoke-direct {p1, v9, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .line 412
    .line 413
    return-object p2

    .line 414
    nop

    .line 415
    :array_0
    .array-data 1
        0x1bt
        -0x6t
        -0x37t
    .end array-data

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :array_1
    .array-data 1
        -0x7t
        0x66t
        0x6ft
        0x2at
        -0x29t
        0x25t
        0x55t
        0x4at
    .end array-data

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    :array_2
    .array-data 1
        0x6et
        0x45t
        0x64t
        0x10t
        0x77t
        0x43t
        -0x5bt
        0x39t
        0x6et
        0x64t
        0x65t
        0x26t
        0x77t
        0x4et
        -0x5bt
        0x3ft
        0x6et
        0x62t
        0x65t
        0x25t
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
    :array_3
    .array-data 1
        -0x42t
        -0x26t
        -0x4bt
        -0x70t
        -0x59t
        -0x5t
        0x75t
        -0x7et
    .end array-data

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    :array_4
    .array-data 1
        -0x6at
        0x48t
        -0x7t
        0x7ft
        0x75t
        0x4dt
        0x61t
        -0x1t
        -0x6at
        0x6at
        -0x7t
        0x7ct
        0x75t
        0x41t
        0x60t
        -0x38t
        -0x6at
        0x6at
        -0x8t
        0x4et
        -0x7bt
        0x20t
        0x31t
        -0x62t
        -0xat
        0x2t
        -0x62t
        0x11t
        0x11t
        0x21t
        0x4t
        -0x62t
        -0x3t
        0x2t
        -0x64t
        0x11t
        0x18t
        0x21t
        0x9t
        -0x61t
        -0x37t
        -0xet
        -0x8t
        0x4ct
        0x75t
        0x4bt
        0x60t
        -0x32t
        -0x6at
        0x62t
        -0x7t
        0x7ct
        0x75t
        0x41t
    .end array-data

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    nop

    .line 483
    :array_5
    .array-data 1
        0x46t
        -0x2et
        0x29t
        -0x3ft
        -0x5bt
        -0xft
        -0x4ft
        0x4et
    .end array-data

    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    :array_6
    .array-data 1
        0x6t
        -0xdt
        -0x73t
        -0x3bt
        -0x5bt
        0x4t
        0x3at
        0x11t
        0x6t
        -0x25t
        -0x73t
        -0x3bt
        -0x5bt
        0xdt
        0x3bt
        0x2dt
        0x7t
        -0x12t
        -0x73t
        -0x32t
        -0x5bt
        0x4t
        0x3at
        0x11t
        0x7t
        -0x13t
        -0x73t
        -0x3ft
        -0x5bt
        0xft
        0x3at
        0x12t
        -0xat
        -0x44t
        -0x19t
        -0x55t
        -0x35t
        0x6ft
        0x57t
        0x4dt
        0x66t
        -0x44t
        -0x20t
        -0x55t
        -0x3ft
        0x6ft
        0x5bt
    .end array-data

    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_7
    .array-data 1
        -0x2at
        0x6ct
        0x5dt
        0x7bt
        0x75t
        -0x41t
        -0x15t
        -0x63t
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_8
    .array-data 1
        -0x4et
        -0x1bt
        0x60t
        0x6et
        -0x61t
        -0x23t
        -0x5bt
        -0x49t
        -0x4dt
        -0xct
        0x61t
        0x5bt
        -0x62t
        -0x17t
        0x54t
        -0x1bt
        -0x2at
        -0x5ct
        0x4t
        0x35t
        -0x9t
        -0x73t
        -0xbt
        -0x1ct
        -0x20t
        -0x5ct
        0x3t
        0x35t
        -0xat
        -0x74t
        -0x3ft
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    :array_9
    .array-data 1
        0x62t
        0x74t
        -0x4ft
        -0x1bt
        0x4et
        0x5ct
        0x74t
        0x35t
    .end array-data

    :array_a
    .array-data 1
        -0x1et
        -0x13t
        0x42t
    .end array-data

    :array_b
    .array-data 1
        0xdt
        0x51t
        -0x37t
        -0x36t
        0x4et
        0x70t
        -0x4ft
        0x2bt
    .end array-data
.end method
