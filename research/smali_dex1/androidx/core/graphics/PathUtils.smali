.class public final Landroidx/core/graphics/PathUtils;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathUtils$Api26Impl;
    }
.end annotation


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

.method public static flatten(Landroid/graphics/Path;)Ljava/util/Collection;
    .registers 2
    .param p0    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            ")",
            "Ljava/util/Collection<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    .line 76
    invoke-static {p0, v0}, Landroidx/core/graphics/PathUtils;->flatten(Landroid/graphics/Path;F)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static flatten(Landroid/graphics/Path;F)Ljava/util/Collection;
    .registers 12
    .param p0    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Path;",
            "F)",
            "Ljava/util/Collection<",
            "Landroidx/core/graphics/PathSegment;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/core/graphics/PathUtils$Api26Impl;->approximate(Landroid/graphics/Path;F)[F

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p1, p0

    .line 6
    div-int/lit8 p1, p1, 0x3

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    :goto_d
    if-ge v1, p1, :cond_4a

    .line 15
    .line 16
    mul-int/lit8 v2, v1, 0x3

    .line 17
    .line 18
    add-int/lit8 v3, v1, -0x1

    .line 19
    .line 20
    mul-int/lit8 v3, v3, 0x3

    .line 21
    .line 22
    aget v4, p0, v2

    .line 23
    .line 24
    add-int/lit8 v5, v2, 0x1

    .line 25
    .line 26
    aget v5, p0, v5

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    aget v2, p0, v2

    .line 31
    .line 32
    aget v6, p0, v3

    .line 33
    .line 34
    add-int/lit8 v7, v3, 0x1

    .line 35
    .line 36
    aget v7, p0, v7

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x2

    .line 39
    .line 40
    aget v3, p0, v3

    .line 41
    .line 42
    cmpl-float v8, v4, v6

    .line 43
    .line 44
    if-eqz v8, :cond_47

    .line 45
    .line 46
    cmpl-float v8, v5, v7

    .line 47
    .line 48
    if-nez v8, :cond_35

    .line 49
    .line 50
    cmpl-float v8, v2, v3

    .line 51
    .line 52
    if-eqz v8, :cond_47

    .line 53
    .line 54
    :cond_35
    new-instance v8, Landroidx/core/graphics/PathSegment;

    .line 55
    .line 56
    new-instance v9, Landroid/graphics/PointF;

    .line 57
    .line 58
    invoke-direct {v9, v7, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Landroid/graphics/PointF;

    .line 62
    .line 63
    invoke-direct {v3, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v8, v9, v6, v3, v4}, Landroidx/core/graphics/PathSegment;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_d

    .line 75
    :cond_4a
    return-object v0
.end method
