.class public Landroidx/constraintlayout/core/motion/utils/Oscillator;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final BOUNCE:I = 0x6

.field public static final COS_WAVE:I = 0x5

.field public static final CUSTOM:I = 0x7

.field public static final REVERSE_SAW_WAVE:I = 0x4

.field public static final SAW_WAVE:I = 0x3

.field public static final SIN_WAVE:I = 0x0

.field public static final SQUARE_WAVE:I = 0x1

.field public static TAG:Ljava/lang/String; = "Oscillator"

.field public static final TRIANGLE_WAVE:I = 0x2


# instance fields
.field mArea:[D

.field mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

.field mCustomType:Ljava/lang/String;

.field private mNormalized:Z

.field mPI2:D

.field mPeriod:[F

.field mPosition:[D

.field mType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 8
    .line 9
    new-array v1, v0, [D

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 12
    .line 13
    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public addPoint(DF)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 7
    .line 8
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gez v1, :cond_10

    .line 13
    .line 14
    neg-int v1, v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :cond_10
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 18
    .line 19
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 26
    .line 27
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 32
    .line 33
    new-array v2, v0, [D

    .line 34
    .line 35
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 38
    .line 39
    add-int/lit8 v3, v1, 0x1

    .line 40
    .line 41
    sub-int/2addr v0, v1

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 48
    .line 49
    aput-wide p1, v0, v1

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 52
    .line 53
    aput p3, p1, v1

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    .line 57
    .line 58
    return-void
.end method

.method public getDP(D)D
    .registers 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_7

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpl-double v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_e

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 16
    .line 17
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gez v0, :cond_19

    .line 22
    .line 23
    neg-int v0, v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :cond_19
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 27
    .line 28
    aget v2, v1, v0

    .line 29
    .line 30
    add-int/lit8 v3, v0, -0x1

    .line 31
    .line 32
    aget v1, v1, v3

    .line 33
    .line 34
    sub-float/2addr v2, v1

    .line 35
    float-to-double v4, v2

    .line 36
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 37
    .line 38
    aget-wide v6, v2, v0

    .line 39
    .line 40
    aget-wide v8, v2, v3

    .line 41
    .line 42
    sub-double/2addr v6, v8

    .line 43
    div-double/2addr v4, v6

    .line 44
    mul-double/2addr p1, v4

    .line 45
    float-to-double v0, v1

    .line 46
    mul-double/2addr v4, v8

    .line 47
    sub-double/2addr v0, v4

    .line 48
    add-double/2addr v0, p1

    .line 49
    return-wide v0
.end method

.method public getP(D)D
    .registers 13

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-gtz v2, :cond_7

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    cmpl-double v2, p1, v0

    .line 11
    .line 12
    if-ltz v2, :cond_e

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 16
    .line 17
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-gez v0, :cond_19

    .line 22
    .line 23
    neg-int v0, v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :cond_19
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 27
    .line 28
    aget v2, v1, v0

    .line 29
    .line 30
    add-int/lit8 v3, v0, -0x1

    .line 31
    .line 32
    aget v1, v1, v3

    .line 33
    .line 34
    sub-float/2addr v2, v1

    .line 35
    float-to-double v4, v2

    .line 36
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 37
    .line 38
    aget-wide v6, v2, v0

    .line 39
    .line 40
    aget-wide v8, v2, v3

    .line 41
    .line 42
    sub-double/2addr v6, v8

    .line 43
    div-double/2addr v4, v6

    .line 44
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 45
    .line 46
    aget-wide v2, v0, v3

    .line 47
    .line 48
    float-to-double v0, v1

    .line 49
    mul-double v6, v4, v8

    .line 50
    .line 51
    sub-double/2addr v0, v6

    .line 52
    sub-double v6, p1, v8

    .line 53
    .line 54
    mul-double/2addr v6, v0

    .line 55
    add-double/2addr v6, v2

    .line 56
    mul-double/2addr p1, p1

    .line 57
    mul-double/2addr v8, v8

    .line 58
    sub-double/2addr p1, v8

    .line 59
    mul-double/2addr p1, v4

    .line 60
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 61
    .line 62
    div-double/2addr p1, v0

    .line 63
    add-double/2addr p1, v6

    .line 64
    return-wide p1
.end method

.method public getSlope(DDD)D
    .registers 13

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-double/2addr v0, p3

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getDP(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    add-double/2addr p1, p5

    .line 11
    iget p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 12
    .line 13
    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    .line 14
    .line 15
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 16
    .line 17
    packed-switch p3, :pswitch_data_4e

    .line 18
    .line 19
    .line 20
    iget-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    .line 21
    .line 22
    mul-double/2addr p1, p3

    .line 23
    mul-double/2addr p3, v0

    .line 24
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide p3

    .line 28
    :goto_1b
    mul-double/2addr p3, p1

    .line 29
    return-wide p3

    .line 30
    :pswitch_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 31
    .line 32
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 33
    .line 34
    rem-double/2addr v0, p2

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, v0, v1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(DI)D

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    return-wide p1

    .line 41
    :pswitch_28
    mul-double/2addr p1, v2

    .line 42
    mul-double/2addr v0, v2

    .line 43
    add-double/2addr v0, p4

    .line 44
    rem-double/2addr v0, v2

    .line 45
    sub-double/2addr v0, p4

    .line 46
    mul-double/2addr v0, p1

    .line 47
    return-wide v0

    .line 48
    :pswitch_2f
    iget-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    .line 49
    .line 50
    neg-double p5, p3

    .line 51
    mul-double/2addr p5, p1

    .line 52
    mul-double/2addr p3, v0

    .line 53
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    mul-double/2addr p1, p5

    .line 58
    return-wide p1

    .line 59
    :pswitch_3a
    neg-double p1, p1

    .line 60
    mul-double/2addr p1, p4

    .line 61
    return-wide p1

    .line 62
    :pswitch_3d
    mul-double/2addr p1, p4

    .line 63
    return-wide p1

    .line 64
    :pswitch_3f
    mul-double/2addr p1, v2

    .line 65
    mul-double/2addr v0, v2

    .line 66
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 67
    .line 68
    add-double/2addr v0, v4

    .line 69
    rem-double/2addr v0, v2

    .line 70
    sub-double/2addr v0, p4

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide p3

    .line 75
    goto :goto_1b

    .line 76
    :pswitch_4b
    const-wide/16 p1, 0x0

    .line 77
    .line 78
    return-wide p1

    .line 79
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_3f
        :pswitch_3d
        :pswitch_3a
        :pswitch_2f
        :pswitch_28
        :pswitch_1d
    .end packed-switch
.end method

.method public getValue(DD)D
    .registers 12

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/Oscillator;->getP(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    add-double/2addr p1, p3

    .line 6
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 7
    .line 8
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    .line 9
    .line 10
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 11
    .line 12
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_52

    .line 15
    .line 16
    .line 17
    iget-wide p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    .line 18
    .line 19
    mul-double/2addr p3, p1

    .line 20
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    return-wide p1

    .line 25
    :pswitch_18
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 26
    .line 27
    rem-double/2addr p1, v5

    .line 28
    const/4 p4, 0x0

    .line 29
    invoke-virtual {p3, p1, p2, p4}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(DI)D

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    return-wide p1

    .line 34
    :pswitch_21
    mul-double/2addr p1, v1

    .line 35
    rem-double/2addr p1, v1

    .line 36
    sub-double/2addr p1, v3

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    sub-double p1, v5, p1

    .line 42
    .line 43
    mul-double/2addr p1, p1

    .line 44
    :goto_2b
    sub-double/2addr v5, p1

    .line 45
    return-wide v5

    .line 46
    :pswitch_2d
    iget-wide v0, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPI2:D

    .line 47
    .line 48
    add-double/2addr p3, p1

    .line 49
    mul-double/2addr p3, v0

    .line 50
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    return-wide p1

    .line 55
    :pswitch_36
    mul-double/2addr p1, v3

    .line 56
    add-double/2addr p1, v5

    .line 57
    rem-double/2addr p1, v3

    .line 58
    goto :goto_2b

    .line 59
    :pswitch_3a
    mul-double/2addr p1, v3

    .line 60
    add-double/2addr p1, v5

    .line 61
    rem-double/2addr p1, v3

    .line 62
    sub-double/2addr p1, v5

    .line 63
    return-wide p1

    .line 64
    :pswitch_3f
    mul-double/2addr p1, v1

    .line 65
    add-double/2addr p1, v5

    .line 66
    rem-double/2addr p1, v1

    .line 67
    sub-double/2addr p1, v3

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    goto :goto_2b

    .line 73
    :pswitch_48
    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    .line 74
    .line 75
    rem-double/2addr p1, v5

    .line 76
    sub-double/2addr p3, p1

    .line 77
    invoke-static {p3, p4}, Ljava/lang/Math;->signum(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    return-wide p1

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_48
        :pswitch_3f
        :pswitch_3a
        :pswitch_36
        :pswitch_2d
        :pswitch_21
        :pswitch_18
    .end packed-switch
.end method

.method public normalize()V
    .registers 16

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v4, v0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 7
    .line 8
    array-length v7, v6

    .line 9
    if-ge v3, v7, :cond_11

    .line 10
    .line 11
    aget v6, v6, v3

    .line 12
    .line 13
    float-to-double v6, v6

    .line 14
    add-double/2addr v4, v6

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_5

    .line 18
    :cond_11
    const/4 v3, 0x1

    .line 19
    move-wide v7, v0

    .line 20
    move v6, v3

    .line 21
    :goto_14
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 22
    .line 23
    array-length v10, v9

    .line 24
    const/high16 v11, 0x40000000    # 2.0f

    .line 25
    .line 26
    if-ge v6, v10, :cond_30

    .line 27
    .line 28
    add-int/lit8 v10, v6, -0x1

    .line 29
    .line 30
    aget v12, v9, v10

    .line 31
    .line 32
    aget v9, v9, v6

    .line 33
    .line 34
    add-float/2addr v12, v9

    .line 35
    div-float/2addr v12, v11

    .line 36
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 37
    .line 38
    aget-wide v13, v9, v6

    .line 39
    .line 40
    aget-wide v10, v9, v10

    .line 41
    .line 42
    sub-double/2addr v13, v10

    .line 43
    float-to-double v9, v12

    .line 44
    mul-double/2addr v13, v9

    .line 45
    add-double/2addr v7, v13

    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_14

    .line 49
    :cond_30
    move v6, v2

    .line 50
    :goto_31
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 51
    .line 52
    array-length v10, v9

    .line 53
    if-ge v6, v10, :cond_41

    .line 54
    .line 55
    aget v10, v9, v6

    .line 56
    .line 57
    div-double v12, v4, v7

    .line 58
    .line 59
    double-to-float v12, v12

    .line 60
    mul-float/2addr v10, v12

    .line 61
    aput v10, v9, v6

    .line 62
    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_31

    .line 66
    :cond_41
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 67
    .line 68
    aput-wide v0, v4, v2

    .line 69
    .line 70
    move v0, v3

    .line 71
    :goto_46
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 72
    .line 73
    array-length v2, v1

    .line 74
    if-ge v0, v2, :cond_66

    .line 75
    .line 76
    add-int/lit8 v2, v0, -0x1

    .line 77
    .line 78
    aget v4, v1, v2

    .line 79
    .line 80
    aget v1, v1, v0

    .line 81
    .line 82
    add-float/2addr v4, v1

    .line 83
    div-float/2addr v4, v11

    .line 84
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 85
    .line 86
    aget-wide v5, v1, v0

    .line 87
    .line 88
    aget-wide v7, v1, v2

    .line 89
    .line 90
    sub-double/2addr v5, v7

    .line 91
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mArea:[D

    .line 92
    .line 93
    aget-wide v7, v1, v2

    .line 94
    .line 95
    float-to-double v9, v4

    .line 96
    mul-double/2addr v5, v9

    .line 97
    add-double/2addr v5, v7

    .line 98
    aput-wide v5, v1, v0

    .line 99
    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    goto :goto_46

    .line 103
    :cond_66
    iput-boolean v3, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mNormalized:Z

    .line 104
    .line 105
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mType:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomType:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p2, :cond_c

    .line 6
    .line 7
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->buildWave(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mCustomCurve:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    .line 12
    .line 13
    :cond_c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pos ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPosition:[D

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " period="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/utils/Oscillator;->mPeriod:[F

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
