.class public final Lm0/i2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lm0/k2;


# direct methods
.method public constructor <init>(Lm0/k2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/i2;->a:Lm0/k2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/i2;->a:Lm0/k2;

    .line 2
    .line 3
    iget-object v0, v0, Lm0/k2;->i:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lm0/h2;

    .line 6
    .line 7
    iget-object v2, v0, Lm0/i2;->a:Lm0/k2;

    .line 8
    .line 9
    iget-object v3, v2, Lm0/k2;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    move/from16 v4, p2

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lm0/j2;

    .line 18
    .line 19
    iget-object v4, v1, Lm0/h2;->a:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v5, v1, Lm0/h2;->c:Landroid/view/View;

    .line 22
    .line 23
    iget-object v6, v1, Lm0/h2;->b:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-gtz v7, :cond_0

    .line 30
    .line 31
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .line 43
    const/high16 v8, 0x42800000    # 64.0f

    .line 44
    .line 45
    mul-float/2addr v7, v8

    .line 46
    float-to-int v7, v7

    .line 47
    :cond_0
    iget-boolean v8, v3, Lm0/j2;->a:Z

    .line 48
    .line 49
    iget-object v9, v3, Lm0/j2;->b:La5/h;

    .line 50
    .line 51
    iget-object v10, v3, Lm0/j2;->c:Le4/o;

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    if-nez v8, :cond_2

    .line 55
    .line 56
    iget-object v7, v9, La5/h;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, v9, La5/h;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, v9, La5/h;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Ljava/lang/String;

    .line 73
    .line 74
    iget-object v6, v2, Lm0/k2;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const v4, 0x7f07008a

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    :cond_1
    invoke-virtual {v5, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_2
    invoke-virtual {v5, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v10, Le4/o;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, La5/h;

    .line 104
    .line 105
    iget-object v5, v5, La5/h;->e:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    iget-object v8, v10, Le4/o;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v8, La5/h;

    .line 112
    .line 113
    iget-object v8, v8, La5/h;->e:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v8, Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    iget v9, v10, Le4/o;->a:I

    .line 118
    .line 119
    iget v12, v10, Le4/o;->b:I

    .line 120
    .line 121
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 122
    .line 123
    invoke-static {v7, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    new-instance v14, Landroid/graphics/Canvas;

    .line 128
    .line 129
    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v12}, Lm0/k2;->w(I)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    mul-int/2addr v12, v7

    .line 137
    div-int/lit8 v12, v12, 0x64

    .line 138
    .line 139
    const/4 v15, 0x1

    .line 140
    const/4 v11, 0x0

    .line 141
    if-ne v9, v15, :cond_3

    .line 142
    .line 143
    invoke-virtual {v5, v11, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v11, v12, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {v5, v11, v11, v12, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v12, v11, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 169
    .line 170
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v5, v2, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v10, Le4/o;->c:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v2, La5/h;

    .line 183
    .line 184
    iget-object v2, v2, La5/h;->c:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v2, Ljava/lang/String;

    .line 187
    .line 188
    const-string v4, ""

    .line 189
    .line 190
    if-nez v2, :cond_4

    .line 191
    .line 192
    move-object v2, v4

    .line 193
    const/4 v7, 0x3

    .line 194
    goto :goto_1

    .line 195
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    const/4 v7, 0x3

    .line 200
    if-le v5, v7, :cond_5

    .line 201
    .line 202
    invoke-virtual {v2, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    :cond_5
    :goto_1
    iget-object v5, v10, Le4/o;->d:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v5, La5/h;

    .line 209
    .line 210
    iget-object v5, v5, La5/h;->c:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v5, Ljava/lang/String;

    .line 213
    .line 214
    if-nez v5, :cond_6

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-le v4, v7, :cond_7

    .line 222
    .line 223
    invoke-virtual {v5, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    goto :goto_2

    .line 228
    :cond_7
    move-object v4, v5

    .line 229
    :goto_2
    invoke-static {v2}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    new-array v5, v15, [B

    .line 234
    .line 235
    const/16 v7, 0x61

    .line 236
    .line 237
    aput-byte v7, v5, v11

    .line 238
    .line 239
    const/16 v7, 0x8

    .line 240
    .line 241
    new-array v8, v7, [B

    .line 242
    .line 243
    fill-array-data v8, :array_0

    .line 244
    .line 245
    .line 246
    invoke-static {v5, v8}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v4, "\n"

    .line 257
    .line 258
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget v4, v10, Le4/o;->b:I

    .line 262
    .line 263
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    new-array v4, v15, [B

    .line 267
    .line 268
    const/16 v5, -0x5c

    .line 269
    .line 270
    aput-byte v5, v4, v11

    .line 271
    .line 272
    new-array v5, v7, [B

    .line 273
    .line 274
    fill-array-data v5, :array_1

    .line 275
    .line 276
    .line 277
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget v4, v10, Le4/o;->b:I

    .line 285
    .line 286
    rsub-int/lit8 v4, v4, 0x64

    .line 287
    .line 288
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    :goto_3
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 299
    .line 300
    new-instance v4, Le0/n0;

    .line 301
    .line 302
    const/4 v7, 0x3

    .line 303
    invoke-direct {v4, v0, v3, v1, v7}, Le0/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    nop

    .line 311
    :array_0
    .array-data 1
        0x4et
        0x58t
        0x10t
        0x4ft
        0x36t
        -0x7et
        -0x7et
        -0x4ct
    .end array-data

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :array_1
    .array-data 1
        -0x75t
        -0x54t
        -0x20t
        -0x73t
        0x5bt
        -0xdt
        -0x7ft
        0x1t
    .end array-data
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0c0078

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lm0/h2;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0900c3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v0, p2, Lm0/h2;->a:Landroid/widget/ImageView;

    .line 32
    .line 33
    const v0, 0x7f0900c4

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p2, Lm0/h2;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v0, 0x7f09044b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p2, Lm0/h2;->c:Landroid/view/View;

    .line 52
    .line 53
    return-object p2
.end method
