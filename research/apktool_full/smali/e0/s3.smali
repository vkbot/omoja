.class public final Le0/s3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;
.implements Lf2/b;


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le0/s3;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lh5/a;Le5/c;Lg5/a;Lh5/a;Lz3/f;Lg5/a;Lg5/a;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Le0/s3;->b:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 36
    iput-object p4, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 37
    iput-object p6, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 38
    iput-object p7, p0, Le0/s3;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 41
    iput p6, p0, Le0/s3;->b:I

    iput-object p1, p0, Le0/s3;->c:Ljava/lang/Object;

    iput-object p2, p0, Le0/s3;->d:Ljava/lang/Object;

    iput-object p3, p0, Le0/s3;->e:Ljava/lang/Object;

    iput-object p4, p0, Le0/s3;->f:Ljava/lang/Object;

    iput-object p5, p0, Le0/s3;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Closeable;Ljava/io/BufferedReader;Ljava/io/BufferedWriter;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Le0/s3;->b:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 46
    iput-object p3, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 47
    iput-object p4, p0, Le0/s3;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo2/a;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Le0/s3;->b:I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Le0/s3;->c:Ljava/lang/Object;

    return-void
.end method

.method public static f(Ljava/util/List;II)Ljava/util/ArrayList;
    .locals 3

    .line 1
    sub-int/2addr p1, p2

    .line 2
    div-int/lit8 p1, p1, 0x2

    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lo2/c;

    .line 10
    .line 11
    invoke-direct {v0}, Lo2/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, v0, Lo2/c;->g:I

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p1, :cond_2

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lo2/c;

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object p2
.end method

.method public static t(ILjava/util/ArrayList;Landroid/util/SparseIntArray;)[I
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 5
    .line 6
    .line 7
    new-array p0, p0, [I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    check-cast v3, Lo2/d;

    .line 24
    .line 25
    iget v4, v3, Lo2/d;->b:I

    .line 26
    .line 27
    aput v4, p0, v1

    .line 28
    .line 29
    iget v3, v3, Lo2/d;->c:I

    .line 30
    .line 31
    invoke-virtual {p2, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Lo2/c;II)V
    .locals 0

    .line 1
    iput p4, p2, Lo2/c;->m:I

    .line 2
    .line 3
    iget-object p4, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p4, Lo2/a;

    .line 6
    .line 7
    invoke-interface {p4, p2}, Lo2/a;->b(Lo2/c;)V

    .line 8
    .line 9
    .line 10
    iput p3, p2, Lo2/c;->p:I

    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b(Lj/i;IIIIILjava/util/List;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    iget-object v5, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v5, Lo2/a;

    .line 14
    .line 15
    invoke-interface {v5}, Lo2/a;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-nez p7, :cond_0

    .line 28
    .line 29
    new-instance v9, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object/from16 v9, p7

    .line 36
    .line 37
    :goto_0
    iput-object v9, v1, Lj/i;->c:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v10, -0x1

    .line 40
    if-ne v4, v10, :cond_1

    .line 41
    .line 42
    const/4 v13, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v13, 0x0

    .line 45
    :goto_1
    if-eqz v6, :cond_2

    .line 46
    .line 47
    invoke-interface {v5}, Lo2/a;->getPaddingStart()I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-interface {v5}, Lo2/a;->getPaddingTop()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    :goto_2
    if-eqz v6, :cond_3

    .line 57
    .line 58
    invoke-interface {v5}, Lo2/a;->getPaddingEnd()I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-interface {v5}, Lo2/a;->getPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result v15

    .line 67
    :goto_3
    if-eqz v6, :cond_4

    .line 68
    .line 69
    invoke-interface {v5}, Lo2/a;->getPaddingTop()I

    .line 70
    .line 71
    .line 72
    move-result v16

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    invoke-interface {v5}, Lo2/a;->getPaddingStart()I

    .line 75
    .line 76
    .line 77
    move-result v16

    .line 78
    :goto_4
    if-eqz v6, :cond_5

    .line 79
    .line 80
    invoke-interface {v5}, Lo2/a;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v17

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    invoke-interface {v5}, Lo2/a;->getPaddingEnd()I

    .line 86
    .line 87
    .line 88
    move-result v17

    .line 89
    :goto_5
    new-instance v12, Lo2/c;

    .line 90
    .line 91
    invoke-direct {v12}, Lo2/c;-><init>()V

    .line 92
    .line 93
    .line 94
    move/from16 v11, p5

    .line 95
    .line 96
    const/16 v18, 0x1

    .line 97
    .line 98
    iput v11, v12, Lo2/c;->o:I

    .line 99
    .line 100
    add-int/2addr v14, v15

    .line 101
    iput v14, v12, Lo2/c;->e:I

    .line 102
    .line 103
    invoke-interface {v5}, Lo2/a;->getFlexItemCount()I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    const/high16 v19, -0x80000000

    .line 108
    .line 109
    move/from16 v20, v6

    .line 110
    .line 111
    move/from16 p5, v13

    .line 112
    .line 113
    move/from16 v21, v19

    .line 114
    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v10, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    :goto_6
    if-ge v11, v15, :cond_2d

    .line 119
    .line 120
    move/from16 v22, v15

    .line 121
    .line 122
    invoke-interface {v5, v11}, Lo2/a;->c(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    if-nez v15, :cond_6

    .line 127
    .line 128
    add-int/lit8 v15, v22, -0x1

    .line 129
    .line 130
    if-ne v11, v15, :cond_7

    .line 131
    .line 132
    invoke-virtual {v12}, Lo2/c;->a()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-eqz v15, :cond_7

    .line 137
    .line 138
    invoke-virtual {v0, v9, v12, v11, v10}, Le0/s3;->a(Ljava/util/List;Lo2/c;II)V

    .line 139
    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_6
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    const/16 v4, 0x8

    .line 147
    .line 148
    if-ne v1, v4, :cond_8

    .line 149
    .line 150
    iget v1, v12, Lo2/c;->i:I

    .line 151
    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 153
    .line 154
    iput v1, v12, Lo2/c;->i:I

    .line 155
    .line 156
    iget v1, v12, Lo2/c;->h:I

    .line 157
    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    iput v1, v12, Lo2/c;->h:I

    .line 161
    .line 162
    add-int/lit8 v15, v22, -0x1

    .line 163
    .line 164
    if-ne v11, v15, :cond_7

    .line 165
    .line 166
    invoke-virtual {v12}, Lo2/c;->a()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    invoke-virtual {v0, v9, v12, v11, v10}, Le0/s3;->a(Ljava/util/List;Lo2/c;II)V

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_7
    move/from16 v15, p4

    .line 176
    .line 177
    move/from16 v1, p5

    .line 178
    .line 179
    move/from16 v4, p6

    .line 180
    .line 181
    const/4 v2, -0x1

    .line 182
    goto/16 :goto_25

    .line 183
    .line 184
    :cond_8
    instance-of v1, v15, Landroid/widget/CompoundButton;

    .line 185
    .line 186
    if-eqz v1, :cond_d

    .line 187
    .line 188
    move-object v1, v15

    .line 189
    check-cast v1, Landroid/widget/CompoundButton;

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Lo2/b;

    .line 196
    .line 197
    move-object/from16 v23, v1

    .line 198
    .line 199
    invoke-interface {v4}, Lo2/b;->c()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    move/from16 v24, v14

    .line 204
    .line 205
    invoke-interface {v4}, Lo2/b;->m()I

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    invoke-static/range {v23 .. v23}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 210
    .line 211
    .line 212
    move-result-object v23

    .line 213
    if-nez v23, :cond_9

    .line 214
    .line 215
    const/16 v25, 0x0

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 219
    .line 220
    .line 221
    move-result v25

    .line 222
    :goto_8
    if-nez v23, :cond_a

    .line 223
    .line 224
    const/16 v23, 0x0

    .line 225
    .line 226
    :goto_9
    move-object/from16 v26, v9

    .line 227
    .line 228
    const/4 v9, -0x1

    .line 229
    goto :goto_a

    .line 230
    :cond_a
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 231
    .line 232
    .line 233
    move-result v23

    .line 234
    goto :goto_9

    .line 235
    :goto_a
    if-ne v1, v9, :cond_b

    .line 236
    .line 237
    move/from16 v1, v25

    .line 238
    .line 239
    :cond_b
    invoke-interface {v4, v1}, Lo2/b;->e(I)V

    .line 240
    .line 241
    .line 242
    if-ne v14, v9, :cond_c

    .line 243
    .line 244
    move/from16 v14, v23

    .line 245
    .line 246
    :cond_c
    invoke-interface {v4, v14}, Lo2/b;->i(I)V

    .line 247
    .line 248
    .line 249
    goto :goto_b

    .line 250
    :cond_d
    move-object/from16 v26, v9

    .line 251
    .line 252
    move/from16 v24, v14

    .line 253
    .line 254
    :goto_b
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Lo2/b;

    .line 259
    .line 260
    invoke-interface {v1}, Lo2/b;->a()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    const/4 v9, 0x4

    .line 265
    if-ne v4, v9, :cond_e

    .line 266
    .line 267
    iget-object v4, v12, Lo2/c;->n:Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :cond_e
    if-eqz v20, :cond_f

    .line 277
    .line 278
    invoke-interface {v1}, Lo2/b;->d()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    goto :goto_c

    .line 283
    :cond_f
    invoke-interface {v1}, Lo2/b;->getHeight()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    :goto_c
    invoke-interface {v1}, Lo2/b;->k()F

    .line 288
    .line 289
    .line 290
    move-result v9

    .line 291
    const/high16 v14, -0x40800000    # -1.0f

    .line 292
    .line 293
    cmpl-float v9, v9, v14

    .line 294
    .line 295
    if-eqz v9, :cond_10

    .line 296
    .line 297
    const/high16 v9, 0x40000000    # 2.0f

    .line 298
    .line 299
    if-ne v7, v9, :cond_10

    .line 300
    .line 301
    int-to-float v4, v8

    .line 302
    invoke-interface {v1}, Lo2/b;->k()F

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    mul-float/2addr v9, v4

    .line 307
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    :cond_10
    if-eqz v20, :cond_11

    .line 312
    .line 313
    invoke-interface {v1}, Lo2/b;->g()I

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    add-int v9, v9, v24

    .line 318
    .line 319
    invoke-interface {v1}, Lo2/b;->l()I

    .line 320
    .line 321
    .line 322
    move-result v14

    .line 323
    add-int/2addr v14, v9

    .line 324
    invoke-interface {v5, v2, v14, v4}, Lo2/a;->d(III)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    add-int v9, v16, v17

    .line 329
    .line 330
    invoke-interface {v1}, Lo2/b;->h()I

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    add-int/2addr v14, v9

    .line 335
    invoke-interface {v1}, Lo2/b;->f()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    add-int/2addr v9, v14

    .line 340
    add-int/2addr v9, v10

    .line 341
    invoke-interface {v1}, Lo2/b;->getHeight()I

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    invoke-interface {v5, v3, v9, v14}, Lo2/a;->h(III)I

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    invoke-virtual {v15, v4, v9}, Landroid/view/View;->measure(II)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v15, v11, v4, v9}, Le0/s3;->x(Landroid/view/View;III)V

    .line 353
    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_11
    add-int v9, v16, v17

    .line 357
    .line 358
    invoke-interface {v1}, Lo2/b;->g()I

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    add-int/2addr v14, v9

    .line 363
    invoke-interface {v1}, Lo2/b;->l()I

    .line 364
    .line 365
    .line 366
    move-result v9

    .line 367
    add-int/2addr v9, v14

    .line 368
    add-int/2addr v9, v10

    .line 369
    invoke-interface {v1}, Lo2/b;->d()I

    .line 370
    .line 371
    .line 372
    move-result v14

    .line 373
    invoke-interface {v5, v3, v9, v14}, Lo2/a;->d(III)I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    invoke-interface {v1}, Lo2/b;->h()I

    .line 378
    .line 379
    .line 380
    move-result v14

    .line 381
    add-int v14, v14, v24

    .line 382
    .line 383
    invoke-interface {v1}, Lo2/b;->f()I

    .line 384
    .line 385
    .line 386
    move-result v23

    .line 387
    add-int v14, v23, v14

    .line 388
    .line 389
    invoke-interface {v5, v2, v14, v4}, Lo2/a;->h(III)I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-virtual {v15, v9, v4}, Landroid/view/View;->measure(II)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v15, v11, v9, v4}, Le0/s3;->x(Landroid/view/View;III)V

    .line 397
    .line 398
    .line 399
    :goto_d
    invoke-interface {v5, v11, v15}, Lo2/a;->e(ILandroid/view/View;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v11, v15}, Le0/s3;->c(ILandroid/view/View;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    invoke-static {v6, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    iget v9, v12, Lo2/c;->e:I

    .line 414
    .line 415
    if-eqz v20, :cond_12

    .line 416
    .line 417
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 418
    .line 419
    .line 420
    move-result v14

    .line 421
    goto :goto_e

    .line 422
    :cond_12
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 423
    .line 424
    .line 425
    move-result v14

    .line 426
    :goto_e
    if-eqz v20, :cond_13

    .line 427
    .line 428
    invoke-interface {v1}, Lo2/b;->g()I

    .line 429
    .line 430
    .line 431
    move-result v23

    .line 432
    goto :goto_f

    .line 433
    :cond_13
    invoke-interface {v1}, Lo2/b;->h()I

    .line 434
    .line 435
    .line 436
    move-result v23

    .line 437
    :goto_f
    add-int v14, v14, v23

    .line 438
    .line 439
    if-eqz v20, :cond_14

    .line 440
    .line 441
    invoke-interface {v1}, Lo2/b;->l()I

    .line 442
    .line 443
    .line 444
    move-result v23

    .line 445
    goto :goto_10

    .line 446
    :cond_14
    invoke-interface {v1}, Lo2/b;->f()I

    .line 447
    .line 448
    .line 449
    move-result v23

    .line 450
    :goto_10
    add-int v14, v14, v23

    .line 451
    .line 452
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    .line 453
    .line 454
    .line 455
    move-result v23

    .line 456
    invoke-interface {v5}, Lo2/a;->getFlexWrap()I

    .line 457
    .line 458
    .line 459
    move-result v25

    .line 460
    if-nez v25, :cond_16

    .line 461
    .line 462
    :goto_11
    move-object/from16 v25, v1

    .line 463
    .line 464
    :cond_15
    :goto_12
    move/from16 v1, v18

    .line 465
    .line 466
    move/from16 v14, v24

    .line 467
    .line 468
    move-object/from16 v9, v26

    .line 469
    .line 470
    goto/16 :goto_18

    .line 471
    .line 472
    :cond_16
    invoke-interface {v1}, Lo2/b;->n()Z

    .line 473
    .line 474
    .line 475
    move-result v25

    .line 476
    if-eqz v25, :cond_17

    .line 477
    .line 478
    move-object/from16 v25, v1

    .line 479
    .line 480
    goto :goto_13

    .line 481
    :cond_17
    if-nez v7, :cond_18

    .line 482
    .line 483
    goto :goto_11

    .line 484
    :cond_18
    move-object/from16 v25, v1

    .line 485
    .line 486
    invoke-interface {v5}, Lo2/a;->getMaxLine()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    const/4 v2, -0x1

    .line 491
    if-eq v1, v2, :cond_19

    .line 492
    .line 493
    add-int/lit8 v2, v23, 0x1

    .line 494
    .line 495
    if-gt v1, v2, :cond_19

    .line 496
    .line 497
    goto :goto_12

    .line 498
    :cond_19
    invoke-interface {v5, v15, v11, v13}, Lo2/a;->g(Landroid/view/View;II)I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-lez v1, :cond_1a

    .line 503
    .line 504
    add-int/2addr v14, v1

    .line 505
    :cond_1a
    add-int/2addr v9, v14

    .line 506
    if-ge v8, v9, :cond_15

    .line 507
    .line 508
    :goto_13
    invoke-virtual {v12}, Lo2/c;->a()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    if-lez v1, :cond_1c

    .line 513
    .line 514
    if-lez v11, :cond_1b

    .line 515
    .line 516
    add-int/lit8 v1, v11, -0x1

    .line 517
    .line 518
    :goto_14
    move-object/from16 v9, v26

    .line 519
    .line 520
    goto :goto_15

    .line 521
    :cond_1b
    const/4 v1, 0x0

    .line 522
    goto :goto_14

    .line 523
    :goto_15
    invoke-virtual {v0, v9, v12, v1, v10}, Le0/s3;->a(Ljava/util/List;Lo2/c;II)V

    .line 524
    .line 525
    .line 526
    iget v1, v12, Lo2/c;->g:I

    .line 527
    .line 528
    add-int/2addr v10, v1

    .line 529
    goto :goto_16

    .line 530
    :cond_1c
    move-object/from16 v9, v26

    .line 531
    .line 532
    :goto_16
    if-eqz v20, :cond_1d

    .line 533
    .line 534
    invoke-interface/range {v25 .. v25}, Lo2/b;->getHeight()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    const/4 v2, -0x1

    .line 539
    if-ne v1, v2, :cond_1e

    .line 540
    .line 541
    invoke-interface {v5}, Lo2/a;->getPaddingTop()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    invoke-interface {v5}, Lo2/a;->getPaddingBottom()I

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    add-int/2addr v2, v1

    .line 550
    invoke-interface/range {v25 .. v25}, Lo2/b;->h()I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    add-int/2addr v1, v2

    .line 555
    invoke-interface/range {v25 .. v25}, Lo2/b;->f()I

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    add-int/2addr v2, v1

    .line 560
    add-int/2addr v2, v10

    .line 561
    invoke-interface/range {v25 .. v25}, Lo2/b;->getHeight()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    invoke-interface {v5, v3, v2, v1}, Lo2/a;->h(III)I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    invoke-virtual {v15, v4, v1}, Landroid/view/View;->measure(II)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v11, v15}, Le0/s3;->c(ILandroid/view/View;)V

    .line 573
    .line 574
    .line 575
    goto :goto_17

    .line 576
    :cond_1d
    invoke-interface/range {v25 .. v25}, Lo2/b;->d()I

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    const/4 v2, -0x1

    .line 581
    if-ne v1, v2, :cond_1e

    .line 582
    .line 583
    invoke-interface {v5}, Lo2/a;->getPaddingLeft()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    invoke-interface {v5}, Lo2/a;->getPaddingRight()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    add-int/2addr v2, v1

    .line 592
    invoke-interface/range {v25 .. v25}, Lo2/b;->g()I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    add-int/2addr v1, v2

    .line 597
    invoke-interface/range {v25 .. v25}, Lo2/b;->l()I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    add-int/2addr v2, v1

    .line 602
    add-int/2addr v2, v10

    .line 603
    invoke-interface/range {v25 .. v25}, Lo2/b;->d()I

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    invoke-interface {v5, v3, v2, v1}, Lo2/a;->d(III)I

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    invoke-virtual {v15, v1, v4}, Landroid/view/View;->measure(II)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v11, v15}, Le0/s3;->c(ILandroid/view/View;)V

    .line 615
    .line 616
    .line 617
    :cond_1e
    :goto_17
    new-instance v12, Lo2/c;

    .line 618
    .line 619
    invoke-direct {v12}, Lo2/c;-><init>()V

    .line 620
    .line 621
    .line 622
    move/from16 v1, v18

    .line 623
    .line 624
    iput v1, v12, Lo2/c;->h:I

    .line 625
    .line 626
    move/from16 v14, v24

    .line 627
    .line 628
    iput v14, v12, Lo2/c;->e:I

    .line 629
    .line 630
    iput v11, v12, Lo2/c;->o:I

    .line 631
    .line 632
    move/from16 v1, v19

    .line 633
    .line 634
    const/4 v13, 0x0

    .line 635
    goto :goto_19

    .line 636
    :goto_18
    iget v2, v12, Lo2/c;->h:I

    .line 637
    .line 638
    add-int/2addr v2, v1

    .line 639
    iput v2, v12, Lo2/c;->h:I

    .line 640
    .line 641
    add-int/lit8 v13, v13, 0x1

    .line 642
    .line 643
    move/from16 v1, v21

    .line 644
    .line 645
    :goto_19
    iget-boolean v2, v12, Lo2/c;->q:Z

    .line 646
    .line 647
    invoke-interface/range {v25 .. v25}, Lo2/b;->j()F

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    const/16 v21, 0x0

    .line 652
    .line 653
    cmpl-float v4, v4, v21

    .line 654
    .line 655
    if-eqz v4, :cond_1f

    .line 656
    .line 657
    const/4 v4, 0x1

    .line 658
    goto :goto_1a

    .line 659
    :cond_1f
    const/4 v4, 0x0

    .line 660
    :goto_1a
    or-int/2addr v2, v4

    .line 661
    iput-boolean v2, v12, Lo2/c;->q:Z

    .line 662
    .line 663
    iget-boolean v2, v12, Lo2/c;->r:Z

    .line 664
    .line 665
    invoke-interface/range {v25 .. v25}, Lo2/b;->b()F

    .line 666
    .line 667
    .line 668
    move-result v4

    .line 669
    cmpl-float v4, v4, v21

    .line 670
    .line 671
    if-eqz v4, :cond_20

    .line 672
    .line 673
    const/4 v4, 0x1

    .line 674
    goto :goto_1b

    .line 675
    :cond_20
    const/4 v4, 0x0

    .line 676
    :goto_1b
    or-int/2addr v2, v4

    .line 677
    iput-boolean v2, v12, Lo2/c;->r:Z

    .line 678
    .line 679
    iget-object v2, v0, Le0/s3;->e:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v2, [I

    .line 682
    .line 683
    if-eqz v2, :cond_21

    .line 684
    .line 685
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    aput v4, v2, v11

    .line 690
    .line 691
    :cond_21
    iget v2, v12, Lo2/c;->e:I

    .line 692
    .line 693
    if-eqz v20, :cond_22

    .line 694
    .line 695
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    goto :goto_1c

    .line 700
    :cond_22
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    :goto_1c
    if-eqz v20, :cond_23

    .line 705
    .line 706
    invoke-interface/range {v25 .. v25}, Lo2/b;->g()I

    .line 707
    .line 708
    .line 709
    move-result v21

    .line 710
    goto :goto_1d

    .line 711
    :cond_23
    invoke-interface/range {v25 .. v25}, Lo2/b;->h()I

    .line 712
    .line 713
    .line 714
    move-result v21

    .line 715
    :goto_1d
    add-int v4, v4, v21

    .line 716
    .line 717
    if-eqz v20, :cond_24

    .line 718
    .line 719
    invoke-interface/range {v25 .. v25}, Lo2/b;->l()I

    .line 720
    .line 721
    .line 722
    move-result v21

    .line 723
    goto :goto_1e

    .line 724
    :cond_24
    invoke-interface/range {v25 .. v25}, Lo2/b;->f()I

    .line 725
    .line 726
    .line 727
    move-result v21

    .line 728
    :goto_1e
    add-int v4, v4, v21

    .line 729
    .line 730
    add-int/2addr v4, v2

    .line 731
    iput v4, v12, Lo2/c;->e:I

    .line 732
    .line 733
    iget v2, v12, Lo2/c;->j:F

    .line 734
    .line 735
    invoke-interface/range {v25 .. v25}, Lo2/b;->j()F

    .line 736
    .line 737
    .line 738
    move-result v4

    .line 739
    add-float/2addr v4, v2

    .line 740
    iput v4, v12, Lo2/c;->j:F

    .line 741
    .line 742
    iget v2, v12, Lo2/c;->k:F

    .line 743
    .line 744
    invoke-interface/range {v25 .. v25}, Lo2/b;->b()F

    .line 745
    .line 746
    .line 747
    move-result v4

    .line 748
    add-float/2addr v4, v2

    .line 749
    iput v4, v12, Lo2/c;->k:F

    .line 750
    .line 751
    invoke-interface {v5, v15, v11, v13, v12}, Lo2/a;->a(Landroid/view/View;IILo2/c;)V

    .line 752
    .line 753
    .line 754
    if-eqz v20, :cond_25

    .line 755
    .line 756
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    goto :goto_1f

    .line 761
    :cond_25
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    :goto_1f
    if-eqz v20, :cond_26

    .line 766
    .line 767
    invoke-interface/range {v25 .. v25}, Lo2/b;->h()I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    goto :goto_20

    .line 772
    :cond_26
    invoke-interface/range {v25 .. v25}, Lo2/b;->g()I

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    :goto_20
    add-int/2addr v2, v4

    .line 777
    if-eqz v20, :cond_27

    .line 778
    .line 779
    invoke-interface/range {v25 .. v25}, Lo2/b;->f()I

    .line 780
    .line 781
    .line 782
    move-result v4

    .line 783
    goto :goto_21

    .line 784
    :cond_27
    invoke-interface/range {v25 .. v25}, Lo2/b;->l()I

    .line 785
    .line 786
    .line 787
    move-result v4

    .line 788
    :goto_21
    add-int/2addr v2, v4

    .line 789
    invoke-interface {v5, v15}, Lo2/a;->j(Landroid/view/View;)I

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    add-int/2addr v4, v2

    .line 794
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    iget v2, v12, Lo2/c;->g:I

    .line 799
    .line 800
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 801
    .line 802
    .line 803
    move-result v2

    .line 804
    iput v2, v12, Lo2/c;->g:I

    .line 805
    .line 806
    if-eqz v20, :cond_29

    .line 807
    .line 808
    invoke-interface {v5}, Lo2/a;->getFlexWrap()I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    iget v4, v12, Lo2/c;->l:I

    .line 813
    .line 814
    move/from16 v21, v1

    .line 815
    .line 816
    const/4 v1, 0x2

    .line 817
    if-eq v2, v1, :cond_28

    .line 818
    .line 819
    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    invoke-interface/range {v25 .. v25}, Lo2/b;->h()I

    .line 824
    .line 825
    .line 826
    move-result v2

    .line 827
    add-int/2addr v2, v1

    .line 828
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    iput v1, v12, Lo2/c;->l:I

    .line 833
    .line 834
    goto :goto_22

    .line 835
    :cond_28
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 836
    .line 837
    .line 838
    move-result v1

    .line 839
    invoke-virtual {v15}, Landroid/view/View;->getBaseline()I

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    sub-int/2addr v1, v2

    .line 844
    invoke-interface/range {v25 .. v25}, Lo2/b;->f()I

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    add-int/2addr v2, v1

    .line 849
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    iput v1, v12, Lo2/c;->l:I

    .line 854
    .line 855
    goto :goto_22

    .line 856
    :cond_29
    move/from16 v21, v1

    .line 857
    .line 858
    :goto_22
    add-int/lit8 v15, v22, -0x1

    .line 859
    .line 860
    if-ne v11, v15, :cond_2a

    .line 861
    .line 862
    invoke-virtual {v12}, Lo2/c;->a()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    if-eqz v1, :cond_2a

    .line 867
    .line 868
    invoke-virtual {v0, v9, v12, v11, v10}, Le0/s3;->a(Ljava/util/List;Lo2/c;II)V

    .line 869
    .line 870
    .line 871
    iget v1, v12, Lo2/c;->g:I

    .line 872
    .line 873
    add-int/2addr v10, v1

    .line 874
    :cond_2a
    move/from16 v4, p6

    .line 875
    .line 876
    const/4 v2, -0x1

    .line 877
    if-eq v4, v2, :cond_2b

    .line 878
    .line 879
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-lez v1, :cond_2b

    .line 884
    .line 885
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    const/16 v18, 0x1

    .line 890
    .line 891
    add-int/lit8 v1, v1, -0x1

    .line 892
    .line 893
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Lo2/c;

    .line 898
    .line 899
    iget v1, v1, Lo2/c;->p:I

    .line 900
    .line 901
    if-lt v1, v4, :cond_2c

    .line 902
    .line 903
    if-lt v11, v4, :cond_2c

    .line 904
    .line 905
    if-nez p5, :cond_2c

    .line 906
    .line 907
    iget v1, v12, Lo2/c;->g:I

    .line 908
    .line 909
    neg-int v1, v1

    .line 910
    move v10, v1

    .line 911
    move/from16 v1, v18

    .line 912
    .line 913
    :goto_23
    move/from16 v15, p4

    .line 914
    .line 915
    goto :goto_24

    .line 916
    :cond_2b
    const/16 v18, 0x1

    .line 917
    .line 918
    :cond_2c
    move/from16 v1, p5

    .line 919
    .line 920
    goto :goto_23

    .line 921
    :goto_24
    if-le v10, v15, :cond_2e

    .line 922
    .line 923
    if-eqz v1, :cond_2e

    .line 924
    .line 925
    :cond_2d
    move-object/from16 v1, p1

    .line 926
    .line 927
    goto :goto_26

    .line 928
    :cond_2e
    :goto_25
    add-int/lit8 v11, v11, 0x1

    .line 929
    .line 930
    move/from16 v2, p2

    .line 931
    .line 932
    move/from16 p5, v1

    .line 933
    .line 934
    move/from16 v15, v22

    .line 935
    .line 936
    move-object/from16 v1, p1

    .line 937
    .line 938
    goto/16 :goto_6

    .line 939
    .line 940
    :goto_26
    iput v6, v1, Lj/i;->b:I

    .line 941
    .line 942
    return-void
.end method

.method public c(ILandroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo2/b;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0}, Lo2/b;->c()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ge v1, v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lo2/b;->c()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    move v3, v4

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {v0}, Lo2/b;->p()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-le v1, v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Lo2/b;->p()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_1
    invoke-interface {v0}, Lo2/b;->m()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-ge v2, v5, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lo2/b;->m()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {v0}, Lo2/b;->o()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-le v2, v5, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Lo2/b;->o()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v4, v3

    .line 63
    :goto_2
    if-eqz v4, :cond_4

    .line 64
    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2, p1, v1, v0}, Le0/s3;->x(Landroid/view/View;III)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lo2/a;

    .line 84
    .line 85
    invoke-interface {v0, p1, p2}, Lo2/a;->e(ILandroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method public d(ILjava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    aget v0, v0, p1

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-le v2, v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p2, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, [I

    .line 31
    .line 32
    array-length v0, p2

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-le p1, v0, :cond_2

    .line 36
    .line 37
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p2, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, [J

    .line 47
    .line 48
    array-length v0, p2

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    if-le p1, v0, :cond_3

    .line 54
    .line 55
    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-static {p2, p1, v0, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/Closeable;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/example/navistart/Transport/TransportService;->b(Ljava/io/Closeable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(I)Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lo2/a;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lo2/a;->f(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lo2/b;

    .line 22
    .line 23
    new-instance v3, Lo2/d;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lo2/b;->getOrder()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, v3, Lo2/d;->c:I

    .line 33
    .line 34
    iput v1, v3, Lo2/d;->b:I

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Le0/s3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lt8/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iget-object v1, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lt8/a;

    .line 19
    .line 20
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Le2/d;

    .line 25
    .line 26
    iget-object v1, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, La5/h;

    .line 29
    .line 30
    invoke-virtual {v1}, La5/h;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lt8/a;

    .line 36
    .line 37
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lk2/d;

    .line 42
    .line 43
    iget-object v1, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lt8/a;

    .line 46
    .line 47
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ll2/c;

    .line 52
    .line 53
    new-instance v1, Li2/a;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Li2/a;-><init>(Ljava/util/concurrent/Executor;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :pswitch_0
    iget-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Le5/c;

    .line 62
    .line 63
    iget-object v0, v0, Le5/c;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, La2/c;

    .line 66
    .line 67
    iget-object v1, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lg5/a;

    .line 70
    .line 71
    invoke-virtual {v1}, Lg5/a;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lh5/a;

    .line 77
    .line 78
    invoke-virtual {v1}, Lh5/a;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lg5/a;

    .line 84
    .line 85
    invoke-virtual {v1}, Lg5/a;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lg5/a;

    .line 91
    .line 92
    invoke-virtual {v1}, Lg5/a;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    check-cast v0, Ld2/r;

    .line 99
    .line 100
    new-instance v2, La2/a;

    .line 101
    .line 102
    const-string v3, "proto"

    .line 103
    .line 104
    invoke-direct {v2, v3}, La2/a;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v0, Ld2/r;->a:Ljava/util/Set;

    .line 108
    .line 109
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_0

    .line 114
    .line 115
    new-instance v0, Lf5/v;

    .line 116
    .line 117
    invoke-direct {v0, v1}, Lf5/v;-><init>(Ljava/util/concurrent/Executor;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    const-string v1, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 122
    .line 123
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Ln0/b;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public h(III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lo2/a;

    .line 6
    .line 7
    invoke-interface {v1}, Lo2/a;->getFlexDirection()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-eq v2, v5, :cond_2

    .line 17
    .line 18
    if-eq v2, v4, :cond_1

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "Invalid flex direction: "

    .line 24
    .line 25
    invoke-static {v2, v1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    :goto_1
    invoke-interface {v1}, Lo2/a;->getFlexLinesInternal()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const/high16 v8, 0x40000000    # 2.0f

    .line 55
    .line 56
    if-ne v2, v8, :cond_15

    .line 57
    .line 58
    invoke-interface {v1}, Lo2/a;->getSumOfCrossSize()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int v2, v2, p3

    .line 63
    .line 64
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v9, 0x0

    .line 69
    if-ne v8, v5, :cond_3

    .line 70
    .line 71
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lo2/c;

    .line 76
    .line 77
    sub-int v6, v6, p3

    .line 78
    .line 79
    iput v6, v1, Lo2/c;->g:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-lt v8, v4, :cond_15

    .line 87
    .line 88
    invoke-interface {v1}, Lo2/a;->getAlignContent()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eq v8, v5, :cond_14

    .line 93
    .line 94
    if-eq v8, v4, :cond_13

    .line 95
    .line 96
    const/high16 v10, -0x40800000    # -1.0f

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    const/high16 v12, 0x3f800000    # 1.0f

    .line 100
    .line 101
    if-eq v8, v3, :cond_c

    .line 102
    .line 103
    const/4 v3, 0x4

    .line 104
    if-eq v8, v3, :cond_9

    .line 105
    .line 106
    const/4 v1, 0x5

    .line 107
    if-eq v8, v1, :cond_4

    .line 108
    .line 109
    goto/16 :goto_a

    .line 110
    .line 111
    :cond_4
    if-lt v2, v6, :cond_5

    .line 112
    .line 113
    goto/16 :goto_a

    .line 114
    .line 115
    :cond_5
    sub-int/2addr v6, v2

    .line 116
    int-to-float v1, v6

    .line 117
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    int-to-float v2, v2

    .line 122
    div-float/2addr v1, v2

    .line 123
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move v3, v11

    .line 128
    :goto_2
    if-ge v9, v2, :cond_15

    .line 129
    .line 130
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lo2/c;

    .line 135
    .line 136
    iget v6, v4, Lo2/c;->g:I

    .line 137
    .line 138
    int-to-float v6, v6

    .line 139
    add-float/2addr v6, v1

    .line 140
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    sub-int/2addr v8, v5

    .line 145
    if-ne v9, v8, :cond_6

    .line 146
    .line 147
    add-float/2addr v6, v3

    .line 148
    move v3, v11

    .line 149
    :cond_6
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    int-to-float v13, v8

    .line 154
    sub-float/2addr v6, v13

    .line 155
    add-float/2addr v6, v3

    .line 156
    cmpl-float v3, v6, v12

    .line 157
    .line 158
    if-lez v3, :cond_8

    .line 159
    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 161
    .line 162
    sub-float/2addr v6, v12

    .line 163
    :cond_7
    :goto_3
    move v3, v6

    .line 164
    goto :goto_4

    .line 165
    :cond_8
    cmpg-float v3, v6, v10

    .line 166
    .line 167
    if-gez v3, :cond_7

    .line 168
    .line 169
    add-int/lit8 v8, v8, -0x1

    .line 170
    .line 171
    add-float/2addr v6, v12

    .line 172
    goto :goto_3

    .line 173
    :goto_4
    iput v8, v4, Lo2/c;->g:I

    .line 174
    .line 175
    add-int/lit8 v9, v9, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_9
    if-lt v2, v6, :cond_a

    .line 179
    .line 180
    invoke-static {v7, v6, v2}, Le0/s3;->f(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-interface {v1, v2}, Lo2/a;->setFlexLines(Ljava/util/List;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_a
    sub-int/2addr v6, v2

    .line 189
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    mul-int/2addr v2, v4

    .line 194
    div-int/2addr v6, v2

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v3, Lo2/c;

    .line 201
    .line 202
    invoke-direct {v3}, Lo2/c;-><init>()V

    .line 203
    .line 204
    .line 205
    iput v6, v3, Lo2/c;->g:I

    .line 206
    .line 207
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_b

    .line 216
    .line 217
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lo2/c;

    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_b
    invoke-interface {v1, v2}, Lo2/a;->setFlexLines(Ljava/util/List;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_c
    if-lt v2, v6, :cond_d

    .line 238
    .line 239
    goto/16 :goto_a

    .line 240
    .line 241
    :cond_d
    sub-int/2addr v6, v2

    .line 242
    int-to-float v2, v6

    .line 243
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    sub-int/2addr v3, v5

    .line 248
    int-to-float v3, v3

    .line 249
    div-float/2addr v2, v3

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    move v8, v11

    .line 260
    :goto_6
    if-ge v9, v6, :cond_12

    .line 261
    .line 262
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    check-cast v13, Lo2/c;

    .line 267
    .line 268
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    sub-int/2addr v13, v5

    .line 276
    if-eq v9, v13, :cond_11

    .line 277
    .line 278
    new-instance v13, Lo2/c;

    .line 279
    .line 280
    invoke-direct {v13}, Lo2/c;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v14

    .line 287
    sub-int/2addr v14, v4

    .line 288
    if-ne v9, v14, :cond_e

    .line 289
    .line 290
    add-float/2addr v8, v2

    .line 291
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    iput v8, v13, Lo2/c;->g:I

    .line 296
    .line 297
    move v8, v11

    .line 298
    goto :goto_7

    .line 299
    :cond_e
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 300
    .line 301
    .line 302
    move-result v14

    .line 303
    iput v14, v13, Lo2/c;->g:I

    .line 304
    .line 305
    :goto_7
    iget v14, v13, Lo2/c;->g:I

    .line 306
    .line 307
    int-to-float v15, v14

    .line 308
    sub-float v15, v2, v15

    .line 309
    .line 310
    add-float/2addr v15, v8

    .line 311
    cmpl-float v8, v15, v12

    .line 312
    .line 313
    if-lez v8, :cond_10

    .line 314
    .line 315
    add-int/lit8 v14, v14, 0x1

    .line 316
    .line 317
    iput v14, v13, Lo2/c;->g:I

    .line 318
    .line 319
    sub-float/2addr v15, v12

    .line 320
    :cond_f
    :goto_8
    move v8, v15

    .line 321
    goto :goto_9

    .line 322
    :cond_10
    cmpg-float v8, v15, v10

    .line 323
    .line 324
    if-gez v8, :cond_f

    .line 325
    .line 326
    add-int/lit8 v14, v14, -0x1

    .line 327
    .line 328
    iput v14, v13, Lo2/c;->g:I

    .line 329
    .line 330
    add-float/2addr v15, v12

    .line 331
    goto :goto_8

    .line 332
    :goto_9
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_12
    invoke-interface {v1, v3}, Lo2/a;->setFlexLines(Ljava/util/List;)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :cond_13
    invoke-static {v7, v6, v2}, Le0/s3;->f(Ljava/util/List;II)Ljava/util/ArrayList;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-interface {v1, v2}, Lo2/a;->setFlexLines(Ljava/util/List;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :cond_14
    sub-int/2addr v6, v2

    .line 351
    new-instance v1, Lo2/c;

    .line 352
    .line 353
    invoke-direct {v1}, Lo2/c;-><init>()V

    .line 354
    .line 355
    .line 356
    iput v6, v1, Lo2/c;->g:I

    .line 357
    .line 358
    invoke-interface {v7, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_15
    :goto_a
    return-void
.end method

.method public i(III)V
    .locals 12

    .line 1
    iget-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo2/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lo2/a;->getFlexItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-array v1, v1, [Z

    .line 24
    .line 25
    iput-object v1, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    array-length v5, v2

    .line 29
    if-ge v5, v1, :cond_1

    .line 30
    .line 31
    array-length v2, v2

    .line 32
    mul-int/2addr v2, v4

    .line 33
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-array v1, v1, [Z

    .line 38
    .line 39
    iput-object v1, p0, Le0/s3;->d:Ljava/lang/Object;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {v0}, Lo2/a;->getFlexItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-lt p3, v1, :cond_2

    .line 50
    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_2
    invoke-interface {v0}, Lo2/a;->getFlexDirection()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-interface {v0}, Lo2/a;->getFlexDirection()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const/high16 v5, 0x40000000    # 2.0f

    .line 62
    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    if-eq v2, v6, :cond_6

    .line 67
    .line 68
    if-eq v2, v4, :cond_4

    .line 69
    .line 70
    const/4 v4, 0x3

    .line 71
    if-ne v2, v4, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-string p1, "Invalid flex direction: "

    .line 75
    .line 76
    invoke-static {v1, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-ne v1, v5, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-interface {v0}, Lo2/a;->getLargestMainSize()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    :goto_2
    invoke-interface {v0}, Lo2/a;->getPaddingTop()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-interface {v0}, Lo2/a;->getPaddingBottom()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    :goto_3
    add-int/2addr v4, v1

    .line 108
    move v9, v2

    .line 109
    move v10, v4

    .line 110
    goto :goto_5

    .line 111
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-interface {v0}, Lo2/a;->getLargestMainSize()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-ne v1, v5, :cond_7

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    move v2, v1

    .line 131
    :goto_4
    invoke-interface {v0}, Lo2/a;->getPaddingLeft()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-interface {v0}, Lo2/a;->getPaddingRight()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    goto :goto_3

    .line 140
    :goto_5
    iget-object v1, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, [I

    .line 143
    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    aget v3, v1, p3

    .line 147
    .line 148
    :cond_8
    invoke-interface {v0}, Lo2/a;->getFlexLinesInternal()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    :goto_6
    if-ge v3, v0, :cond_b

    .line 157
    .line 158
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    move-object v8, v1

    .line 163
    check-cast v8, Lo2/c;

    .line 164
    .line 165
    iget v1, v8, Lo2/c;->e:I

    .line 166
    .line 167
    if-ge v1, v9, :cond_9

    .line 168
    .line 169
    iget-boolean v2, v8, Lo2/c;->q:Z

    .line 170
    .line 171
    if-eqz v2, :cond_9

    .line 172
    .line 173
    const/4 v11, 0x0

    .line 174
    move-object v5, p0

    .line 175
    move v6, p1

    .line 176
    move v7, p2

    .line 177
    invoke-virtual/range {v5 .. v11}, Le0/s3;->m(IILo2/c;IIZ)V

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_9
    move v6, p1

    .line 182
    move v7, p2

    .line 183
    if-le v1, v9, :cond_a

    .line 184
    .line 185
    iget-boolean p1, v8, Lo2/c;->r:Z

    .line 186
    .line 187
    if-eqz p1, :cond_a

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    move-object v5, p0

    .line 191
    invoke-virtual/range {v5 .. v11}, Le0/s3;->s(IILo2/c;IIZ)V

    .line 192
    .line 193
    .line 194
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    move p1, v6

    .line 197
    move p2, v7

    .line 198
    goto :goto_6

    .line 199
    :cond_b
    :goto_8
    return-void
.end method

.method public j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [I

    .line 14
    .line 15
    iput-object p1, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [I

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Le0/s3;->e:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [J

    .line 14
    .line 15
    iput-object p1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [J

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [J

    .line 14
    .line 15
    iput-object p1, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [J

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public m(IILo2/c;IIZ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    iget-object v1, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lo2/a;

    .line 10
    .line 11
    iget v2, v3, Lo2/c;->j:F

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    cmpg-float v6, v2, v5

    .line 15
    .line 16
    if-lez v6, :cond_15

    .line 17
    .line 18
    iget v6, v3, Lo2/c;->e:I

    .line 19
    .line 20
    if-ge v4, v6, :cond_0

    .line 21
    .line 22
    goto/16 :goto_b

    .line 23
    .line 24
    :cond_0
    sub-int v7, v4, v6

    .line 25
    .line 26
    int-to-float v7, v7

    .line 27
    div-float/2addr v7, v2

    .line 28
    iget v2, v3, Lo2/c;->f:I

    .line 29
    .line 30
    add-int v2, p5, v2

    .line 31
    .line 32
    iput v2, v3, Lo2/c;->e:I

    .line 33
    .line 34
    if-nez p6, :cond_1

    .line 35
    .line 36
    const/high16 v2, -0x80000000

    .line 37
    .line 38
    iput v2, v3, Lo2/c;->g:I

    .line 39
    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    move v8, v2

    .line 42
    move v9, v8

    .line 43
    move v10, v5

    .line 44
    :goto_0
    iget v11, v3, Lo2/c;->h:I

    .line 45
    .line 46
    if-ge v2, v11, :cond_14

    .line 47
    .line 48
    iget v11, v3, Lo2/c;->o:I

    .line 49
    .line 50
    add-int/2addr v11, v2

    .line 51
    invoke-interface {v1, v11}, Lo2/a;->c(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    if-eqz v12, :cond_2

    .line 56
    .line 57
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    const/16 v14, 0x8

    .line 62
    .line 63
    if-ne v13, v14, :cond_3

    .line 64
    .line 65
    :cond_2
    move/from16 v21, v5

    .line 66
    .line 67
    move/from16 v22, v7

    .line 68
    .line 69
    move/from16 v23, v8

    .line 70
    .line 71
    move/from16 v7, p2

    .line 72
    .line 73
    goto/16 :goto_9

    .line 74
    .line 75
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    check-cast v13, Lo2/b;

    .line 80
    .line 81
    invoke-interface {v1}, Lo2/a;->getFlexDirection()I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    const/high16 v15, 0x40000000    # 2.0f

    .line 86
    .line 87
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 88
    .line 89
    const/16 v18, 0x20

    .line 90
    .line 91
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 92
    .line 93
    move/from16 v21, v5

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    if-eqz v14, :cond_4

    .line 97
    .line 98
    if-ne v14, v5, :cond_5

    .line 99
    .line 100
    :cond_4
    move/from16 p6, v5

    .line 101
    .line 102
    move/from16 v22, v7

    .line 103
    .line 104
    move/from16 v23, v8

    .line 105
    .line 106
    move/from16 v7, p1

    .line 107
    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    move/from16 p6, v5

    .line 115
    .line 116
    iget-object v5, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v5, [J

    .line 119
    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    aget-wide v22, v5, v11

    .line 123
    .line 124
    shr-long v4, v22, v18

    .line 125
    .line 126
    long-to-int v14, v4

    .line 127
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget-object v5, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v5, [J

    .line 134
    .line 135
    if-eqz v5, :cond_7

    .line 136
    .line 137
    aget-wide v4, v5, v11

    .line 138
    .line 139
    long-to-int v4, v4

    .line 140
    :cond_7
    iget-object v5, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v5, [Z

    .line 143
    .line 144
    aget-boolean v5, v5, v11

    .line 145
    .line 146
    if-nez v5, :cond_c

    .line 147
    .line 148
    invoke-interface {v13}, Lo2/b;->j()F

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    cmpl-float v5, v5, v21

    .line 153
    .line 154
    if-lez v5, :cond_c

    .line 155
    .line 156
    int-to-float v4, v14

    .line 157
    invoke-interface {v13}, Lo2/b;->j()F

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    mul-float/2addr v5, v7

    .line 162
    add-float/2addr v5, v4

    .line 163
    iget v4, v3, Lo2/c;->h:I

    .line 164
    .line 165
    add-int/lit8 v4, v4, -0x1

    .line 166
    .line 167
    if-ne v2, v4, :cond_8

    .line 168
    .line 169
    add-float/2addr v5, v10

    .line 170
    move/from16 v10, v21

    .line 171
    .line 172
    :cond_8
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-interface {v13}, Lo2/b;->o()I

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-le v4, v14, :cond_9

    .line 181
    .line 182
    invoke-interface {v13}, Lo2/b;->o()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    iget-object v5, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v5, [Z

    .line 189
    .line 190
    aput-boolean p6, v5, v11

    .line 191
    .line 192
    iget v5, v3, Lo2/c;->j:F

    .line 193
    .line 194
    invoke-interface {v13}, Lo2/b;->j()F

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    sub-float/2addr v5, v8

    .line 199
    iput v5, v3, Lo2/c;->j:F

    .line 200
    .line 201
    move/from16 v8, p6

    .line 202
    .line 203
    move/from16 v22, v7

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    int-to-float v14, v4

    .line 207
    sub-float/2addr v5, v14

    .line 208
    add-float/2addr v5, v10

    .line 209
    move/from16 v22, v7

    .line 210
    .line 211
    move/from16 v23, v8

    .line 212
    .line 213
    float-to-double v7, v5

    .line 214
    cmpl-double v10, v7, v19

    .line 215
    .line 216
    if-lez v10, :cond_b

    .line 217
    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    sub-double v7, v7, v19

    .line 221
    .line 222
    :goto_1
    double-to-float v5, v7

    .line 223
    :cond_a
    move v10, v5

    .line 224
    move/from16 v8, v23

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_b
    cmpg-double v10, v7, v16

    .line 228
    .line 229
    if-gez v10, :cond_a

    .line 230
    .line 231
    add-int/lit8 v4, v4, -0x1

    .line 232
    .line 233
    add-double v7, v7, v19

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :goto_2
    iget v5, v3, Lo2/c;->m:I

    .line 237
    .line 238
    move/from16 v7, p1

    .line 239
    .line 240
    invoke-virtual {v0, v7, v13, v5}, Le0/s3;->o(ILo2/b;I)I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-virtual {v12, v5, v4}, Landroid/view/View;->measure(II)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    invoke-virtual {v0, v12, v11, v5, v4}, Le0/s3;->x(Landroid/view/View;III)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v1, v11, v12}, Lo2/a;->e(ILandroid/view/View;)V

    .line 263
    .line 264
    .line 265
    move v4, v14

    .line 266
    move v14, v15

    .line 267
    goto :goto_3

    .line 268
    :cond_c
    move/from16 v22, v7

    .line 269
    .line 270
    move/from16 v23, v8

    .line 271
    .line 272
    move/from16 v7, p1

    .line 273
    .line 274
    move/from16 v8, v23

    .line 275
    .line 276
    :goto_3
    invoke-interface {v13}, Lo2/b;->g()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    add-int/2addr v5, v4

    .line 281
    invoke-interface {v13}, Lo2/b;->l()I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    add-int/2addr v4, v5

    .line 286
    invoke-interface {v1, v12}, Lo2/a;->j(Landroid/view/View;)I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    add-int/2addr v5, v4

    .line 291
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    iget v5, v3, Lo2/c;->e:I

    .line 296
    .line 297
    invoke-interface {v13}, Lo2/b;->h()I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    add-int/2addr v9, v14

    .line 302
    invoke-interface {v13}, Lo2/b;->f()I

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    add-int/2addr v11, v9

    .line 307
    add-int/2addr v11, v5

    .line 308
    iput v11, v3, Lo2/c;->e:I

    .line 309
    .line 310
    move/from16 v7, p2

    .line 311
    .line 312
    goto/16 :goto_8

    .line 313
    .line 314
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    iget-object v5, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v5, [J

    .line 321
    .line 322
    if-eqz v5, :cond_d

    .line 323
    .line 324
    aget-wide v4, v5, v11

    .line 325
    .line 326
    long-to-int v4, v4

    .line 327
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    iget-object v8, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v8, [J

    .line 334
    .line 335
    if-eqz v8, :cond_e

    .line 336
    .line 337
    aget-wide v24, v8, v11

    .line 338
    .line 339
    shr-long v7, v24, v18

    .line 340
    .line 341
    long-to-int v5, v7

    .line 342
    :cond_e
    iget-object v7, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v7, [Z

    .line 345
    .line 346
    aget-boolean v7, v7, v11

    .line 347
    .line 348
    if-nez v7, :cond_13

    .line 349
    .line 350
    invoke-interface {v13}, Lo2/b;->j()F

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    cmpl-float v7, v7, v21

    .line 355
    .line 356
    if-lez v7, :cond_13

    .line 357
    .line 358
    int-to-float v4, v4

    .line 359
    invoke-interface {v13}, Lo2/b;->j()F

    .line 360
    .line 361
    .line 362
    move-result v5

    .line 363
    mul-float v5, v5, v22

    .line 364
    .line 365
    add-float/2addr v5, v4

    .line 366
    iget v4, v3, Lo2/c;->h:I

    .line 367
    .line 368
    add-int/lit8 v4, v4, -0x1

    .line 369
    .line 370
    if-ne v2, v4, :cond_f

    .line 371
    .line 372
    add-float/2addr v5, v10

    .line 373
    move/from16 v10, v21

    .line 374
    .line 375
    :cond_f
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    invoke-interface {v13}, Lo2/b;->p()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-le v4, v7, :cond_10

    .line 384
    .line 385
    invoke-interface {v13}, Lo2/b;->p()I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    iget-object v5, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v5, [Z

    .line 392
    .line 393
    aput-boolean p6, v5, v11

    .line 394
    .line 395
    iget v5, v3, Lo2/c;->j:F

    .line 396
    .line 397
    invoke-interface {v13}, Lo2/b;->j()F

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    sub-float/2addr v5, v7

    .line 402
    iput v5, v3, Lo2/c;->j:F

    .line 403
    .line 404
    move/from16 v8, p6

    .line 405
    .line 406
    goto :goto_6

    .line 407
    :cond_10
    int-to-float v7, v4

    .line 408
    sub-float/2addr v5, v7

    .line 409
    add-float/2addr v5, v10

    .line 410
    float-to-double v7, v5

    .line 411
    cmpl-double v10, v7, v19

    .line 412
    .line 413
    if-lez v10, :cond_12

    .line 414
    .line 415
    add-int/lit8 v4, v4, 0x1

    .line 416
    .line 417
    sub-double v7, v7, v19

    .line 418
    .line 419
    :goto_5
    double-to-float v5, v7

    .line 420
    :cond_11
    move v10, v5

    .line 421
    move/from16 v8, v23

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_12
    cmpg-double v10, v7, v16

    .line 425
    .line 426
    if-gez v10, :cond_11

    .line 427
    .line 428
    add-int/lit8 v4, v4, -0x1

    .line 429
    .line 430
    add-double v7, v7, v19

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :goto_6
    iget v5, v3, Lo2/c;->m:I

    .line 434
    .line 435
    move/from16 v7, p2

    .line 436
    .line 437
    invoke-virtual {v0, v7, v13, v5}, Le0/s3;->n(ILo2/b;I)I

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 442
    .line 443
    .line 444
    move-result v4

    .line 445
    invoke-virtual {v12, v4, v5}, Landroid/view/View;->measure(II)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 449
    .line 450
    .line 451
    move-result v14

    .line 452
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    invoke-virtual {v0, v12, v11, v4, v5}, Le0/s3;->x(Landroid/view/View;III)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v1, v11, v12}, Lo2/a;->e(ILandroid/view/View;)V

    .line 460
    .line 461
    .line 462
    move v4, v14

    .line 463
    move v5, v15

    .line 464
    goto :goto_7

    .line 465
    :cond_13
    move/from16 v7, p2

    .line 466
    .line 467
    move/from16 v8, v23

    .line 468
    .line 469
    :goto_7
    invoke-interface {v13}, Lo2/b;->h()I

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    add-int/2addr v11, v5

    .line 474
    invoke-interface {v13}, Lo2/b;->f()I

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    add-int/2addr v5, v11

    .line 479
    invoke-interface {v1, v12}, Lo2/a;->j(Landroid/view/View;)I

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    add-int/2addr v11, v5

    .line 484
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    iget v9, v3, Lo2/c;->e:I

    .line 489
    .line 490
    invoke-interface {v13}, Lo2/b;->g()I

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    add-int/2addr v11, v4

    .line 495
    invoke-interface {v13}, Lo2/b;->l()I

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    add-int/2addr v4, v11

    .line 500
    add-int/2addr v4, v9

    .line 501
    iput v4, v3, Lo2/c;->e:I

    .line 502
    .line 503
    move v4, v5

    .line 504
    :goto_8
    iget v5, v3, Lo2/c;->g:I

    .line 505
    .line 506
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    iput v5, v3, Lo2/c;->g:I

    .line 511
    .line 512
    move v9, v4

    .line 513
    goto :goto_a

    .line 514
    :goto_9
    move/from16 v8, v23

    .line 515
    .line 516
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 517
    .line 518
    move/from16 v4, p4

    .line 519
    .line 520
    move/from16 v5, v21

    .line 521
    .line 522
    move/from16 v7, v22

    .line 523
    .line 524
    goto/16 :goto_0

    .line 525
    .line 526
    :cond_14
    move/from16 v7, p2

    .line 527
    .line 528
    move/from16 v23, v8

    .line 529
    .line 530
    if-eqz v23, :cond_15

    .line 531
    .line 532
    iget v1, v3, Lo2/c;->e:I

    .line 533
    .line 534
    if-eq v6, v1, :cond_15

    .line 535
    .line 536
    const/4 v6, 0x1

    .line 537
    move/from16 v1, p1

    .line 538
    .line 539
    move/from16 v4, p4

    .line 540
    .line 541
    move/from16 v5, p5

    .line 542
    .line 543
    move v2, v7

    .line 544
    invoke-virtual/range {v0 .. v6}, Le0/s3;->m(IILo2/c;IIZ)V

    .line 545
    .line 546
    .line 547
    :cond_15
    :goto_b
    return-void
.end method

.method public n(ILo2/b;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo2/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lo2/a;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0}, Lo2/a;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-interface {p2}, Lo2/b;->h()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-interface {p2}, Lo2/b;->f()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, v1

    .line 24
    add-int/2addr v2, p3

    .line 25
    invoke-interface {p2}, Lo2/b;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-interface {v0, p1, v2, p3}, Lo2/a;->h(III)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-interface {p2}, Lo2/b;->o()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-le p3, v0, :cond_0

    .line 42
    .line 43
    invoke-interface {p2}, Lo2/b;->o()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_0
    invoke-interface {p2}, Lo2/b;->m()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ge p3, v0, :cond_1

    .line 61
    .line 62
    invoke-interface {p2}, Lo2/b;->m()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :cond_1
    return p1
.end method

.method public o(ILo2/b;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo2/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lo2/a;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0}, Lo2/a;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v1

    .line 14
    invoke-interface {p2}, Lo2/b;->g()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-interface {p2}, Lo2/b;->l()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/2addr v2, v1

    .line 24
    add-int/2addr v2, p3

    .line 25
    invoke-interface {p2}, Lo2/b;->d()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-interface {v0, p1, v2, p3}, Lo2/a;->d(III)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-interface {p2}, Lo2/b;->p()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-le p3, v0, :cond_0

    .line 42
    .line 43
    invoke-interface {p2}, Lo2/b;->p()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_0
    invoke-interface {p2}, Lo2/b;->c()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ge p3, v0, :cond_1

    .line 61
    .line 62
    invoke-interface {p2}, Lo2/b;->c()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :cond_1
    return p1
.end method

.method public p(Landroid/view/View;Lo2/c;IIII)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo2/b;

    .line 6
    .line 7
    iget-object v1, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lo2/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lo2/a;->getAlignItems()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {v0}, Lo2/b;->a()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lo2/b;->a()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :cond_0
    iget v3, p2, Lo2/c;->g:I

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-eqz v2, :cond_7

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-eq v2, v5, :cond_5

    .line 33
    .line 34
    if-eq v2, v4, :cond_3

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x4

    .line 40
    if-eq v2, p2, :cond_7

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-interface {v1}, Lo2/a;->getFlexWrap()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget p2, p2, Lo2/c;->l:I

    .line 48
    .line 49
    if-eq v1, v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr p2, v1

    .line 56
    invoke-interface {v0}, Lo2/b;->h()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    add-int/2addr p4, p2

    .line 65
    add-int/2addr p6, p2

    .line 66
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    sub-int/2addr p2, v1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/2addr v1, p2

    .line 80
    invoke-interface {v0}, Lo2/b;->f()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    sub-int/2addr p4, p2

    .line 89
    sub-int/2addr p6, p2

    .line 90
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    sub-int/2addr v3, p2

    .line 99
    invoke-interface {v0}, Lo2/b;->h()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    add-int/2addr p2, v3

    .line 104
    invoke-interface {v0}, Lo2/b;->f()I

    .line 105
    .line 106
    .line 107
    move-result p6

    .line 108
    sub-int/2addr p2, p6

    .line 109
    div-int/2addr p2, v4

    .line 110
    invoke-interface {v1}, Lo2/a;->getFlexWrap()I

    .line 111
    .line 112
    .line 113
    move-result p6

    .line 114
    if-eq p6, v4, :cond_4

    .line 115
    .line 116
    add-int/2addr p4, p2

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    add-int/2addr p2, p4

    .line 122
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    sub-int/2addr p4, p2

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    add-int/2addr p2, p4

    .line 132
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_5
    invoke-interface {v1}, Lo2/a;->getFlexWrap()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eq p2, v4, :cond_6

    .line 141
    .line 142
    add-int/2addr p4, v3

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    sub-int p2, p4, p2

    .line 148
    .line 149
    invoke-interface {v0}, Lo2/b;->f()I

    .line 150
    .line 151
    .line 152
    move-result p6

    .line 153
    sub-int/2addr p2, p6

    .line 154
    invoke-interface {v0}, Lo2/b;->f()I

    .line 155
    .line 156
    .line 157
    move-result p6

    .line 158
    sub-int/2addr p4, p6

    .line 159
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_6
    sub-int/2addr p4, v3

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    add-int/2addr p2, p4

    .line 169
    invoke-interface {v0}, Lo2/b;->h()I

    .line 170
    .line 171
    .line 172
    move-result p4

    .line 173
    add-int/2addr p4, p2

    .line 174
    sub-int/2addr p6, v3

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    add-int/2addr p2, p6

    .line 180
    invoke-interface {v0}, Lo2/b;->h()I

    .line 181
    .line 182
    .line 183
    move-result p6

    .line 184
    add-int/2addr p6, p2

    .line 185
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_7
    invoke-interface {v1}, Lo2/a;->getFlexWrap()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eq p2, v4, :cond_8

    .line 194
    .line 195
    invoke-interface {v0}, Lo2/b;->h()I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    add-int/2addr p2, p4

    .line 200
    invoke-interface {v0}, Lo2/b;->h()I

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    add-int/2addr p4, p6

    .line 205
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_8
    invoke-interface {v0}, Lo2/b;->f()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    sub-int/2addr p4, p2

    .line 214
    invoke-interface {v0}, Lo2/b;->f()I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    sub-int/2addr p6, p2

    .line 219
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public q(Landroid/view/View;Lo2/c;ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo2/b;

    .line 6
    .line 7
    iget-object v1, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lo2/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lo2/a;->getAlignItems()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0}, Lo2/b;->a()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    if-eq v2, v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lo2/b;->a()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_0
    iget p2, p2, Lo2/c;->g:I

    .line 27
    .line 28
    if-eqz v1, :cond_5

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const/4 p2, 0x3

    .line 37
    if-eq v1, p2, :cond_5

    .line 38
    .line 39
    const/4 p2, 0x4

    .line 40
    if-eq v1, p2, :cond_5

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    sub-int/2addr p2, v1

    .line 54
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v1, p2

    .line 59
    invoke-static {v0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    sub-int/2addr v1, p2

    .line 64
    div-int/2addr v1, v2

    .line 65
    if-nez p3, :cond_2

    .line 66
    .line 67
    add-int/2addr p4, v1

    .line 68
    add-int/2addr p6, v1

    .line 69
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    sub-int/2addr p4, v1

    .line 74
    sub-int/2addr p6, v1

    .line 75
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    if-nez p3, :cond_4

    .line 80
    .line 81
    add-int/2addr p4, p2

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    sub-int/2addr p4, p3

    .line 87
    invoke-interface {v0}, Lo2/b;->l()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    sub-int/2addr p4, p3

    .line 92
    add-int/2addr p6, p2

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    sub-int/2addr p6, p2

    .line 98
    invoke-interface {v0}, Lo2/b;->l()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    sub-int/2addr p6, p2

    .line 103
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    sub-int/2addr p4, p2

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    add-int/2addr p3, p4

    .line 113
    invoke-interface {v0}, Lo2/b;->g()I

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    add-int/2addr p4, p3

    .line 118
    sub-int/2addr p6, p2

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    add-int/2addr p2, p6

    .line 124
    invoke-interface {v0}, Lo2/b;->g()I

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    add-int/2addr p3, p2

    .line 129
    invoke-virtual {p1, p4, p5, p3, p7}, Landroid/view/View;->layout(IIII)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    if-nez p3, :cond_6

    .line 134
    .line 135
    invoke-interface {v0}, Lo2/b;->g()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    add-int/2addr p2, p4

    .line 140
    invoke-interface {v0}, Lo2/b;->g()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    add-int/2addr p3, p6

    .line 145
    invoke-virtual {p1, p2, p5, p3, p7}, Landroid/view/View;->layout(IIII)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    invoke-interface {v0}, Lo2/b;->l()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    sub-int/2addr p4, p2

    .line 154
    invoke-interface {v0}, Lo2/b;->l()I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    sub-int/2addr p6, p2

    .line 159
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/io/BufferedWriter;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Ljava/io/BufferedWriter;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public s(IILo2/c;IIZ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    iget-object v1, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lo2/a;

    .line 10
    .line 11
    iget v2, v3, Lo2/c;->e:I

    .line 12
    .line 13
    iget v5, v3, Lo2/c;->k:F

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    cmpg-float v7, v5, v6

    .line 17
    .line 18
    if-lez v7, :cond_15

    .line 19
    .line 20
    if-le v4, v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_b

    .line 23
    .line 24
    :cond_0
    sub-int v7, v2, v4

    .line 25
    .line 26
    int-to-float v7, v7

    .line 27
    div-float/2addr v7, v5

    .line 28
    iget v5, v3, Lo2/c;->f:I

    .line 29
    .line 30
    add-int v5, p5, v5

    .line 31
    .line 32
    iput v5, v3, Lo2/c;->e:I

    .line 33
    .line 34
    if-nez p6, :cond_1

    .line 35
    .line 36
    const/high16 v5, -0x80000000

    .line 37
    .line 38
    iput v5, v3, Lo2/c;->g:I

    .line 39
    .line 40
    :cond_1
    const/4 v5, 0x0

    .line 41
    move v8, v5

    .line 42
    move v9, v8

    .line 43
    move v10, v6

    .line 44
    :goto_0
    iget v11, v3, Lo2/c;->h:I

    .line 45
    .line 46
    if-ge v5, v11, :cond_14

    .line 47
    .line 48
    iget v11, v3, Lo2/c;->o:I

    .line 49
    .line 50
    add-int/2addr v11, v5

    .line 51
    invoke-interface {v1, v11}, Lo2/a;->c(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v12

    .line 55
    if-eqz v12, :cond_2

    .line 56
    .line 57
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    const/16 v14, 0x8

    .line 62
    .line 63
    if-ne v13, v14, :cond_3

    .line 64
    .line 65
    :cond_2
    move/from16 v22, v6

    .line 66
    .line 67
    move/from16 v25, v7

    .line 68
    .line 69
    move/from16 v23, v8

    .line 70
    .line 71
    move v8, v5

    .line 72
    move/from16 v5, p2

    .line 73
    .line 74
    goto/16 :goto_a

    .line 75
    .line 76
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v13

    .line 80
    check-cast v13, Lo2/b;

    .line 81
    .line 82
    invoke-interface {v1}, Lo2/a;->getFlexDirection()I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    const/high16 v15, 0x40000000    # 2.0f

    .line 87
    .line 88
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 89
    .line 90
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 91
    .line 92
    const/16 v20, 0x20

    .line 93
    .line 94
    const/high16 v21, 0x3f800000    # 1.0f

    .line 95
    .line 96
    move/from16 v22, v6

    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    if-eqz v14, :cond_4

    .line 100
    .line 101
    if-ne v14, v6, :cond_5

    .line 102
    .line 103
    :cond_4
    move/from16 p6, v6

    .line 104
    .line 105
    move/from16 v25, v7

    .line 106
    .line 107
    move/from16 v23, v8

    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    move/from16 p6, v6

    .line 116
    .line 117
    iget-object v6, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v6, [J

    .line 120
    .line 121
    if-eqz v6, :cond_6

    .line 122
    .line 123
    aget-wide v23, v6, v11

    .line 124
    .line 125
    move/from16 v25, v7

    .line 126
    .line 127
    shr-long v6, v23, v20

    .line 128
    .line 129
    long-to-int v14, v6

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    move/from16 v25, v7

    .line 132
    .line 133
    :goto_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    iget-object v7, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v7, [J

    .line 140
    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    aget-wide v6, v7, v11

    .line 144
    .line 145
    long-to-int v6, v6

    .line 146
    :cond_7
    iget-object v7, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v7, [Z

    .line 149
    .line 150
    aget-boolean v7, v7, v11

    .line 151
    .line 152
    if-nez v7, :cond_c

    .line 153
    .line 154
    invoke-interface {v13}, Lo2/b;->b()F

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    cmpl-float v7, v7, v22

    .line 159
    .line 160
    if-lez v7, :cond_c

    .line 161
    .line 162
    int-to-float v6, v14

    .line 163
    invoke-interface {v13}, Lo2/b;->b()F

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    mul-float v7, v7, v25

    .line 168
    .line 169
    sub-float/2addr v6, v7

    .line 170
    iget v7, v3, Lo2/c;->h:I

    .line 171
    .line 172
    add-int/lit8 v7, v7, -0x1

    .line 173
    .line 174
    if-ne v5, v7, :cond_8

    .line 175
    .line 176
    add-float/2addr v6, v10

    .line 177
    move/from16 v10, v22

    .line 178
    .line 179
    :cond_8
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-interface {v13}, Lo2/b;->m()I

    .line 184
    .line 185
    .line 186
    move-result v14

    .line 187
    if-ge v7, v14, :cond_9

    .line 188
    .line 189
    invoke-interface {v13}, Lo2/b;->m()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    iget-object v6, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v6, [Z

    .line 196
    .line 197
    aput-boolean p6, v6, v11

    .line 198
    .line 199
    iget v6, v3, Lo2/c;->k:F

    .line 200
    .line 201
    invoke-interface {v13}, Lo2/b;->b()F

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    sub-float/2addr v6, v8

    .line 206
    iput v6, v3, Lo2/c;->k:F

    .line 207
    .line 208
    move/from16 v8, p6

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_9
    int-to-float v14, v7

    .line 212
    sub-float/2addr v6, v14

    .line 213
    add-float/2addr v6, v10

    .line 214
    move v10, v7

    .line 215
    move/from16 v23, v8

    .line 216
    .line 217
    float-to-double v7, v6

    .line 218
    cmpl-double v14, v7, v18

    .line 219
    .line 220
    if-lez v14, :cond_a

    .line 221
    .line 222
    add-int/lit8 v7, v10, 0x1

    .line 223
    .line 224
    sub-float v6, v6, v21

    .line 225
    .line 226
    :goto_2
    move v10, v6

    .line 227
    move/from16 v8, v23

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_a
    cmpg-double v7, v7, v16

    .line 231
    .line 232
    if-gez v7, :cond_b

    .line 233
    .line 234
    add-int/lit8 v7, v10, -0x1

    .line 235
    .line 236
    add-float v6, v6, v21

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_b
    move v7, v10

    .line 240
    move/from16 v8, v23

    .line 241
    .line 242
    move v10, v6

    .line 243
    :goto_3
    iget v6, v3, Lo2/c;->m:I

    .line 244
    .line 245
    move/from16 v14, p1

    .line 246
    .line 247
    invoke-virtual {v0, v14, v13, v6}, Le0/s3;->o(ILo2/b;I)I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-virtual {v12, v6, v7}, Landroid/view/View;->measure(II)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 263
    .line 264
    .line 265
    move-result v16

    .line 266
    invoke-virtual {v0, v12, v11, v6, v7}, Le0/s3;->x(Landroid/view/View;III)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v1, v11, v12}, Lo2/a;->e(ILandroid/view/View;)V

    .line 270
    .line 271
    .line 272
    move v6, v15

    .line 273
    move/from16 v14, v16

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_c
    move/from16 v23, v8

    .line 277
    .line 278
    move/from16 v8, v23

    .line 279
    .line 280
    :goto_4
    invoke-interface {v13}, Lo2/b;->g()I

    .line 281
    .line 282
    .line 283
    move-result v7

    .line 284
    add-int/2addr v7, v6

    .line 285
    invoke-interface {v13}, Lo2/b;->l()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    add-int/2addr v6, v7

    .line 290
    invoke-interface {v1, v12}, Lo2/a;->j(Landroid/view/View;)I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    add-int/2addr v7, v6

    .line 295
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    iget v7, v3, Lo2/c;->e:I

    .line 300
    .line 301
    invoke-interface {v13}, Lo2/b;->h()I

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    add-int/2addr v9, v14

    .line 306
    invoke-interface {v13}, Lo2/b;->f()I

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    add-int/2addr v11, v9

    .line 311
    add-int/2addr v11, v7

    .line 312
    iput v11, v3, Lo2/c;->e:I

    .line 313
    .line 314
    move/from16 v23, v8

    .line 315
    .line 316
    move v8, v5

    .line 317
    move/from16 v5, p2

    .line 318
    .line 319
    goto/16 :goto_9

    .line 320
    .line 321
    :goto_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    iget-object v7, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v7, [J

    .line 328
    .line 329
    if-eqz v7, :cond_d

    .line 330
    .line 331
    aget-wide v6, v7, v11

    .line 332
    .line 333
    long-to-int v6, v6

    .line 334
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    iget-object v8, v0, Le0/s3;->g:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v8, [J

    .line 341
    .line 342
    if-eqz v8, :cond_e

    .line 343
    .line 344
    aget-wide v7, v8, v11

    .line 345
    .line 346
    shr-long v7, v7, v20

    .line 347
    .line 348
    long-to-int v7, v7

    .line 349
    :cond_e
    iget-object v8, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v8, [Z

    .line 352
    .line 353
    aget-boolean v8, v8, v11

    .line 354
    .line 355
    if-nez v8, :cond_13

    .line 356
    .line 357
    invoke-interface {v13}, Lo2/b;->b()F

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    cmpl-float v8, v8, v22

    .line 362
    .line 363
    if-lez v8, :cond_13

    .line 364
    .line 365
    int-to-float v6, v6

    .line 366
    invoke-interface {v13}, Lo2/b;->b()F

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    mul-float v7, v7, v25

    .line 371
    .line 372
    sub-float/2addr v6, v7

    .line 373
    iget v7, v3, Lo2/c;->h:I

    .line 374
    .line 375
    add-int/lit8 v7, v7, -0x1

    .line 376
    .line 377
    if-ne v5, v7, :cond_f

    .line 378
    .line 379
    add-float/2addr v6, v10

    .line 380
    move/from16 v10, v22

    .line 381
    .line 382
    :cond_f
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    invoke-interface {v13}, Lo2/b;->c()I

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    if-ge v7, v8, :cond_10

    .line 391
    .line 392
    invoke-interface {v13}, Lo2/b;->c()I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    iget-object v6, v0, Le0/s3;->d:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v6, [Z

    .line 399
    .line 400
    aput-boolean p6, v6, v11

    .line 401
    .line 402
    iget v6, v3, Lo2/c;->k:F

    .line 403
    .line 404
    invoke-interface {v13}, Lo2/b;->b()F

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    sub-float/2addr v6, v8

    .line 409
    iput v6, v3, Lo2/c;->k:F

    .line 410
    .line 411
    move/from16 v23, p6

    .line 412
    .line 413
    move v8, v5

    .line 414
    goto :goto_7

    .line 415
    :cond_10
    int-to-float v8, v7

    .line 416
    sub-float/2addr v6, v8

    .line 417
    add-float/2addr v6, v10

    .line 418
    move v8, v5

    .line 419
    float-to-double v4, v6

    .line 420
    cmpl-double v10, v4, v18

    .line 421
    .line 422
    if-lez v10, :cond_12

    .line 423
    .line 424
    add-int/lit8 v7, v7, 0x1

    .line 425
    .line 426
    sub-float v6, v6, v21

    .line 427
    .line 428
    :cond_11
    :goto_6
    move v10, v6

    .line 429
    goto :goto_7

    .line 430
    :cond_12
    cmpg-double v4, v4, v16

    .line 431
    .line 432
    if-gez v4, :cond_11

    .line 433
    .line 434
    add-int/lit8 v7, v7, -0x1

    .line 435
    .line 436
    add-float v6, v6, v21

    .line 437
    .line 438
    goto :goto_6

    .line 439
    :goto_7
    iget v4, v3, Lo2/c;->m:I

    .line 440
    .line 441
    move/from16 v5, p2

    .line 442
    .line 443
    invoke-virtual {v0, v5, v13, v4}, Le0/s3;->n(ILo2/b;I)I

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    invoke-virtual {v12, v6, v4}, Landroid/view/View;->measure(II)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 459
    .line 460
    .line 461
    move-result v14

    .line 462
    invoke-virtual {v0, v12, v11, v6, v4}, Le0/s3;->x(Landroid/view/View;III)V

    .line 463
    .line 464
    .line 465
    invoke-interface {v1, v11, v12}, Lo2/a;->e(ILandroid/view/View;)V

    .line 466
    .line 467
    .line 468
    move v6, v7

    .line 469
    move v7, v14

    .line 470
    goto :goto_8

    .line 471
    :cond_13
    move v8, v5

    .line 472
    move/from16 v5, p2

    .line 473
    .line 474
    :goto_8
    invoke-interface {v13}, Lo2/b;->h()I

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    add-int/2addr v4, v7

    .line 479
    invoke-interface {v13}, Lo2/b;->f()I

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    add-int/2addr v7, v4

    .line 484
    invoke-interface {v1, v12}, Lo2/a;->j(Landroid/view/View;)I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    add-int/2addr v4, v7

    .line 489
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    iget v7, v3, Lo2/c;->e:I

    .line 494
    .line 495
    invoke-interface {v13}, Lo2/b;->g()I

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    add-int/2addr v9, v6

    .line 500
    invoke-interface {v13}, Lo2/b;->l()I

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    add-int/2addr v6, v9

    .line 505
    add-int/2addr v6, v7

    .line 506
    iput v6, v3, Lo2/c;->e:I

    .line 507
    .line 508
    move v6, v4

    .line 509
    :goto_9
    iget v4, v3, Lo2/c;->g:I

    .line 510
    .line 511
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    iput v4, v3, Lo2/c;->g:I

    .line 516
    .line 517
    move v9, v6

    .line 518
    :goto_a
    add-int/lit8 v4, v8, 0x1

    .line 519
    .line 520
    move v5, v4

    .line 521
    move/from16 v6, v22

    .line 522
    .line 523
    move/from16 v8, v23

    .line 524
    .line 525
    move/from16 v7, v25

    .line 526
    .line 527
    move/from16 v4, p4

    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :cond_14
    move/from16 v5, p2

    .line 532
    .line 533
    move/from16 v23, v8

    .line 534
    .line 535
    if-eqz v23, :cond_15

    .line 536
    .line 537
    iget v1, v3, Lo2/c;->e:I

    .line 538
    .line 539
    if-eq v2, v1, :cond_15

    .line 540
    .line 541
    const/4 v6, 0x1

    .line 542
    move/from16 v1, p1

    .line 543
    .line 544
    move/from16 v4, p4

    .line 545
    .line 546
    move v2, v5

    .line 547
    move/from16 v5, p5

    .line 548
    .line 549
    invoke-virtual/range {v0 .. v6}, Le0/s3;->s(IILo2/c;IIZ)V

    .line 550
    .line 551
    .line 552
    :cond_15
    :goto_b
    return-void
.end method

.method public u(Landroid/view/View;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo2/b;

    .line 6
    .line 7
    invoke-interface {v0}, Lo2/b;->g()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    invoke-interface {v0}, Lo2/b;->l()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    iget-object v1, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lo2/a;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lo2/a;->j(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr p2, v2

    .line 26
    invoke-interface {v0}, Lo2/b;->c()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-interface {v0}, Lo2/b;->p()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object v0, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, [J

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    aget-wide v2, v0, p3

    .line 49
    .line 50
    const/16 v0, 0x20

    .line 51
    .line 52
    shr-long/2addr v2, v0

    .line 53
    long-to-int v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    .line 61
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1, p3, p2, v0}, Le0/s3;->x(Landroid/view/View;III)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v1, p3, p1}, Lo2/a;->e(ILandroid/view/View;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public v(Landroid/view/View;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lo2/b;

    .line 6
    .line 7
    invoke-interface {v0}, Lo2/b;->h()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    invoke-interface {v0}, Lo2/b;->f()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    iget-object v1, p0, Le0/s3;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lo2/a;

    .line 20
    .line 21
    invoke-interface {v1, p1}, Lo2/a;->j(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr p2, v2

    .line 26
    invoke-interface {v0}, Lo2/b;->m()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-interface {v0}, Lo2/b;->o()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object v0, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, [J

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    aget-wide v2, v0, p3

    .line 49
    .line 50
    long-to-int v0, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 57
    .line 58
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, p3, v0, p2}, Le0/s3;->x(Landroid/view/View;III)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, p3, p1}, Lo2/a;->e(ILandroid/view/View;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public w(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Le0/s3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lo2/a;

    .line 8
    .line 9
    invoke-interface {v2}, Lo2/a;->getFlexItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lt v1, v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    invoke-interface {v2}, Lo2/a;->getFlexDirection()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {v2}, Lo2/a;->getAlignItems()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v5, "Invalid flex direction: "

    .line 26
    .line 27
    const/4 v8, 0x4

    .line 28
    if-ne v4, v8, :cond_a

    .line 29
    .line 30
    iget-object v4, v0, Le0/s3;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, [I

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    aget v1, v4, v1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-interface {v2}, Lo2/a;->getFlexLinesInternal()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    :goto_1
    if-ge v1, v11, :cond_f

    .line 49
    .line 50
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    check-cast v12, Lo2/c;

    .line 55
    .line 56
    iget v13, v12, Lo2/c;->h:I

    .line 57
    .line 58
    const/4 v14, 0x0

    .line 59
    :goto_2
    if-ge v14, v13, :cond_9

    .line 60
    .line 61
    iget v15, v12, Lo2/c;->o:I

    .line 62
    .line 63
    add-int/2addr v15, v14

    .line 64
    invoke-interface {v2}, Lo2/a;->getFlexItemCount()I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-lt v14, v9, :cond_2

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_2
    invoke-interface {v2, v15}, Lo2/a;->c(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    if-eqz v9, :cond_8

    .line 76
    .line 77
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const/16 v7, 0x8

    .line 82
    .line 83
    if-ne v6, v7, :cond_3

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lo2/b;

    .line 91
    .line 92
    invoke-interface {v6}, Lo2/b;->a()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    const/4 v10, -0x1

    .line 97
    if-eq v7, v10, :cond_4

    .line 98
    .line 99
    invoke-interface {v6}, Lo2/b;->a()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eq v6, v8, :cond_4

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    if-eqz v3, :cond_7

    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    if-eq v3, v6, :cond_7

    .line 110
    .line 111
    const/4 v6, 0x2

    .line 112
    if-eq v3, v6, :cond_6

    .line 113
    .line 114
    const/4 v6, 0x3

    .line 115
    if-ne v3, v6, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    invoke-static {v3, v5}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_6
    :goto_3
    iget v6, v12, Lo2/c;->g:I

    .line 127
    .line 128
    invoke-virtual {v0, v9, v6, v15}, Le0/s3;->u(Landroid/view/View;II)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    iget v6, v12, Lo2/c;->g:I

    .line 133
    .line 134
    invoke-virtual {v0, v9, v6, v15}, Le0/s3;->v(Landroid/view/View;II)V

    .line 135
    .line 136
    .line 137
    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_a
    invoke-interface {v2}, Lo2/a;->getFlexLinesInternal()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_f

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lo2/c;

    .line 162
    .line 163
    iget-object v6, v4, Lo2/c;->n:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    const/4 v8, 0x0

    .line 170
    :goto_5
    if-ge v8, v7, :cond_b

    .line 171
    .line 172
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    add-int/lit8 v8, v8, 0x1

    .line 177
    .line 178
    check-cast v9, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-interface {v2, v10}, Lo2/a;->c(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    const/4 v11, 0x1

    .line 189
    const/4 v12, 0x2

    .line 190
    if-eqz v3, :cond_e

    .line 191
    .line 192
    if-eq v3, v11, :cond_e

    .line 193
    .line 194
    const/4 v13, 0x3

    .line 195
    if-eq v3, v12, :cond_d

    .line 196
    .line 197
    if-ne v3, v13, :cond_c

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_c
    invoke-static {v3, v5}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_d
    :goto_6
    iget v14, v4, Lo2/c;->g:I

    .line 209
    .line 210
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    invoke-virtual {v0, v10, v14, v9}, Le0/s3;->u(Landroid/view/View;II)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_e
    const/4 v13, 0x3

    .line 219
    iget v14, v4, Lo2/c;->g:I

    .line 220
    .line 221
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    invoke-virtual {v0, v10, v14, v9}, Le0/s3;->v(Landroid/view/View;II)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_f
    :goto_7
    return-void
.end method

.method public x(Landroid/view/View;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Le0/s3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    const-wide v1, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    int-to-long v4, p4

    .line 15
    shl-long/2addr v4, v3

    .line 16
    int-to-long p3, p3

    .line 17
    and-long/2addr p3, v1

    .line 18
    or-long/2addr p3, v4

    .line 19
    aput-wide p3, v0, p2

    .line 20
    .line 21
    :cond_0
    iget-object p3, p0, Le0/s3;->g:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p3, [J

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-long v4, p1

    .line 36
    shl-long v3, v4, v3

    .line 37
    .line 38
    int-to-long v5, p4

    .line 39
    and-long v0, v5, v1

    .line 40
    .line 41
    or-long/2addr v0, v3

    .line 42
    aput-wide v0, p3, p2

    .line 43
    .line 44
    :cond_1
    return-void
.end method
