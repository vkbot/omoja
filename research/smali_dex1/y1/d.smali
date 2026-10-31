.class public final Ly1/d;
.super Ly1/b;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final g:Landroid/graphics/Path;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/Paint;

.field public j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ly1/b;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Path;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ly1/d;->g:Landroid/graphics/Path;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ly1/d;->h:Landroid/graphics/Path;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Paint;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Ly1/d;->i:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/high16 v0, 0x41400000    # 12.0f

    .line 27
    .line 28
    iget v1, p0, Ly1/b;->b:F

    .line 29
    .line 30
    mul-float/2addr v0, v1

    .line 31
    invoke-virtual {p0, v0}, Ly1/b;->h(F)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ly1/d;->g:Landroid/graphics/Path;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly1/d;->h:Landroid/graphics/Path;

    .line 9
    .line 10
    iget-object v1, p0, Ly1/d;->i:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()F
    .registers 2

    .line 1
    iget v0, p0, Ly1/d;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public final i()V
    .registers 10

    .line 1
    iget-object v0, p0, Ly1/d;->g:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ly1/d;->h:Landroid/graphics/Path;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Ly1/b;->c:Lw1/i;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lw1/e;->getPadding()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-float v3, v3

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Ly1/b;->d:F

    .line 29
    .line 30
    float-to-double v2, v2

    .line 31
    const-wide v4, 0x4070400000000000L    # 260.0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    mul-double/2addr v6, v2

    .line 45
    double-to-float v2, v6

    .line 46
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/high16 v6, 0x3f000000    # 0.5f

    .line 51
    .line 52
    mul-float/2addr v3, v6

    .line 53
    add-float/2addr v3, v2

    .line 54
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    int-to-float v2, v2

    .line 64
    add-float/2addr v3, v2

    .line 65
    iput v3, p0, Ly1/d;->j:F

    .line 66
    .line 67
    iget v2, p0, Ly1/b;->d:F

    .line 68
    .line 69
    float-to-double v2, v2

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    mul-double/2addr v4, v2

    .line 79
    double-to-float v2, v4

    .line 80
    invoke-virtual {p0}, Ly1/b;->f()F

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    mul-float/2addr v3, v6

    .line 85
    add-float/2addr v3, v2

    .line 86
    iget-object v2, p0, Ly1/b;->c:Lw1/i;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lw1/e;->getPadding()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    add-float/2addr v3, v2

    .line 97
    iget v2, p0, Ly1/d;->j:F

    .line 98
    .line 99
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Landroid/graphics/RectF;

    .line 103
    .line 104
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iget v4, p0, Ly1/b;->d:F

    .line 109
    .line 110
    sub-float/2addr v3, v4

    .line 111
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iget v5, p0, Ly1/b;->d:F

    .line 116
    .line 117
    sub-float/2addr v4, v5

    .line 118
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    iget v7, p0, Ly1/b;->d:F

    .line 123
    .line 124
    add-float/2addr v5, v7

    .line 125
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    iget v8, p0, Ly1/b;->d:F

    .line 130
    .line 131
    add-float/2addr v7, v8

    .line 132
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .line 134
    .line 135
    const/high16 v3, 0x43820000    # 260.0f

    .line 136
    .line 137
    const/high16 v4, 0x41a00000    # 20.0f

    .line 138
    .line 139
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 140
    .line 141
    .line 142
    iget v0, p0, Ly1/b;->d:F

    .line 143
    .line 144
    const/high16 v2, 0x3e800000    # 0.25f

    .line 145
    .line 146
    mul-float/2addr v0, v2

    .line 147
    invoke-virtual {p0}, Ly1/b;->c()F

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {p0}, Ly1/b;->d()F

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    iget v4, p0, Ly1/b;->d:F

    .line 156
    .line 157
    mul-float/2addr v6, v0

    .line 158
    sub-float/2addr v4, v6

    .line 159
    const v5, 0x3f19999a    # 0.6f

    .line 160
    .line 161
    .line 162
    add-float/2addr v4, v5

    .line 163
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 164
    .line 165
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Ly1/b;->a:Landroid/graphics/Paint;

    .line 169
    .line 170
    iget v2, p0, Ly1/b;->e:I

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    .line 174
    .line 175
    iget v1, p0, Ly1/b;->e:I

    .line 176
    .line 177
    iget-object v2, p0, Ly1/d;->i:Landroid/graphics/Paint;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
