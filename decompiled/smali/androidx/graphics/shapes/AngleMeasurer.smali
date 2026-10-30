.class public final Landroidx/graphics/shapes/AngleMeasurer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/graphics/shapes/Measurer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/shapes/AngleMeasurer;",
        "Landroidx/graphics/shapes/Measurer;",
        "centerX",
        "",
        "centerY",
        "(FF)V",
        "getCenterX",
        "()F",
        "getCenterY",
        "findCubicCutPoint",
        "c",
        "Landroidx/graphics/shapes/Cubic;",
        "m",
        "measureCubic",
        "graphics-shapes_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final centerX:F

.field private final centerY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    .line 5
    .line 6
    iput p2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/AngleMeasurer;->findCubicCutPoint$lambda$1(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final findCubicCutPoint$lambda$1(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FFF)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p4}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    iget p4, p1, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    .line 16
    .line 17
    sub-float/2addr p0, p4

    .line 18
    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    .line 19
    .line 20
    .line 21
    move-result p4

    .line 22
    iget p1, p1, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    .line 23
    .line 24
    sub-float/2addr p4, p1

    .line 25
    invoke-static {p0, p4}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    sub-float/2addr p0, p2

    .line 30
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p0, p1}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    sub-float/2addr p0, p3

    .line 39
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method


# virtual methods
.method public findCubicCutPoint(Landroidx/graphics/shapes/Cubic;F)F
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    .line 9
    .line 10
    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    .line 16
    .line 17
    sub-float/2addr v1, v2

    .line 18
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v1, Landroidx/graphics/shapes/a;

    .line 23
    .line 24
    invoke-direct {v1, p1, p0, v0, p2}, Landroidx/graphics/shapes/a;-><init>(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/AngleMeasurer;FF)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    const/high16 p2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    const v0, 0x3727c5ac    # 1.0E-5f

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2, v0, v1}, Landroidx/graphics/shapes/Utils;->findMinimum(FFFLandroidx/graphics/shapes/FindMinimumFunction;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public final getCenterX()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCenterY()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    .line 2
    .line 3
    return v0
.end method

.method public measureCubic(Landroidx/graphics/shapes/Cubic;)F
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    .line 9
    .line 10
    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    .line 16
    .line 17
    sub-float/2addr v1, v2

    .line 18
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerX:F

    .line 27
    .line 28
    sub-float/2addr v1, v2

    .line 29
    invoke-virtual {p1}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget v2, p0, Landroidx/graphics/shapes/AngleMeasurer;->centerY:F

    .line 34
    .line 35
    sub-float/2addr p1, v2

    .line 36
    invoke-static {v1, p1}, Landroidx/graphics/shapes/Utils;->angle(FF)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    sub-float/2addr v0, p1

    .line 41
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v0, p1}, Landroidx/graphics/shapes/Utils;->positiveModulo(FF)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const v1, 0x38d1b717    # 1.0E-4f

    .line 54
    .line 55
    .line 56
    sub-float/2addr v0, v1

    .line 57
    cmpl-float v0, p1, v0

    .line 58
    .line 59
    if-lez v0, :cond_0

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    :cond_0
    return p1
.end method
