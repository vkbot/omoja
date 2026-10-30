.class Landroidx/core/view/animation/PathInterpolatorApi14;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 61
    invoke-static {p1, p2}, Landroidx/core/view/animation/PathInterpolatorApi14;->createQuad(FF)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 62
    invoke-static {p1, p2, p3, p4}, Landroidx/core/view/animation/PathInterpolatorApi14;->createCubic(FFFF)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/core/view/animation/PathInterpolatorApi14;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const v2, 0x3b03126f    # 0.002f

    .line 15
    .line 16
    .line 17
    div-float v2, p1, v2

    .line 18
    .line 19
    float-to-int v2, v2

    .line 20
    add-int/lit8 v3, v2, 0x1

    .line 21
    .line 22
    new-array v4, v3, [F

    .line 23
    .line 24
    iput-object v4, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 25
    .line 26
    new-array v4, v3, [F

    .line 27
    .line 28
    iput-object v4, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    new-array v4, v4, [F

    .line 32
    .line 33
    move v5, v1

    .line 34
    :goto_0
    if-ge v5, v3, :cond_0

    .line 35
    .line 36
    int-to-float v6, v5

    .line 37
    mul-float/2addr v6, p1

    .line 38
    int-to-float v7, v2

    .line 39
    div-float/2addr v6, v7

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 42
    .line 43
    .line 44
    iget-object v6, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 45
    .line 46
    aget v7, v4, v1

    .line 47
    .line 48
    aput v7, v6, v5

    .line 49
    .line 50
    iget-object v6, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    aget v7, v4, v7

    .line 54
    .line 55
    aput v7, v6, v5

    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private static createCubic(FFFF)Landroid/graphics/Path;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    const/high16 v5, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/high16 v6, 0x3f800000    # 1.0f

    .line 13
    .line 14
    move v1, p0

    .line 15
    move v2, p1

    .line 16
    move v3, p2

    .line 17
    move v4, p3

    .line 18
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private static createQuad(FF)Landroid/graphics/Path;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gtz v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v2, p1, v1

    .line 10
    .line 11
    if-ltz v2, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v1, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 15
    .line 16
    array-length v1, v1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    sub-int v4, v1, v3

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 23
    .line 24
    if-le v4, v2, :cond_3

    .line 25
    .line 26
    add-int v4, v3, v1

    .line 27
    .line 28
    div-int/lit8 v4, v4, 0x2

    .line 29
    .line 30
    aget v5, v5, v4

    .line 31
    .line 32
    cmpg-float v5, p1, v5

    .line 33
    .line 34
    if-gez v5, :cond_2

    .line 35
    .line 36
    move v1, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v3, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    aget v2, v5, v1

    .line 41
    .line 42
    aget v4, v5, v3

    .line 43
    .line 44
    sub-float/2addr v2, v4

    .line 45
    cmpl-float v0, v2, v0

    .line 46
    .line 47
    iget-object v5, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    aget p1, v5, v3

    .line 52
    .line 53
    return p1

    .line 54
    :cond_4
    sub-float/2addr p1, v4

    .line 55
    div-float/2addr p1, v2

    .line 56
    aget v0, v5, v3

    .line 57
    .line 58
    aget v1, v5, v1

    .line 59
    .line 60
    invoke-static {v1, v0, p1, v0}, Lai/onnxruntime/a;->b(FFFF)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method
