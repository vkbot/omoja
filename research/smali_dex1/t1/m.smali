.class public final Lt1/m;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/text/TextPaint;

.field public final e:Landroid/graphics/RectF;

.field public f:Ljava/lang/String;

.field public g:I

.field public final h:Lt1/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lt1/m;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lt1/m;->c:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v2, Landroid/text/TextPaint;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lt1/m;->d:Landroid/text/TextPaint;

    .line 25
    .line 26
    new-instance v3, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, Lt1/m;->e:Landroid/graphics/RectF;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v3, v3, [B

    .line 35
    .line 36
    fill-array-data v3, :array_92

    .line 37
    .line 38
    .line 39
    const/16 v4, 0x8

    .line 40
    .line 41
    new-array v4, v4, [B

    .line 42
    .line 43
    fill-array-data v4, :array_98

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, p0, Lt1/m;->f:Ljava/lang/String;

    .line 51
    .line 52
    const/16 v3, 0xb9

    .line 53
    .line 54
    const/16 v4, 0x5d

    .line 55
    .line 56
    const/16 v5, 0x3f

    .line 57
    .line 58
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, p0, Lt1/m;->g:I

    .line 63
    .line 64
    new-instance v3, Lt1/l;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v3, v4, p0}, Lt1/l;-><init>(ILandroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, p0, Lt1/m;->h:Lt1/l;

    .line 71
    .line 72
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    .line 76
    .line 77
    const/16 v3, 0xd2

    .line 78
    .line 79
    const/16 v4, 0x18

    .line 80
    .line 81
    invoke-static {v3, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x5

    .line 99
    invoke-virtual {p0, p1}, Lt1/m;->a(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    int-to-float p1, p1

    .line 104
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    .line 106
    .line 107
    const/4 p1, -0x1

    .line 108
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 112
    .line 113
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v4}, Lt1/m;->a(I)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-float p1, p1

    .line 124
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    .line 126
    .line 127
    const/16 p1, 0x4c

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lt1/m;->a(I)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lt1/m;->a(I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lt1/m;->b()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :array_92
    .array-data 1
        -0x10t
        0x22t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    nop

    .line 153
    :array_98
    .array-data 1
        -0x23t
        0xft
        0x2dt
        0x7ct
        0x17t
        0x1et
        0x36t
        0x78t
    .end array-data
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    mul-float/2addr p1, v0

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    return p1
.end method

.method public final b()V
    .registers 12

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x35

    .line 4
    .line 5
    const/16 v2, 0x39

    .line 6
    .line 7
    const/16 v3, 0xe5

    .line 8
    .line 9
    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v5, Landroid/os/StatFs;

    .line 14
    .line 15
    if-nez v4, :cond_13

    .line 16
    .line 17
    const-string v4, ""
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_85

    .line 18
    .line 19
    goto :goto_1c

    .line 20
    :cond_13
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_85

    .line 24
    goto :goto_1c

    .line 25
    :catch_18
    :try_start_18
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :goto_1c
    invoke-direct {v5, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    long-to-double v6, v4

    .line 37
    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    .line 38
    .line 39
    div-double/2addr v6, v8

    .line 40
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 41
    .line 42
    cmpl-double v8, v6, v8

    .line 43
    .line 44
    if-ltz v8, :cond_37

    .line 45
    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    double-to-int v6, v6

    .line 51
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    goto :goto_54

    .line 56
    :cond_37
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    .line 58
    const/4 v9, 0x4

    .line 59
    new-array v9, v9, [B

    .line 60
    .line 61
    fill-array-data v9, :array_a0

    .line 62
    .line 63
    .line 64
    new-array v10, v0, [B

    .line 65
    .line 66
    fill-array-data v10, :array_a6

    .line 67
    .line 68
    .line 69
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v8, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    :goto_54
    iput-object v6, p0, Lt1/m;->f:Ljava/lang/String;

    .line 86
    .line 87
    const-wide v6, 0x80000000L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    cmp-long v6, v4, v6

    .line 93
    .line 94
    if-gez v6, :cond_64

    .line 95
    .line 96
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    goto :goto_82

    .line 101
    :cond_64
    const-wide v6, 0xc0000000L

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    cmp-long v4, v4, v6

    .line 107
    .line 108
    if-gez v4, :cond_78

    .line 109
    .line 110
    const/16 v4, 0xc0

    .line 111
    .line 112
    const/16 v5, 0x2d

    .line 113
    .line 114
    const/16 v6, 0xfb

    .line 115
    .line 116
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    goto :goto_82

    .line 121
    :cond_78
    const/16 v4, 0xb9

    .line 122
    .line 123
    const/16 v5, 0x5d

    .line 124
    .line 125
    const/16 v6, 0x3f

    .line 126
    .line 127
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    :goto_82
    iput v4, p0, Lt1/m;->g:I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_84} :catch_85

    .line 132
    .line 133
    goto :goto_9c

    .line 134
    :catch_85
    const/4 v4, 0x2

    .line 135
    new-array v4, v4, [B

    .line 136
    .line 137
    fill-array-data v4, :array_ae

    .line 138
    .line 139
    .line 140
    new-array v0, v0, [B

    .line 141
    .line 142
    fill-array-data v0, :array_b4

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lt1/m;->f:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    iput v0, p0, Lt1/m;->g:I

    .line 156
    .line 157
    :goto_9c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :array_a0
    .array-data 1
        -0x24t
        0x60t
        0x33t
        0x33t
    .end array-data

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_a6
    .array-data 1
        -0x7t
        0x4et
        0x2t
        0x55t
        0x15t
        -0x5ft
        0x17t
        0x66t
    .end array-data

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    :array_ae
    .array-data 1
        -0x7ft
        0x6et
    .end array-data

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    nop

    .line 181
    :array_b4
    .array-data 1
        -0x54t
        0x43t
        0x77t
        0x4t
        -0x66t
        -0x59t
        -0x77t
        0x1bt
    .end array-data
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt1/m;->h:Lt1/l;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v6, p0, Lt1/m;->c:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/high16 v7, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr v1, v7

    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-virtual {p0, v2}, Lt1/m;->a(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    add-float/2addr v1, v2

    .line 32
    int-to-float v0, v0

    .line 33
    sub-float v2, v0, v1

    .line 34
    .line 35
    move v3, v2

    .line 36
    iget-object v2, p0, Lt1/m;->e:Landroid/graphics/RectF;

    .line 37
    .line 38
    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    .line 40
    .line 41
    div-float/2addr v0, v7

    .line 42
    const/4 v1, 0x4

    .line 43
    invoke-virtual {p0, v1}, Lt1/m;->a(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v1, v1

    .line 48
    sub-float v1, v0, v1

    .line 49
    .line 50
    iget-object v3, p0, Lt1/m;->b:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lt1/m;->g:I

    .line 56
    .line 57
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    const/high16 v4, 0x43b40000    # 360.0f

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 64
    .line 65
    move-object v1, p1

    .line 66
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lt1/m;->d:Landroid/text/TextPaint;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 76
    .line 77
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 78
    .line 79
    add-float/2addr v3, v2

    .line 80
    div-float/2addr v3, v7

    .line 81
    sub-float v2, v0, v3

    .line 82
    .line 83
    iget-object v3, p0, Lt1/m;->f:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v3, v0, v2, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onMeasure(II)V
    .registers 4

    .line 1
    const/16 v0, 0x4c

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lt1/m;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lt1/m;->h:Lt1/l;

    .line 5
    .line 6
    if-nez p1, :cond_b

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
