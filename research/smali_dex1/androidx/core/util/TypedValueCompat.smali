.class public Landroidx/core/util/TypedValueCompat;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/TypedValueCompat$Api34Impl;,
        Landroidx/core/util/TypedValueCompat$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field private static final INCHES_PER_MM:F = 0.03937008f

.field private static final INCHES_PER_PT:F = 0.013888889f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 5
    .param p2    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_b

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroidx/core/util/TypedValueCompat$Api34Impl;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_b
    if-eqz p0, :cond_5b

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eq p0, v0, :cond_53

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p0, v0, :cond_4a

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p0, v0, :cond_3e

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p0, v0, :cond_35

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    if-ne p0, v0, :cond_2a

    .line 29
    .line 30
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 31
    .line 32
    cmpl-float p2, p0, v1

    .line 33
    .line 34
    if-nez p2, :cond_24

    .line 35
    .line 36
    return v1

    .line 37
    :cond_24
    div-float/2addr p1, p0

    .line 38
    const p0, 0x3d214285

    .line 39
    .line 40
    .line 41
    :goto_28
    div-float/2addr p1, p0

    .line 42
    return p1

    .line 43
    :cond_2a
    const-string p1, "Invalid unitToConvertTo "

    .line 44
    .line 45
    invoke-static {p0, p1}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return p0

    .line 54
    :cond_35
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 55
    .line 56
    cmpl-float p2, p0, v1

    .line 57
    .line 58
    if-nez p2, :cond_3c

    .line 59
    .line 60
    return v1

    .line 61
    :cond_3c
    div-float/2addr p1, p0

    .line 62
    return p1

    .line 63
    :cond_3e
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 64
    .line 65
    cmpl-float p2, p0, v1

    .line 66
    .line 67
    if-nez p2, :cond_45

    .line 68
    .line 69
    return v1

    .line 70
    :cond_45
    div-float/2addr p1, p0

    .line 71
    const p0, 0x3c638e39

    .line 72
    .line 73
    .line 74
    goto :goto_28

    .line 75
    :cond_4a
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 76
    .line 77
    cmpl-float p2, p0, v1

    .line 78
    .line 79
    if-nez p2, :cond_51

    .line 80
    .line 81
    return v1

    .line 82
    :cond_51
    div-float/2addr p1, p0

    .line 83
    return p1

    .line 84
    :cond_53
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 85
    .line 86
    cmpl-float p2, p0, v1

    .line 87
    .line 88
    if-nez p2, :cond_5a

    .line 89
    .line 90
    return v1

    .line 91
    :cond_5a
    div-float/2addr p1, p0

    .line 92
    :cond_5b
    return p1
.end method

.method public static dpToPx(FLandroid/util/DisplayMetrics;)F
    .registers 3
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static getUnitFromComplexDimension(I)I
    .registers 1

    .line 1
    and-int/lit8 p0, p0, 0xf

    .line 2
    .line 3
    return p0
.end method

.method public static pxToDp(FLandroid/util/DisplayMetrics;)F
    .registers 3
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static pxToSp(FLandroid/util/DisplayMetrics;)F
    .registers 3
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static spToPx(FLandroid/util/DisplayMetrics;)F
    .registers 3
    .param p1    # Landroid/util/DisplayMetrics;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method
