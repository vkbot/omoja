.class public Lcom/woha/atir/RadarView;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Landroid/graphics/Paint;

.field public final h:Landroid/graphics/Paint;

.field public i:Ljava/util/List;

.field public j:D

.field public k:D

.field public l:F

.field public m:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/woha/atir/RadarView;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    const v0, -0xffff01

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/woha/atir/RadarView;->b:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/woha/atir/RadarView;->c:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/high16 v1, -0x10000

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/woha/atir/RadarView;->c:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/woha/atir/RadarView;->e:Landroid/graphics/Paint;

    .line 48
    .line 49
    const v2, -0xff0100

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/woha/atir/RadarView;->e:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/woha/atir/RadarView;->e:Landroid/graphics/Paint;

    .line 63
    .line 64
    const/high16 v3, 0x40000000    # 2.0f

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 80
    .line 81
    const/16 v3, 0xff

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    const/16 v5, 0x32

    .line 85
    .line 86
    invoke-static {v5, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/woha/atir/RadarView;->g:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/woha/atir/RadarView;->g:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/woha/atir/RadarView;->g:Landroid/graphics/Paint;

    .line 109
    .line 110
    const/high16 v2, 0x40800000    # 4.0f

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/woha/atir/RadarView;->h:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/woha/atir/RadarView;->h:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Landroid/graphics/Paint;

    .line 131
    .line 132
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 146
    .line 147
    const/16 v0, 0x64

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    .line 151
    .line 152
    new-instance p1, Landroid/graphics/Paint;

    .line 153
    .line 154
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Lcom/woha/atir/RadarView;->d:Landroid/graphics/Paint;

    .line 158
    .line 159
    const/4 v0, -0x1

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/woha/atir/RadarView;->d:Landroid/graphics/Paint;

    .line 164
    .line 165
    const/high16 v0, 0x41f00000    # 30.0f

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/woha/atir/RadarView;->d:Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    .line 174
    .line 175
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    div-int/lit8 v7, v2, 0x2

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/lit8 v8, v2, -0x64

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-double v3, v3

    .line 25
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 26
    .line 27
    iget-wide v9, v0, Lcom/woha/atir/RadarView;->m:D

    .line 28
    .line 29
    mul-double/2addr v9, v5

    .line 30
    div-double/2addr v3, v9

    .line 31
    double-to-float v9, v3

    .line 32
    const/4 v3, 0x1

    .line 33
    :goto_0
    const/4 v10, 0x5

    .line 34
    if-gt v3, v10, :cond_0

    .line 35
    .line 36
    int-to-float v4, v7

    .line 37
    int-to-float v5, v8

    .line 38
    mul-int/lit8 v6, v3, 0x64

    .line 39
    .line 40
    int-to-float v6, v6

    .line 41
    mul-float/2addr v6, v9

    .line 42
    iget-object v10, v0, Lcom/woha/atir/RadarView;->e:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {v1, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v3, Landroid/graphics/Path;

    .line 51
    .line 52
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 53
    .line 54
    .line 55
    int-to-float v4, v7

    .line 56
    add-int/lit16 v5, v2, -0x8c

    .line 57
    .line 58
    int-to-float v5, v5

    .line 59
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v7, -0x14

    .line 63
    .line 64
    int-to-float v4, v4

    .line 65
    add-int/lit8 v2, v2, -0x50

    .line 66
    .line 67
    int-to-float v2, v2

    .line 68
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v4, v7, 0x14

    .line 72
    .line 73
    int-to-float v4, v4

    .line 74
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/woha/atir/RadarView;->b:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v0, Lcom/woha/atir/RadarView;->i:Ljava/util/List;

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    new-instance v11, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    move v3, v12

    .line 96
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ge v3, v4, :cond_3

    .line 101
    .line 102
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Li7/x;

    .line 107
    .line 108
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    move v6, v12

    .line 113
    :goto_2
    if-ge v6, v5, :cond_2

    .line 114
    .line 115
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    check-cast v13, Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    check-cast v14, Li7/x;

    .line 128
    .line 129
    move-object/from16 v23, v11

    .line 130
    .line 131
    iget-wide v10, v4, Li7/x;->b:D

    .line 132
    .line 133
    move-object/from16 v24, v13

    .line 134
    .line 135
    iget-wide v12, v4, Li7/x;->c:D

    .line 136
    .line 137
    move-object/from16 v25, v2

    .line 138
    .line 139
    move/from16 v26, v3

    .line 140
    .line 141
    iget-wide v2, v14, Li7/x;->b:D

    .line 142
    .line 143
    iget-wide v14, v14, Li7/x;->c:D

    .line 144
    .line 145
    move-wide/from16 v19, v2

    .line 146
    .line 147
    move-wide/from16 v17, v12

    .line 148
    .line 149
    move-wide/from16 v21, v14

    .line 150
    .line 151
    move-wide v15, v10

    .line 152
    invoke-static/range {v15 .. v22}, La/a;->b(DDDD)D

    .line 153
    .line 154
    .line 155
    move-result-wide v2

    .line 156
    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    .line 157
    .line 158
    cmpg-double v2, v2, v10

    .line 159
    .line 160
    if-gtz v2, :cond_1

    .line 161
    .line 162
    move-object/from16 v13, v24

    .line 163
    .line 164
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-object/from16 v10, v23

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_1
    move-object/from16 v11, v23

    .line 171
    .line 172
    move-object/from16 v2, v25

    .line 173
    .line 174
    move/from16 v3, v26

    .line 175
    .line 176
    const/4 v10, 0x5

    .line 177
    const/4 v12, 0x0

    .line 178
    goto :goto_2

    .line 179
    :cond_2
    move-object/from16 v25, v2

    .line 180
    .line 181
    move/from16 v26, v3

    .line 182
    .line 183
    move-object/from16 v23, v11

    .line 184
    .line 185
    new-instance v2, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-object/from16 v10, v23

    .line 194
    .line 195
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :goto_3
    add-int/lit8 v3, v26, 0x1

    .line 199
    .line 200
    move-object v11, v10

    .line 201
    move-object/from16 v2, v25

    .line 202
    .line 203
    const/4 v10, 0x5

    .line 204
    const/4 v12, 0x0

    .line 205
    goto :goto_1

    .line 206
    :cond_3
    move-object v10, v11

    .line 207
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    const/4 v2, 0x0

    .line 212
    :goto_4
    if-ge v2, v11, :cond_7

    .line 213
    .line 214
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    add-int/lit8 v12, v2, 0x1

    .line 219
    .line 220
    check-cast v3, Ljava/util/List;

    .line 221
    .line 222
    const/4 v13, 0x0

    .line 223
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Li7/x;

    .line 228
    .line 229
    iget-wide v14, v0, Lcom/woha/atir/RadarView;->j:D

    .line 230
    .line 231
    iget-wide v4, v0, Lcom/woha/atir/RadarView;->k:D

    .line 232
    .line 233
    move-wide/from16 v16, v14

    .line 234
    .line 235
    iget-wide v13, v2, Li7/x;->b:D

    .line 236
    .line 237
    iget v6, v2, Li7/x;->g:I

    .line 238
    .line 239
    move-object/from16 v22, v3

    .line 240
    .line 241
    move-wide/from16 v18, v4

    .line 242
    .line 243
    iget-wide v3, v2, Li7/x;->c:D

    .line 244
    .line 245
    move-wide/from16 v20, v18

    .line 246
    .line 247
    move-wide/from16 v18, v13

    .line 248
    .line 249
    move-wide/from16 v14, v16

    .line 250
    .line 251
    move-wide/from16 v16, v20

    .line 252
    .line 253
    move-wide/from16 v20, v3

    .line 254
    .line 255
    invoke-static/range {v14 .. v21}, La/a;->b(DDDD)D

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    iget-wide v13, v0, Lcom/woha/atir/RadarView;->j:D

    .line 260
    .line 261
    move-wide v15, v3

    .line 262
    iget-wide v3, v0, Lcom/woha/atir/RadarView;->k:D

    .line 263
    .line 264
    move-wide/from16 v17, v3

    .line 265
    .line 266
    iget-wide v3, v2, Li7/x;->b:D

    .line 267
    .line 268
    move-wide/from16 v19, v3

    .line 269
    .line 270
    iget-wide v3, v2, Li7/x;->c:D

    .line 271
    .line 272
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 273
    .line 274
    .line 275
    move-result-wide v13

    .line 276
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    .line 277
    .line 278
    .line 279
    move-result-wide v19

    .line 280
    sub-double v3, v3, v17

    .line 281
    .line 282
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    .line 283
    .line 284
    .line 285
    move-result-wide v3

    .line 286
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 287
    .line 288
    .line 289
    move-result-wide v17

    .line 290
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    .line 291
    .line 292
    .line 293
    move-result-wide v24

    .line 294
    move-wide/from16 v26, v3

    .line 295
    .line 296
    mul-double v3, v24, v17

    .line 297
    .line 298
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 299
    .line 300
    .line 301
    move-result-wide v17

    .line 302
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    .line 303
    .line 304
    .line 305
    move-result-wide v24

    .line 306
    mul-double v24, v24, v17

    .line 307
    .line 308
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 309
    .line 310
    .line 311
    move-result-wide v13

    .line 312
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    .line 313
    .line 314
    .line 315
    move-result-wide v17

    .line 316
    mul-double v17, v17, v13

    .line 317
    .line 318
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 319
    .line 320
    .line 321
    move-result-wide v13

    .line 322
    mul-double v13, v13, v17

    .line 323
    .line 324
    sub-double v13, v24, v13

    .line 325
    .line 326
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 327
    .line 328
    .line 329
    move-result-wide v3

    .line 330
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 331
    .line 332
    .line 333
    move-result-wide v3

    .line 334
    const-wide v13, 0x4076800000000000L    # 360.0

    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    add-double/2addr v3, v13

    .line 340
    rem-double/2addr v3, v13

    .line 341
    iget v5, v0, Lcom/woha/atir/RadarView;->l:F

    .line 342
    .line 343
    float-to-double v13, v5

    .line 344
    sub-double/2addr v3, v13

    .line 345
    int-to-double v13, v7

    .line 346
    move-wide/from16 v17, v3

    .line 347
    .line 348
    float-to-double v3, v9

    .line 349
    mul-double/2addr v3, v15

    .line 350
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    .line 351
    .line 352
    .line 353
    move-result-wide v15

    .line 354
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 355
    .line 356
    .line 357
    move-result-wide v15

    .line 358
    mul-double/2addr v15, v3

    .line 359
    add-double/2addr v13, v15

    .line 360
    double-to-float v5, v13

    .line 361
    int-to-double v13, v8

    .line 362
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toRadians(D)D

    .line 363
    .line 364
    .line 365
    move-result-wide v15

    .line 366
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 367
    .line 368
    .line 369
    move-result-wide v15

    .line 370
    mul-double/2addr v15, v3

    .line 371
    sub-double/2addr v13, v15

    .line 372
    double-to-float v3, v13

    .line 373
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 374
    .line 375
    iget-object v13, v0, Lcom/woha/atir/RadarView;->c:Landroid/graphics/Paint;

    .line 376
    .line 377
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    .line 379
    .line 380
    const/high16 v4, 0x40e00000    # 7.0f

    .line 381
    .line 382
    invoke-virtual {v1, v5, v3, v4, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 383
    .line 384
    .line 385
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 386
    .line 387
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 388
    .line 389
    .line 390
    const/high16 v4, 0x40400000    # 3.0f

    .line 391
    .line 392
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 393
    .line 394
    .line 395
    const/high16 v4, 0x41200000    # 10.0f

    .line 396
    .line 397
    invoke-virtual {v1, v5, v3, v4, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 398
    .line 399
    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const/4 v13, 0x7

    .line 406
    new-array v13, v13, [B

    .line 407
    .line 408
    fill-array-data v13, :array_0

    .line 409
    .line 410
    .line 411
    const/16 v14, 0x8

    .line 412
    .line 413
    new-array v15, v14, [B

    .line 414
    .line 415
    fill-array-data v15, :array_1

    .line 416
    .line 417
    .line 418
    invoke-static {v13, v15}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v13

    .line 422
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget v13, v2, Li7/x;->e:I

    .line 426
    .line 427
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const/4 v13, 0x5

    .line 431
    new-array v15, v13, [B

    .line 432
    .line 433
    fill-array-data v15, :array_2

    .line 434
    .line 435
    .line 436
    new-array v14, v14, [B

    .line 437
    .line 438
    fill-array-data v14, :array_3

    .line 439
    .line 440
    .line 441
    invoke-static {v15, v14, v4}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    const/high16 v14, 0x41f00000    # 30.0f

    .line 446
    .line 447
    add-float/2addr v14, v5

    .line 448
    iget-object v15, v0, Lcom/woha/atir/RadarView;->d:Landroid/graphics/Paint;

    .line 449
    .line 450
    invoke-virtual {v1, v4, v14, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 451
    .line 452
    .line 453
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v14

    .line 461
    if-eqz v14, :cond_5

    .line 462
    .line 463
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v14

    .line 467
    check-cast v14, Li7/x;

    .line 468
    .line 469
    iget v15, v14, Li7/x;->h:I

    .line 470
    .line 471
    int-to-float v15, v15

    .line 472
    mul-float/2addr v15, v9

    .line 473
    iget v13, v14, Li7/x;->i:I

    .line 474
    .line 475
    iget v14, v14, Li7/x;->g:I

    .line 476
    .line 477
    int-to-float v14, v14

    .line 478
    move-object/from16 v16, v4

    .line 479
    .line 480
    iget v4, v0, Lcom/woha/atir/RadarView;->l:F

    .line 481
    .line 482
    sub-float/2addr v14, v4

    .line 483
    const/high16 v4, 0x43b40000    # 360.0f

    .line 484
    .line 485
    add-float/2addr v14, v4

    .line 486
    rem-float/2addr v14, v4

    .line 487
    new-instance v4, Landroid/graphics/Path;

    .line 488
    .line 489
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 493
    .line 494
    .line 495
    int-to-float v13, v13

    .line 496
    const/high16 v17, 0x40000000    # 2.0f

    .line 497
    .line 498
    div-float v13, v13, v17

    .line 499
    .line 500
    sub-float v17, v14, v13

    .line 501
    .line 502
    add-float/2addr v14, v13

    .line 503
    move/from16 v13, v17

    .line 504
    .line 505
    :goto_6
    cmpg-float v17, v13, v14

    .line 506
    .line 507
    if-gtz v17, :cond_4

    .line 508
    .line 509
    move/from16 v17, v7

    .line 510
    .line 511
    move/from16 v18, v8

    .line 512
    .line 513
    float-to-double v7, v5

    .line 514
    move-wide/from16 v19, v7

    .line 515
    .line 516
    float-to-double v7, v15

    .line 517
    move-wide/from16 v21, v7

    .line 518
    .line 519
    float-to-double v7, v13

    .line 520
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    .line 521
    .line 522
    .line 523
    move-result-wide v24

    .line 524
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    .line 525
    .line 526
    .line 527
    move-result-wide v24

    .line 528
    mul-double v24, v24, v21

    .line 529
    .line 530
    move-wide/from16 v26, v7

    .line 531
    .line 532
    add-double v7, v24, v19

    .line 533
    .line 534
    double-to-float v7, v7

    .line 535
    move/from16 v19, v9

    .line 536
    .line 537
    float-to-double v8, v3

    .line 538
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->toRadians(D)D

    .line 539
    .line 540
    .line 541
    move-result-wide v24

    .line 542
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    .line 543
    .line 544
    .line 545
    move-result-wide v24

    .line 546
    mul-double v24, v24, v21

    .line 547
    .line 548
    sub-double v8, v8, v24

    .line 549
    .line 550
    double-to-float v8, v8

    .line 551
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 552
    .line 553
    .line 554
    const/high16 v7, 0x3f800000    # 1.0f

    .line 555
    .line 556
    add-float/2addr v13, v7

    .line 557
    move/from16 v7, v17

    .line 558
    .line 559
    move/from16 v8, v18

    .line 560
    .line 561
    move/from16 v9, v19

    .line 562
    .line 563
    goto :goto_6

    .line 564
    :cond_4
    move/from16 v17, v7

    .line 565
    .line 566
    move/from16 v18, v8

    .line 567
    .line 568
    move/from16 v19, v9

    .line 569
    .line 570
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 571
    .line 572
    .line 573
    iget-object v7, v0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 574
    .line 575
    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 576
    .line 577
    .line 578
    move-object/from16 v4, v16

    .line 579
    .line 580
    move/from16 v7, v17

    .line 581
    .line 582
    const/4 v13, 0x5

    .line 583
    goto :goto_5

    .line 584
    :cond_5
    move/from16 v17, v7

    .line 585
    .line 586
    move/from16 v18, v8

    .line 587
    .line 588
    move/from16 v19, v9

    .line 589
    .line 590
    iget v2, v2, Li7/x;->f:I

    .line 591
    .line 592
    if-eqz v2, :cond_6

    .line 593
    .line 594
    float-to-double v7, v5

    .line 595
    int-to-double v13, v6

    .line 596
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 597
    .line 598
    .line 599
    move-result-wide v15

    .line 600
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 601
    .line 602
    .line 603
    move-result-wide v15

    .line 604
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    .line 605
    .line 606
    mul-double v15, v15, v20

    .line 607
    .line 608
    add-double v6, v15, v7

    .line 609
    .line 610
    double-to-float v4, v6

    .line 611
    float-to-double v6, v3

    .line 612
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    .line 613
    .line 614
    .line 615
    move-result-wide v8

    .line 616
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 617
    .line 618
    .line 619
    move-result-wide v8

    .line 620
    mul-double v8, v8, v20

    .line 621
    .line 622
    sub-double/2addr v6, v8

    .line 623
    double-to-float v2, v6

    .line 624
    iget-object v6, v0, Lcom/woha/atir/RadarView;->f:Landroid/graphics/Paint;

    .line 625
    .line 626
    move/from16 v28, v5

    .line 627
    .line 628
    move v5, v2

    .line 629
    move/from16 v2, v28

    .line 630
    .line 631
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 632
    .line 633
    .line 634
    :cond_6
    move-object/from16 v1, p1

    .line 635
    .line 636
    move v2, v12

    .line 637
    move/from16 v7, v17

    .line 638
    .line 639
    move/from16 v8, v18

    .line 640
    .line 641
    move/from16 v9, v19

    .line 642
    .line 643
    goto/16 :goto_4

    .line 644
    .line 645
    :cond_7
    return-void

    .line 646
    nop

    .line 647
    :array_0
    .array-data 1
        -0x7et
        -0x32t
        -0x5at
        0x4t
        -0xet
        -0x77t
        0x12t
    .end array-data

    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :array_1
    .array-data 1
        -0x2ft
        -0x42t
        -0x3dt
        0x61t
        -0x6at
        -0x4dt
        0x32t
        -0x5et
    .end array-data

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    :array_2
    .array-data 1
        -0x7at
        0x65t
        0x5t
        0x35t
        0x67t
    .end array-data

    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    nop

    .line 671
    :array_3
    .array-data 1
        -0x5at
        0xet
        0x68t
        0x1at
        0xft
        -0x20t
        -0x7t
        -0x74t
    .end array-data
.end method

.method public setCameras(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/woha/atir/RadarView;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCarDirection(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/woha/atir/RadarView;->l:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRadarRadius(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/woha/atir/RadarView;->m:D

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
