.class public final Lo0/d;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final p:I

.field public static final q:I


# instance fields
.field public final b:Lo0/f;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/RectF;

.field public final g:Landroid/graphics/RectF;

.field public final h:F

.field public i:Landroid/animation/ValueAnimator;

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const/16 v1, 0xed

    .line 4
    .line 5
    const/16 v2, 0x2f

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lo0/d;->p:I

    .line 12
    .line 13
    const/16 v0, 0x29

    .line 14
    .line 15
    const/16 v1, 0x3b

    .line 16
    .line 17
    const/16 v2, 0x1e

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lo0/d;->q:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo0/f;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lo0/d;->c:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v2, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lo0/d;->d:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v3, Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lo0/d;->e:Landroid/graphics/Paint;

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lo0/d;->f:Landroid/graphics/RectF;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lo0/d;->g:Landroid/graphics/RectF;

    .line 39
    .line 40
    iput-object p2, p0, Lo0/d;->b:Lo0/f;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    iput p1, p0, Lo0/d;->h:F

    .line 53
    .line 54
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 65
    .line 66
    mul-float/2addr v0, p1

    .line 67
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    .line 72
    .line 73
    const p2, 0x40133333    # 2.3f

    .line 74
    .line 75
    .line 76
    mul-float/2addr p2, p1

    .line 77
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 81
    .line 82
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static a(FFF)F
    .registers 4

    .line 1
    cmpg-float v0, p2, p1

    .line 2
    .line 3
    if-gez v0, :cond_5

    .line 4
    .line 5
    return p1

    .line 6
    :cond_5
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static b(II)I
    .registers 4

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method


# virtual methods
.method public final c()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo0/d;->o:Z

    .line 3
    .line 4
    iget-object v1, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz v1, :cond_a

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_a
    iget v1, p0, Lo0/d;->n:F

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v3, v2, [F

    .line 15
    .line 16
    aput v1, v3, v0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    aput v0, v3, v1

    .line 21
    .line 22
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    const-wide/16 v3, 0xb4

    .line 29
    .line 30
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    new-instance v1, Le4/h;

    .line 36
    .line 37
    invoke-direct {v1, v2, p0}, Le4/h;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final d(FFFFF)V
    .registers 9

    .line 1
    iget-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {p1, v2, v0}, Lo0/d;->a(FFF)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lo0/d;->j:F

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-float p1, p1

    .line 37
    invoke-static {p2, v2, p1}, Lo0/d;->a(FFF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lo0/d;->k:F

    .line 42
    .line 43
    iput p3, p0, Lo0/d;->l:F

    .line 44
    .line 45
    iput p4, p0, Lo0/d;->m:F

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lo0/d;->o:Z

    .line 49
    .line 50
    const p1, 0x3e3851ec    # 0.18f

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lo0/d;->n:F

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo0/d;->i:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_a
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 34

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
    iget v2, v0, Lo0/d;->n:F

    .line 9
    .line 10
    const v3, 0x3c23d70a    # 0.01f

    .line 11
    .line 12
    .line 13
    cmpg-float v2, v2, v3

    .line 14
    .line 15
    if-gtz v2, :cond_11

    .line 16
    .line 17
    return-void

    .line 18
    :cond_11
    sget-object v2, Lo0/f;->f:Lo0/f;

    .line 19
    .line 20
    iget-object v4, v0, Lo0/d;->b:Lo0/f;

    .line 21
    .line 22
    if-eq v4, v2, :cond_1e

    .line 23
    .line 24
    sget-object v2, Lo0/f;->g:Lo0/f;

    .line 25
    .line 26
    if-ne v4, v2, :cond_1c

    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const/4 v2, 0x0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    .line 32
    :goto_1f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    int-to-float v5, v5

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    int-to-float v6, v6

    .line 42
    const/4 v7, 0x0

    .line 43
    iget v8, v0, Lo0/d;->h:F

    .line 44
    .line 45
    if-eqz v2, :cond_32

    .line 46
    .line 47
    const/high16 v9, 0x40400000    # 3.0f

    .line 48
    .line 49
    mul-float/2addr v9, v8

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v9, v7

    .line 52
    :goto_33
    const/high16 v10, 0x41000000    # 8.0f

    .line 53
    .line 54
    mul-float/2addr v10, v8

    .line 55
    if-eqz v2, :cond_3a

    .line 56
    .line 57
    move v11, v6

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v11, v5

    .line 60
    :goto_3b
    const/high16 v12, 0x41900000    # 18.0f

    .line 61
    .line 62
    mul-float/2addr v12, v8

    .line 63
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    iget v11, v0, Lo0/d;->j:F

    .line 72
    .line 73
    invoke-static {v11, v7, v5}, Lo0/d;->a(FFF)F

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    iget v12, v0, Lo0/d;->k:F

    .line 78
    .line 79
    invoke-static {v12, v7, v6}, Lo0/d;->a(FFF)F

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    iget-boolean v13, v0, Lo0/d;->o:Z

    .line 84
    .line 85
    if-eqz v13, :cond_59

    .line 86
    .line 87
    const/high16 v13, 0x3f800000    # 1.0f

    .line 88
    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    iget v13, v0, Lo0/d;->n:F

    .line 91
    .line 92
    :goto_5b
    const/high16 v16, 0x43200000    # 160.0f

    .line 93
    .line 94
    const/high16 v17, 0x42f00000    # 120.0f

    .line 95
    .line 96
    iget-object v3, v0, Lo0/d;->d:Landroid/graphics/Paint;

    .line 97
    .line 98
    const/high16 v18, 0x42b40000    # 90.0f

    .line 99
    .line 100
    const/high16 v19, 0x428c0000    # 70.0f

    .line 101
    .line 102
    iget-object v14, v0, Lo0/d;->g:Landroid/graphics/RectF;

    .line 103
    .line 104
    const v20, 0x3e23d70a    # 0.16f

    .line 105
    .line 106
    .line 107
    const/high16 v21, 0x42900000    # 72.0f

    .line 108
    .line 109
    const v22, 0x3e8f5c29    # 0.28f

    .line 110
    .line 111
    .line 112
    sget v15, Lo0/d;->p:I

    .line 113
    .line 114
    iget-object v7, v0, Lo0/d;->c:Landroid/graphics/Paint;

    .line 115
    .line 116
    move/from16 v23, v2

    .line 117
    .line 118
    iget-object v2, v0, Lo0/d;->f:Landroid/graphics/RectF;

    .line 119
    .line 120
    const/high16 v24, 0x40000000    # 2.0f

    .line 121
    .line 122
    move/from16 v25, v5

    .line 123
    .line 124
    const/high16 v26, 0x42080000    # 34.0f

    .line 125
    .line 126
    if-eqz v23, :cond_10c

    .line 127
    .line 128
    sub-float/2addr v6, v9

    .line 129
    div-float v27, v10, v24

    .line 130
    .line 131
    sub-float v6, v6, v27

    .line 132
    .line 133
    sub-float v5, v6, v27

    .line 134
    .line 135
    move/from16 v28, v8

    .line 136
    .line 137
    sub-float v8, v25, v9

    .line 138
    .line 139
    move/from16 v29, v13

    .line 140
    .line 141
    add-float v13, v6, v27

    .line 142
    .line 143
    invoke-virtual {v2, v9, v5, v8, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    .line 145
    .line 146
    move/from16 v30, v8

    .line 147
    .line 148
    mul-float v8, v29, v26

    .line 149
    .line 150
    float-to-int v8, v8

    .line 151
    invoke-static {v15, v8}, Lo0/d;->b(II)I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2, v10, v10, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    iget v2, v0, Lo0/d;->l:F

    .line 162
    .line 163
    mul-float/2addr v2, v2

    .line 164
    iget v8, v0, Lo0/d;->m:F

    .line 165
    .line 166
    mul-float/2addr v8, v8

    .line 167
    add-float/2addr v8, v2

    .line 168
    move/from16 v31, v9

    .line 169
    .line 170
    float-to-double v8, v8

    .line 171
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 172
    .line 173
    .line 174
    move-result-wide v8

    .line 175
    double-to-float v2, v8

    .line 176
    mul-float v8, v21, v28

    .line 177
    .line 178
    mul-float v2, v2, v20

    .line 179
    .line 180
    add-float/2addr v2, v8

    .line 181
    mul-float v9, v31, v24

    .line 182
    .line 183
    sub-float v9, v25, v9

    .line 184
    .line 185
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    invoke-static {v2, v8, v9}, Lo0/d;->a(FFF)F

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    div-float v2, v2, v24

    .line 194
    .line 195
    add-float v9, v31, v2

    .line 196
    .line 197
    sub-float v8, v30, v2

    .line 198
    .line 199
    invoke-static {v11, v9, v8}, Lo0/d;->a(FFF)F

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    sub-float v9, v8, v2

    .line 204
    .line 205
    add-float/2addr v8, v2

    .line 206
    invoke-virtual {v14, v9, v5, v8, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    .line 208
    .line 209
    iget v2, v0, Lo0/d;->n:F

    .line 210
    .line 211
    mul-float v2, v2, v18

    .line 212
    .line 213
    add-float v2, v2, v19

    .line 214
    .line 215
    mul-float v2, v2, v29

    .line 216
    .line 217
    float-to-int v2, v2

    .line 218
    invoke-static {v15, v2}, Lo0/d;->b(II)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v14, v10, v10, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 226
    .line 227
    .line 228
    mul-float v13, v29, v17

    .line 229
    .line 230
    float-to-int v2, v13

    .line 231
    invoke-static {v15, v2}, Lo0/d;->b(II)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v14, v10, v10, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 239
    .line 240
    .line 241
    mul-float v13, v29, v16

    .line 242
    .line 243
    float-to-int v2, v13

    .line 244
    const/4 v3, -0x1

    .line 245
    invoke-static {v3, v2}, Lo0/d;->b(II)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    .line 251
    .line 252
    add-float v9, v31, v27

    .line 253
    .line 254
    sub-float v8, v30, v27

    .line 255
    .line 256
    invoke-static {v11, v9, v8}, Lo0/d;->a(FFF)F

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    mul-float v10, v10, v22

    .line 261
    .line 262
    invoke-virtual {v1, v2, v6, v10, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    .line 264
    .line 265
    move-object v2, v4

    .line 266
    const/4 v4, -0x1

    .line 267
    goto/16 :goto_1b0

    .line 268
    .line 269
    :cond_10c
    move/from16 v28, v8

    .line 270
    .line 271
    move/from16 v31, v9

    .line 272
    .line 273
    move/from16 v29, v13

    .line 274
    .line 275
    sget-object v5, Lo0/f;->b:Lo0/f;

    .line 276
    .line 277
    if-eq v4, v5, :cond_121

    .line 278
    .line 279
    sget-object v5, Lo0/f;->c:Lo0/f;

    .line 280
    .line 281
    if-ne v4, v5, :cond_11b

    .line 282
    .line 283
    goto :goto_121

    .line 284
    :cond_11b
    sub-float v5, v25, v31

    .line 285
    .line 286
    div-float v8, v10, v24

    .line 287
    .line 288
    sub-float/2addr v5, v8

    .line 289
    goto :goto_125

    .line 290
    :cond_121
    :goto_121
    div-float v5, v10, v24

    .line 291
    .line 292
    add-float v5, v5, v31

    .line 293
    .line 294
    :goto_125
    div-float v8, v10, v24

    .line 295
    .line 296
    sub-float v9, v5, v8

    .line 297
    .line 298
    add-float v13, v5, v8

    .line 299
    .line 300
    move/from16 v25, v6

    .line 301
    .line 302
    sub-float v6, v25, v31

    .line 303
    .line 304
    move/from16 v27, v8

    .line 305
    .line 306
    move/from16 v8, v31

    .line 307
    .line 308
    invoke-virtual {v2, v9, v8, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 309
    .line 310
    .line 311
    move/from16 v30, v6

    .line 312
    .line 313
    mul-float v6, v29, v26

    .line 314
    .line 315
    float-to-int v6, v6

    .line 316
    invoke-static {v15, v6}, Lo0/d;->b(II)I

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v2, v10, v10, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 324
    .line 325
    .line 326
    iget v2, v0, Lo0/d;->l:F

    .line 327
    .line 328
    mul-float/2addr v2, v2

    .line 329
    iget v6, v0, Lo0/d;->m:F

    .line 330
    .line 331
    mul-float/2addr v6, v6

    .line 332
    add-float/2addr v6, v2

    .line 333
    move-object v2, v4

    .line 334
    move/from16 v31, v5

    .line 335
    .line 336
    float-to-double v4, v6

    .line 337
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 338
    .line 339
    .line 340
    move-result-wide v4

    .line 341
    double-to-float v4, v4

    .line 342
    mul-float v5, v21, v28

    .line 343
    .line 344
    mul-float v4, v4, v20

    .line 345
    .line 346
    add-float/2addr v4, v5

    .line 347
    mul-float v6, v8, v24

    .line 348
    .line 349
    sub-float v6, v25, v6

    .line 350
    .line 351
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    invoke-static {v4, v5, v6}, Lo0/d;->a(FFF)F

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    div-float v4, v4, v24

    .line 360
    .line 361
    add-float v5, v8, v4

    .line 362
    .line 363
    sub-float v6, v30, v4

    .line 364
    .line 365
    invoke-static {v12, v5, v6}, Lo0/d;->a(FFF)F

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    sub-float v6, v5, v4

    .line 370
    .line 371
    add-float/2addr v5, v4

    .line 372
    invoke-virtual {v14, v9, v6, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 373
    .line 374
    .line 375
    iget v4, v0, Lo0/d;->n:F

    .line 376
    .line 377
    mul-float v4, v4, v18

    .line 378
    .line 379
    add-float v4, v4, v19

    .line 380
    .line 381
    mul-float v4, v4, v29

    .line 382
    .line 383
    float-to-int v4, v4

    .line 384
    invoke-static {v15, v4}, Lo0/d;->b(II)I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v14, v10, v10, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 392
    .line 393
    .line 394
    mul-float v13, v29, v17

    .line 395
    .line 396
    float-to-int v4, v13

    .line 397
    invoke-static {v15, v4}, Lo0/d;->b(II)I

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v14, v10, v10, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 405
    .line 406
    .line 407
    mul-float v13, v29, v16

    .line 408
    .line 409
    float-to-int v3, v13

    .line 410
    const/4 v4, -0x1

    .line 411
    invoke-static {v4, v3}, Lo0/d;->b(II)I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    .line 417
    .line 418
    add-float v9, v8, v27

    .line 419
    .line 420
    sub-float v6, v30, v27

    .line 421
    .line 422
    invoke-static {v12, v9, v6}, Lo0/d;->a(FFF)F

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    mul-float v10, v10, v22

    .line 427
    .line 428
    move/from16 v5, v31

    .line 429
    .line 430
    invoke-virtual {v1, v5, v3, v10, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 431
    .line 432
    .line 433
    :goto_1b0
    iget v3, v0, Lo0/d;->l:F

    .line 434
    .line 435
    mul-float/2addr v3, v3

    .line 436
    iget v5, v0, Lo0/d;->m:F

    .line 437
    .line 438
    mul-float/2addr v5, v5

    .line 439
    add-float/2addr v5, v3

    .line 440
    float-to-double v5, v5

    .line 441
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 442
    .line 443
    .line 444
    move-result-wide v5

    .line 445
    double-to-float v3, v5

    .line 446
    const v5, 0x3e851eb8    # 0.26f

    .line 447
    .line 448
    .line 449
    mul-float/2addr v3, v5

    .line 450
    const/high16 v5, 0x41400000    # 12.0f

    .line 451
    .line 452
    mul-float v5, v5, v28

    .line 453
    .line 454
    mul-float v6, v26, v28

    .line 455
    .line 456
    invoke-static {v3, v5, v6}, Lo0/d;->a(FFF)F

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    iget v5, v0, Lo0/d;->l:F

    .line 461
    .line 462
    iget v6, v0, Lo0/d;->m:F

    .line 463
    .line 464
    mul-float v7, v5, v5

    .line 465
    .line 466
    mul-float v8, v6, v6

    .line 467
    .line 468
    add-float/2addr v8, v7

    .line 469
    float-to-double v7, v8

    .line 470
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 471
    .line 472
    .line 473
    move-result-wide v7

    .line 474
    double-to-float v7, v7

    .line 475
    const/high16 v8, 0x40800000    # 4.0f

    .line 476
    .line 477
    mul-float v8, v8, v28

    .line 478
    .line 479
    cmpg-float v8, v7, v8

    .line 480
    .line 481
    if-gez v8, :cond_1fb

    .line 482
    .line 483
    if-eqz v23, :cond_1e6

    .line 484
    .line 485
    const/4 v2, 0x0

    .line 486
    goto :goto_1f0

    .line 487
    :cond_1e6
    sget-object v5, Lo0/f;->b:Lo0/f;

    .line 488
    .line 489
    if-eq v2, v5, :cond_1ee

    .line 490
    .line 491
    sget-object v5, Lo0/f;->c:Lo0/f;

    .line 492
    .line 493
    if-ne v2, v5, :cond_1ef

    .line 494
    .line 495
    :cond_1ee
    const/4 v4, 0x1

    .line 496
    :cond_1ef
    int-to-float v2, v4

    .line 497
    :goto_1f0
    if-eqz v23, :cond_1f5

    .line 498
    .line 499
    const/high16 v4, -0x40800000    # -1.0f

    .line 500
    .line 501
    goto :goto_1f6

    .line 502
    :cond_1f5
    const/4 v4, 0x0

    .line 503
    :goto_1f6
    move v5, v2

    .line 504
    move v6, v4

    .line 505
    const/high16 v14, 0x3f800000    # 1.0f

    .line 506
    .line 507
    goto :goto_1fc

    .line 508
    :cond_1fb
    move v14, v7

    .line 509
    :goto_1fc
    div-float v7, v5, v14

    .line 510
    .line 511
    div-float v8, v6, v14

    .line 512
    .line 513
    mul-float v2, v7, v3

    .line 514
    .line 515
    const v4, 0x3eb33333    # 0.35f

    .line 516
    .line 517
    .line 518
    mul-float v5, v2, v4

    .line 519
    .line 520
    sub-float v5, v11, v5

    .line 521
    .line 522
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    int-to-float v6, v6

    .line 527
    const/4 v9, 0x0

    .line 528
    invoke-static {v5, v9, v6}, Lo0/d;->a(FFF)F

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    mul-float/2addr v3, v8

    .line 533
    mul-float/2addr v4, v3

    .line 534
    sub-float v4, v12, v4

    .line 535
    .line 536
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    int-to-float v6, v6

    .line 541
    invoke-static {v4, v9, v6}, Lo0/d;->a(FFF)F

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    add-float/2addr v11, v2

    .line 546
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    int-to-float v2, v2

    .line 551
    invoke-static {v11, v9, v2}, Lo0/d;->a(FFF)F

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    add-float/2addr v12, v3

    .line 556
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    int-to-float v3, v3

    .line 561
    invoke-static {v12, v9, v3}, Lo0/d;->a(FFF)F

    .line 562
    .line 563
    .line 564
    move-result v3

    .line 565
    const/high16 v6, 0x432a0000    # 170.0f

    .line 566
    .line 567
    mul-float v13, v29, v6

    .line 568
    .line 569
    float-to-int v6, v13

    .line 570
    sget v9, Lo0/d;->q:I

    .line 571
    .line 572
    invoke-static {v9, v6}, Lo0/d;->b(II)I

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    iget-object v9, v0, Lo0/d;->e:Landroid/graphics/Paint;

    .line 577
    .line 578
    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    .line 580
    .line 581
    move v6, v4

    .line 582
    move v4, v2

    .line 583
    move v2, v5

    .line 584
    move v5, v3

    .line 585
    move v3, v6

    .line 586
    move-object v6, v9

    .line 587
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 588
    .line 589
    .line 590
    move v2, v4

    .line 591
    move v3, v5

    .line 592
    const/high16 v1, 0x40c00000    # 6.0f

    .line 593
    .line 594
    mul-float v1, v1, v28

    .line 595
    .line 596
    mul-float/2addr v7, v1

    .line 597
    sub-float v4, v2, v7

    .line 598
    .line 599
    mul-float/2addr v8, v1

    .line 600
    const v1, 0x3f266666    # 0.65f

    .line 601
    .line 602
    .line 603
    mul-float v5, v8, v1

    .line 604
    .line 605
    sub-float v9, v4, v5

    .line 606
    .line 607
    sub-float v8, v3, v8

    .line 608
    .line 609
    mul-float/2addr v7, v1

    .line 610
    add-float v1, v8, v7

    .line 611
    .line 612
    add-float v10, v4, v5

    .line 613
    .line 614
    sub-float/2addr v8, v7

    .line 615
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    int-to-float v4, v4

    .line 620
    const/4 v7, 0x0

    .line 621
    invoke-static {v9, v7, v4}, Lo0/d;->a(FFF)F

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 626
    .line 627
    .line 628
    move-result v5

    .line 629
    int-to-float v5, v5

    .line 630
    invoke-static {v1, v7, v5}, Lo0/d;->a(FFF)F

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    move-object/from16 v1, p1

    .line 635
    .line 636
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    int-to-float v1, v1

    .line 644
    invoke-static {v10, v7, v1}, Lo0/d;->a(FFF)F

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    int-to-float v1, v1

    .line 653
    invoke-static {v8, v7, v1}, Lo0/d;->a(FFF)F

    .line 654
    .line 655
    .line 656
    move-result v5

    .line 657
    move-object/from16 v1, p1

    .line 658
    .line 659
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 660
    .line 661
    .line 662
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget p3, p0, Lo0/d;->j:F

    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    cmpl-float p3, p3, p4

    .line 8
    .line 9
    if-nez p3, :cond_1a

    .line 10
    .line 11
    iget p3, p0, Lo0/d;->k:F

    .line 12
    .line 13
    cmpl-float p3, p3, p4

    .line 14
    .line 15
    if-nez p3, :cond_1a

    .line 16
    .line 17
    int-to-float p1, p1

    .line 18
    const/high16 p3, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float/2addr p1, p3

    .line 21
    iput p1, p0, Lo0/d;->j:F

    .line 22
    .line 23
    int-to-float p1, p2

    .line 24
    div-float/2addr p1, p3

    .line 25
    iput p1, p0, Lo0/d;->k:F

    .line 26
    .line 27
    :cond_1a
    return-void
.end method
