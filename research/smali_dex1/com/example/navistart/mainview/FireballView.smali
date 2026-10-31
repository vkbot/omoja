.class public Lcom/example/navistart/mainview/FireballView;
.super Landroid/view/View;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final b:Landroid/animation/ValueAnimator;

.field public final c:Landroid/graphics/Paint;

.field public d:I

.field public e:I

.field public f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/example/navistart/mainview/FireballView;->f:F

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/example/navistart/mainview/FireballView;->c:Landroid/graphics/Paint;

    .line 14
    .line 15
    const p1, -0xff0001

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/example/navistart/mainview/FireballView;->d:I

    .line 19
    .line 20
    const p1, -0xffff01

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/example/navistart/mainview/FireballView;->e:I

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    new-array p2, p1, [F

    .line 27
    .line 28
    fill-array-data p2, :array_46

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iput-object p2, p0, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    const/16 v0, 0x2710

    .line 38
    .line 39
    int-to-long v0, v0

    .line 40
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    new-instance p2, Le4/h;

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    invoke-direct {p2, v0, p0}, Le4/h;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/example/navistart/mainview/FireballView;->b:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :array_46
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 14

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
    move-result v2

    .line 16
    const/4 v3, 0x2

    .line 17
    div-int/2addr v2, v3

    .line 18
    iget v4, p0, Lcom/example/navistart/mainview/FireballView;->d:I

    .line 19
    .line 20
    iget v5, p0, Lcom/example/navistart/mainview/FireballView;->e:I

    .line 21
    .line 22
    iget v6, p0, Lcom/example/navistart/mainview/FireballView;->f:F

    .line 23
    .line 24
    const/high16 v7, 0x3f800000    # 1.0f

    .line 25
    .line 26
    sub-float/2addr v7, v6

    .line 27
    shr-int/lit8 v8, v4, 0x18

    .line 28
    .line 29
    and-int/lit16 v8, v8, 0xff

    .line 30
    .line 31
    int-to-float v8, v8

    .line 32
    mul-float/2addr v8, v7

    .line 33
    shr-int/lit8 v9, v5, 0x18

    .line 34
    .line 35
    and-int/lit16 v9, v9, 0xff

    .line 36
    .line 37
    int-to-float v9, v9

    .line 38
    mul-float/2addr v9, v6

    .line 39
    add-float/2addr v9, v8

    .line 40
    float-to-int v8, v9

    .line 41
    shr-int/lit8 v9, v4, 0x10

    .line 42
    .line 43
    and-int/lit16 v9, v9, 0xff

    .line 44
    .line 45
    int-to-float v9, v9

    .line 46
    mul-float/2addr v9, v7

    .line 47
    shr-int/lit8 v10, v5, 0x10

    .line 48
    .line 49
    and-int/lit16 v10, v10, 0xff

    .line 50
    .line 51
    int-to-float v10, v10

    .line 52
    mul-float/2addr v10, v6

    .line 53
    add-float/2addr v10, v9

    .line 54
    float-to-int v9, v10

    .line 55
    shr-int/lit8 v10, v4, 0x8

    .line 56
    .line 57
    and-int/lit16 v10, v10, 0xff

    .line 58
    .line 59
    int-to-float v10, v10

    .line 60
    mul-float/2addr v10, v7

    .line 61
    shr-int/lit8 v11, v5, 0x8

    .line 62
    .line 63
    and-int/lit16 v11, v11, 0xff

    .line 64
    .line 65
    int-to-float v11, v11

    .line 66
    mul-float/2addr v11, v6

    .line 67
    add-float/2addr v11, v10

    .line 68
    float-to-int v10, v11

    .line 69
    and-int/lit16 v4, v4, 0xff

    .line 70
    .line 71
    int-to-float v4, v4

    .line 72
    mul-float/2addr v7, v4

    .line 73
    and-int/lit16 v4, v5, 0xff

    .line 74
    .line 75
    int-to-float v4, v4

    .line 76
    mul-float/2addr v6, v4

    .line 77
    add-float/2addr v6, v7

    .line 78
    float-to-int v4, v6

    .line 79
    shl-int/lit8 v5, v8, 0x18

    .line 80
    .line 81
    shl-int/lit8 v6, v9, 0x10

    .line 82
    .line 83
    or-int/2addr v5, v6

    .line 84
    shl-int/lit8 v6, v10, 0x8

    .line 85
    .line 86
    or-int/2addr v5, v6

    .line 87
    or-int/2addr v4, v5

    .line 88
    new-instance v5, Landroid/graphics/RadialGradient;

    .line 89
    .line 90
    int-to-float v0, v0

    .line 91
    const/high16 v6, 0x40000000    # 2.0f

    .line 92
    .line 93
    div-float/2addr v0, v6

    .line 94
    int-to-float v1, v1

    .line 95
    div-float v7, v1, v6

    .line 96
    .line 97
    int-to-float v8, v2

    .line 98
    const v1, 0xffffff

    .line 99
    .line 100
    .line 101
    filled-new-array {v4, v1}, [I

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    new-array v10, v3, [F

    .line 106
    .line 107
    fill-array-data v10, :array_7c

    .line 108
    .line 109
    .line 110
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 111
    .line 112
    move v6, v0

    .line 113
    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/example/navistart/mainview/FireballView;->c:Landroid/graphics/Paint;

    .line 117
    .line 118
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :array_7c
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method
