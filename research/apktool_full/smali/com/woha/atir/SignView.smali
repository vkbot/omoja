.class public Lcom/woha/atir/SignView;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public c:Li7/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

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
    iput-object p1, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/high16 p2, -0x1000000

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 18
    .line 19
    const/high16 p2, 0x40a00000    # 5.0f

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 25
    .line 26
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 32
    .line 33
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    .line 7
    .line 8
    int-to-float p2, p2

    .line 9
    int-to-float p3, p3

    .line 10
    int-to-float p4, p4

    .line 11
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    iget-object p4, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 17
    .line 18
    const/high16 v0, 0x42a00000    # 80.0f

    .line 19
    .line 20
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 21
    .line 22
    .line 23
    iget-object p4, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object p4, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 30
    .line 31
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    iget-object p5, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 43
    .line 44
    .line 45
    move-result p5

    .line 46
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/high16 v1, 0x40000000    # 2.0f

    .line 53
    .line 54
    div-float/2addr p5, v1

    .line 55
    sub-float/2addr p2, p5

    .line 56
    div-float/2addr v0, v1

    .line 57
    add-float/2addr v0, p3

    .line 58
    iget-object p3, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 59
    .line 60
    invoke-virtual {p1, p4, p2, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/woha/atir/SignView;->c:Li7/x;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    div-int/lit8 v4, v0, 0x2

    .line 18
    .line 19
    div-int/lit8 v5, v1, 0x2

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    add-int/lit8 v6, v0, -0xa

    .line 28
    .line 29
    iget-object v0, p0, Lcom/woha/atir/SignView;->c:Li7/x;

    .line 30
    .line 31
    iget v1, v0, Li7/x;->d:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v1, v2, :cond_3

    .line 35
    .line 36
    const/16 v2, 0x65

    .line 37
    .line 38
    if-eq v1, v2, :cond_2

    .line 39
    .line 40
    const/16 v0, 0x6b

    .line 41
    .line 42
    if-eq v1, v0, :cond_1

    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 46
    .line 47
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    .line 51
    .line 52
    int-to-float v0, v4

    .line 53
    int-to-float v1, v5

    .line 54
    int-to-float v2, v6

    .line 55
    iget-object v3, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Landroid/graphics/Path;

    .line 61
    .line 62
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 63
    .line 64
    .line 65
    sub-int v2, v5, v6

    .line 66
    .line 67
    int-to-float v2, v2

    .line 68
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    .line 70
    .line 71
    div-int/lit8 v6, v6, 0x2

    .line 72
    .line 73
    sub-int v0, v4, v6

    .line 74
    .line 75
    int-to-float v8, v0

    .line 76
    add-int/2addr v5, v6

    .line 77
    int-to-float v9, v5

    .line 78
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    .line 80
    .line 81
    add-int/2addr v4, v6

    .line 82
    int-to-float v10, v4

    .line 83
    invoke-virtual {v1, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 90
    .line 91
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 97
    .line 98
    const/4 v2, -0x1

    .line 99
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 108
    .line 109
    const/high16 v1, 0x41200000    # 10.0f

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 115
    .line 116
    const/high16 v1, -0x1000000

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    .line 120
    .line 121
    iget-object v12, p0, Lcom/woha/atir/SignView;->b:Landroid/graphics/Paint;

    .line 122
    .line 123
    move v11, v9

    .line 124
    move-object v7, p1

    .line 125
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    move-object v3, p1

    .line 130
    iget v7, v0, Li7/x;->e:I

    .line 131
    .line 132
    move-object v2, p0

    .line 133
    invoke-virtual/range {v2 .. v7}, Lcom/woha/atir/SignView;->a(Landroid/graphics/Canvas;IIII)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_3
    move-object v3, p1

    .line 138
    iget v7, v0, Li7/x;->e:I

    .line 139
    .line 140
    move-object v2, p0

    .line 141
    invoke-virtual/range {v2 .. v7}, Lcom/woha/atir/SignView;->a(Landroid/graphics/Canvas;IIII)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public setTrafficObject(Li7/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/woha/atir/SignView;->c:Li7/x;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
