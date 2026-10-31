.class public final Ly1/c;
.super Ly1/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic g:I

.field public h:F

.field public i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly1/c;->g:I

    .line 67
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    iput p2, p0, Ly1/c;->h:F

    .line 68
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ly1/c;->i:Landroid/graphics/Path;

    const/4 p1, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    .line 69
    iget p2, p0, Ly1/b;->b:F

    mul-float/2addr p1, p2

    .line 70
    invoke-virtual {p0, p1}, Ly1/b;->h(F)V

    return-void

    .line 71
    :cond_0
    const-string p1, "Length must be between [0,1]."

    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/c;->g:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 15
    .line 16
    const/high16 p1, 0x41400000    # 12.0f

    .line 17
    .line 18
    iget p2, p0, Ly1/b;->b:F

    .line 19
    .line 20
    mul-float/2addr p1, p2

    .line 21
    invoke-virtual {p0, p1}, Ly1/b;->h(F)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Path;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 38
    .line 39
    const/high16 p1, 0x41400000    # 12.0f

    .line 40
    .line 41
    iget p2, p0, Ly1/b;->b:F

    .line 42
    .line 43
    mul-float/2addr p1, p2

    .line 44
    invoke-virtual {p0, p1}, Ly1/b;->h(F)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 57
    .line 58
    const/high16 p1, 0x41400000    # 12.0f

    .line 59
    .line 60
    iget p2, p0, Ly1/b;->b:F

    .line 61
    .line 62
    mul-float/2addr p1, p2

    .line 63
    invoke-virtual {p0, p1}, Ly1/b;->h(F)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Ly1/c;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 7
    .line 8
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 15
    .line 16
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 23
    .line 24
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 31
    .line 32
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 39
    .line 40
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()F
    .locals 2

    .line 1
    iget v0, p0, Ly1/c;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ly1/c;->h:F

    .line 7
    .line 8
    iget v1, p0, Ly1/b;->d:F

    .line 9
    .line 10
    add-float/2addr v0, v1

    .line 11
    return v0

    .line 12
    :pswitch_0
    iget v0, p0, Ly1/c;->h:F

    .line 13
    .line 14
    return v0

    .line 15
    :pswitch_1
    iget v0, p0, Ly1/c;->h:F

    .line 16
    .line 17
    return v0

    .line 18
    :pswitch_2
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Ly1/c;->h:F

    .line 23
    .line 24
    mul-float/2addr v0, v1

    .line 25
    return v0

    .line 26
    :pswitch_3
    iget v0, p0, Ly1/c;->h:F

    .line 27
    .line 28
    return v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()F
    .locals 2

    .line 1
    iget v0, p0, Ly1/c;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ly1/b;->e()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    iget v0, p0, Ly1/c;->h:F

    .line 12
    .line 13
    return v0

    .line 14
    :pswitch_1
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/high16 v1, 0x40a00000    # 5.0f

    .line 19
    .line 20
    div-float/2addr v0, v1

    .line 21
    iget-object v1, p0, Ly1/b;->c:Lw1/i;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lw1/e;->getPadding()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    add-float/2addr v0, v1

    .line 32
    return v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 12

    .line 1
    iget v0, p0, Ly1/c;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 12
    .line 13
    iget-object v0, p0, Ly1/b;->c:Lw1/i;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lw1/e;->getPadding()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    iget-object v1, p0, Ly1/b;->c:Lw1/i;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lw1/i;->getSpeedometerWidth()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-float/2addr v1, v0

    .line 33
    const/high16 v0, 0x40a00000    # 5.0f

    .line 34
    .line 35
    iget v2, p0, Ly1/b;->b:F

    .line 36
    .line 37
    mul-float/2addr v0, v2

    .line 38
    add-float/2addr v0, v1

    .line 39
    iput v0, p0, Ly1/c;->h:F

    .line 40
    .line 41
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 42
    .line 43
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget v2, p0, Ly1/c;->h:F

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 53
    .line 54
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget v2, p0, Ly1/b;->d:F

    .line 59
    .line 60
    sub-float/2addr v1, v2

    .line 61
    iget v3, p0, Ly1/c;->h:F

    .line 62
    .line 63
    add-float/2addr v3, v2

    .line 64
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 68
    .line 69
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget v2, p0, Ly1/b;->d:F

    .line 74
    .line 75
    add-float/2addr v1, v2

    .line 76
    iget v3, p0, Ly1/c;->h:F

    .line 77
    .line 78
    add-float/2addr v3, v2

    .line 79
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    .line 87
    .line 88
    iget v0, p0, Ly1/b;->e:I

    .line 89
    .line 90
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget v1, p0, Ly1/b;->e:I

    .line 95
    .line 96
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget v2, p0, Ly1/b;->e:I

    .line 101
    .line 102
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    const/4 v3, 0x0

    .line 107
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 112
    .line 113
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    iget v6, p0, Ly1/c;->h:F

    .line 118
    .line 119
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    iget v0, p0, Ly1/c;->h:F

    .line 124
    .line 125
    iget v1, p0, Ly1/b;->d:F

    .line 126
    .line 127
    add-float v8, v0, v1

    .line 128
    .line 129
    iget v9, p0, Ly1/b;->e:I

    .line 130
    .line 131
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 132
    .line 133
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    const/high16 v3, 0x40a00000    # 5.0f

    .line 156
    .line 157
    div-float/2addr v2, v3

    .line 158
    iget-object v4, p0, Ly1/b;->c:Lw1/i;

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Lw1/e;->getPadding()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    int-to-float v4, v4

    .line 168
    add-float/2addr v2, v4

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    const/high16 v2, 0x40400000    # 3.0f

    .line 177
    .line 178
    mul-float/2addr v1, v2

    .line 179
    div-float/2addr v1, v3

    .line 180
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    int-to-float v2, v2

    .line 190
    add-float/2addr v1, v2

    .line 191
    iput v1, p0, Ly1/c;->h:F

    .line 192
    .line 193
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    iget v2, p0, Ly1/b;->d:F

    .line 198
    .line 199
    sub-float/2addr v1, v2

    .line 200
    iget v2, p0, Ly1/c;->h:F

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    iget v2, p0, Ly1/b;->d:F

    .line 210
    .line 211
    add-float/2addr v1, v2

    .line 212
    iget v2, p0, Ly1/c;->h:F

    .line 213
    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Landroid/graphics/RectF;

    .line 218
    .line 219
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    iget v3, p0, Ly1/b;->d:F

    .line 224
    .line 225
    sub-float/2addr v2, v3

    .line 226
    iget v4, p0, Ly1/c;->h:F

    .line 227
    .line 228
    sub-float/2addr v4, v3

    .line 229
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    iget v5, p0, Ly1/b;->d:F

    .line 234
    .line 235
    add-float/2addr v3, v5

    .line 236
    iget v6, p0, Ly1/c;->h:F

    .line 237
    .line 238
    add-float/2addr v6, v5

    .line 239
    invoke-direct {v1, v2, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 240
    .line 241
    .line 242
    const/4 v2, 0x0

    .line 243
    const/high16 v3, 0x43340000    # 180.0f

    .line 244
    .line 245
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 249
    .line 250
    iget v1, p0, Ly1/b;->e:I

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_1
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    int-to-float v2, v2

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    const/high16 v2, 0x40000000    # 2.0f

    .line 283
    .line 284
    mul-float/2addr v1, v2

    .line 285
    const/high16 v2, 0x40400000    # 3.0f

    .line 286
    .line 287
    div-float/2addr v1, v2

    .line 288
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    int-to-float v2, v2

    .line 298
    add-float/2addr v1, v2

    .line 299
    iput v1, p0, Ly1/c;->h:F

    .line 300
    .line 301
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    iget v2, p0, Ly1/b;->d:F

    .line 306
    .line 307
    sub-float/2addr v1, v2

    .line 308
    iget v2, p0, Ly1/c;->h:F

    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    iget v2, p0, Ly1/b;->d:F

    .line 318
    .line 319
    add-float/2addr v1, v2

    .line 320
    iget v2, p0, Ly1/c;->h:F

    .line 321
    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Landroid/graphics/RectF;

    .line 326
    .line 327
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    iget v3, p0, Ly1/b;->d:F

    .line 332
    .line 333
    sub-float/2addr v2, v3

    .line 334
    iget v4, p0, Ly1/c;->h:F

    .line 335
    .line 336
    sub-float/2addr v4, v3

    .line 337
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    iget v5, p0, Ly1/b;->d:F

    .line 342
    .line 343
    add-float/2addr v3, v5

    .line 344
    iget v6, p0, Ly1/c;->h:F

    .line 345
    .line 346
    add-float/2addr v6, v5

    .line 347
    invoke-direct {v1, v2, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 348
    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    const/high16 v3, 0x43340000    # 180.0f

    .line 352
    .line 353
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 357
    .line 358
    iget v1, p0, Ly1/b;->e:I

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :pswitch_2
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    int-to-float v2, v2

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    iget v3, p0, Ly1/c;->h:F

    .line 395
    .line 396
    mul-float/2addr v2, v3

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    .line 399
    .line 400
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 401
    .line 402
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 403
    .line 404
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 405
    .line 406
    .line 407
    iget v0, p0, Ly1/b;->d:F

    .line 408
    .line 409
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 410
    .line 411
    .line 412
    iget v0, p0, Ly1/b;->e:I

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_3
    iget-object v0, p0, Ly1/c;->i:Landroid/graphics/Path;

    .line 419
    .line 420
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 428
    .line 429
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    int-to-float v2, v2

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    const/high16 v2, 0x3f000000    # 0.5f

    .line 445
    .line 446
    mul-float/2addr v1, v2

    .line 447
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 448
    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    int-to-float v2, v2

    .line 457
    add-float/2addr v1, v2

    .line 458
    iput v1, p0, Ly1/c;->h:F

    .line 459
    .line 460
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    iget v2, p0, Ly1/b;->d:F

    .line 465
    .line 466
    sub-float/2addr v1, v2

    .line 467
    iget v2, p0, Ly1/c;->h:F

    .line 468
    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    iget v2, p0, Ly1/c;->h:F

    .line 477
    .line 478
    iget v3, p0, Ly1/b;->d:F

    .line 479
    .line 480
    add-float/2addr v2, v3

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    iget v2, p0, Ly1/b;->d:F

    .line 489
    .line 490
    add-float/2addr v1, v2

    .line 491
    iget v2, p0, Ly1/c;->h:F

    .line 492
    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 494
    .line 495
    .line 496
    iget-object v0, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 497
    .line 498
    iget v1, p0, Ly1/b;->e:I

    .line 499
    .line 500
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
