.class public final Landroidx/dynamicanimation/animation/SpringForce;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/dynamicanimation/animation/Force;


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 42
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 44
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 45
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, 0x4097700000000000L    # 1500.0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 14
    .line 15
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 21
    .line 22
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 28
    .line 29
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 35
    .line 36
    float-to-double v0, p1

    .line 37
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 38
    .line 39
    return-void
.end method

.method private init()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 7
    .line 8
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmpl-double v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_50

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 18
    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 20
    .line 21
    cmpl-double v4, v0, v2

    .line 22
    .line 23
    if-lez v4, :cond_37

    .line 24
    .line 25
    neg-double v4, v0

    .line 26
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 27
    .line 28
    mul-double/2addr v4, v6

    .line 29
    mul-double/2addr v0, v0

    .line 30
    sub-double/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    mul-double/2addr v0, v6

    .line 36
    add-double/2addr v0, v4

    .line 37
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 38
    .line 39
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 40
    .line 41
    neg-double v4, v0

    .line 42
    iget-wide v6, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 43
    .line 44
    mul-double/2addr v4, v6

    .line 45
    mul-double/2addr v0, v0

    .line 46
    sub-double/2addr v0, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    mul-double/2addr v0, v6

    .line 52
    sub-double/2addr v4, v0

    .line 53
    iput-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 54
    .line 55
    goto :goto_4c

    .line 56
    :cond_37
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmpl-double v4, v0, v4

    .line 59
    .line 60
    if-ltz v4, :cond_4c

    .line 61
    .line 62
    cmpg-double v4, v0, v2

    .line 63
    .line 64
    if-gez v4, :cond_4c

    .line 65
    .line 66
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 67
    .line 68
    mul-double/2addr v0, v0

    .line 69
    sub-double/2addr v2, v0

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    mul-double/2addr v0, v4

    .line 75
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 76
    .line 77
    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_50
    const-string v0, "Error: Final position of the spring must be set before the animation starts"

    .line 82
    .line 83
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .registers 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 7
    .line 8
    mul-double v2, v0, v0

    .line 9
    .line 10
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 11
    .line 12
    mul-double/2addr v0, v4

    .line 13
    iget-wide v4, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 14
    .line 15
    mul-double/2addr v0, v4

    .line 16
    neg-double v2, v2

    .line 17
    float-to-double v4, p1

    .line 18
    mul-double/2addr v2, v4

    .line 19
    float-to-double p1, p2

    .line 20
    mul-double/2addr v0, p1

    .line 21
    sub-double/2addr v2, v0

    .line 22
    double-to-float p1, v2

    .line 23
    return p1
.end method

.method public getDampingRatio()F
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getFinalPosition()F
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 2
    .line 3
    double-to-float v0, v0

    .line 4
    return v0
.end method

.method public getStiffness()F
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 2
    .line 3
    mul-double/2addr v0, v0

    .line 4
    double-to-float v0, v0

    .line 5
    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .registers 7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    float-to-double v0, p2

    .line 6
    iget-wide v2, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 7
    .line 8
    cmpg-double p2, v0, v2

    .line 9
    .line 10
    if-gez p2, :cond_1d

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-double p1, p1

    .line 22
    iget-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 23
    .line 24
    cmpg-double p1, p1, v0

    .line 25
    .line 26
    if-gez p1, :cond_1d

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_c

    .line 5
    .line 6
    float-to-double v0, p1

    .line 7
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_c
    const-string p1, "Damping ratio must be non-negative"

    .line 14
    .line 15
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4

    .line 1
    float-to-double v0, p1

    .line 2
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 3
    .line 4
    return-object p0
.end method

.method public setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;
    .registers 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_10

    .line 5
    .line 6
    float-to-double v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mInitialized:Z

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    const-string p1, "Spring stiffness constant must be positive."

    .line 18
    .line 19
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public setValueThreshold(D)V
    .registers 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mValueThreshold:D

    .line 6
    .line 7
    const-wide v0, 0x404f400000000000L    # 62.5

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    mul-double/2addr p1, v0

    .line 13
    iput-wide p1, p0, Landroidx/dynamicanimation/animation/SpringForce;->mVelocityThreshold:D

    .line 14
    .line 15
    return-void
.end method

.method public updateValues(DDJ)Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;->init()V

    .line 4
    .line 5
    .line 6
    move-wide/from16 v1, p5

    .line 7
    .line 8
    long-to-double v1, v1

    .line 9
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-double/2addr v1, v3

    .line 15
    iget-wide v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 16
    .line 17
    sub-double v3, p1, v3

    .line 18
    .line 19
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 20
    .line 21
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 22
    .line 23
    cmpl-double v9, v5, v7

    .line 24
    .line 25
    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    if-lez v9, :cond_56

    .line 31
    .line 32
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 33
    .line 34
    mul-double v7, v5, v3

    .line 35
    .line 36
    sub-double v7, v7, p3

    .line 37
    .line 38
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 39
    .line 40
    sub-double v14, v5, v12

    .line 41
    .line 42
    div-double/2addr v7, v14

    .line 43
    sub-double v7, v3, v7

    .line 44
    .line 45
    mul-double/2addr v3, v5

    .line 46
    sub-double v3, v3, p3

    .line 47
    .line 48
    sub-double v12, v5, v12

    .line 49
    .line 50
    div-double/2addr v3, v12

    .line 51
    mul-double/2addr v5, v1

    .line 52
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    mul-double/2addr v5, v7

    .line 57
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 58
    .line 59
    mul-double/2addr v12, v1

    .line 60
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v12

    .line 64
    mul-double/2addr v12, v3

    .line 65
    add-double/2addr v12, v5

    .line 66
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaMinus:D

    .line 67
    .line 68
    mul-double/2addr v7, v5

    .line 69
    mul-double/2addr v5, v1

    .line 70
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    mul-double/2addr v5, v7

    .line 75
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mGammaPlus:D

    .line 76
    .line 77
    mul-double/2addr v3, v7

    .line 78
    mul-double/2addr v7, v1

    .line 79
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    mul-double/2addr v1, v3

    .line 84
    add-double/2addr v1, v5

    .line 85
    goto/16 :goto_d2

    .line 86
    .line 87
    :cond_56
    cmpl-double v9, v5, v7

    .line 88
    .line 89
    if-nez v9, :cond_81

    .line 90
    .line 91
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 92
    .line 93
    mul-double v7, v5, v3

    .line 94
    .line 95
    add-double v7, v7, p3

    .line 96
    .line 97
    mul-double v12, v7, v1

    .line 98
    .line 99
    add-double/2addr v12, v3

    .line 100
    neg-double v3, v5

    .line 101
    mul-double/2addr v3, v1

    .line 102
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    mul-double/2addr v3, v12

    .line 107
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 108
    .line 109
    neg-double v5, v5

    .line 110
    mul-double/2addr v5, v1

    .line 111
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 112
    .line 113
    .line 114
    move-result-wide v5

    .line 115
    mul-double/2addr v5, v12

    .line 116
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 117
    .line 118
    neg-double v14, v12

    .line 119
    mul-double/2addr v5, v14

    .line 120
    neg-double v12, v12

    .line 121
    mul-double/2addr v12, v1

    .line 122
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    mul-double/2addr v1, v7

    .line 127
    add-double/2addr v1, v5

    .line 128
    move-wide v12, v3

    .line 129
    goto :goto_d2

    .line 130
    :cond_81
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 131
    .line 132
    div-double/2addr v7, v12

    .line 133
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 134
    .line 135
    mul-double v14, v5, v12

    .line 136
    .line 137
    mul-double/2addr v14, v3

    .line 138
    add-double v14, v14, p3

    .line 139
    .line 140
    mul-double/2addr v14, v7

    .line 141
    neg-double v5, v5

    .line 142
    mul-double/2addr v5, v12

    .line 143
    mul-double/2addr v5, v1

    .line 144
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 145
    .line 146
    .line 147
    move-result-wide v5

    .line 148
    iget-wide v7, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 149
    .line 150
    mul-double/2addr v7, v1

    .line 151
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v7

    .line 155
    mul-double/2addr v7, v3

    .line 156
    iget-wide v12, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 157
    .line 158
    mul-double/2addr v12, v1

    .line 159
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    .line 160
    .line 161
    .line 162
    move-result-wide v12

    .line 163
    mul-double/2addr v12, v14

    .line 164
    add-double/2addr v12, v7

    .line 165
    mul-double/2addr v12, v5

    .line 166
    iget-wide v5, v0, Landroidx/dynamicanimation/animation/SpringForce;->mNaturalFreq:D

    .line 167
    .line 168
    neg-double v7, v5

    .line 169
    mul-double/2addr v7, v12

    .line 170
    iget-wide v10, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    .line 171
    .line 172
    mul-double/2addr v7, v10

    .line 173
    neg-double v9, v10

    .line 174
    mul-double/2addr v9, v5

    .line 175
    mul-double/2addr v9, v1

    .line 176
    const-wide v5, 0x4005bf0a8b145769L    # Math.E

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 182
    .line 183
    .line 184
    move-result-wide v5

    .line 185
    iget-wide v9, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 186
    .line 187
    move-wide/from16 p5, v1

    .line 188
    .line 189
    neg-double v1, v9

    .line 190
    mul-double/2addr v1, v3

    .line 191
    mul-double v9, v9, p5

    .line 192
    .line 193
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 194
    .line 195
    .line 196
    move-result-wide v3

    .line 197
    mul-double/2addr v3, v1

    .line 198
    iget-wide v1, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampedFreq:D

    .line 199
    .line 200
    mul-double/2addr v14, v1

    .line 201
    mul-double v1, v1, p5

    .line 202
    .line 203
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 204
    .line 205
    .line 206
    move-result-wide v1

    .line 207
    mul-double/2addr v1, v14

    .line 208
    add-double/2addr v1, v3

    .line 209
    mul-double/2addr v1, v5

    .line 210
    add-double/2addr v1, v7

    .line 211
    :goto_d2
    iget-object v3, v0, Landroidx/dynamicanimation/animation/SpringForce;->mMassState:Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;

    .line 212
    .line 213
    iget-wide v4, v0, Landroidx/dynamicanimation/animation/SpringForce;->mFinalPosition:D

    .line 214
    .line 215
    add-double/2addr v12, v4

    .line 216
    double-to-float v4, v12

    .line 217
    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mValue:F

    .line 218
    .line 219
    double-to-float v1, v1

    .line 220
    iput v1, v3, Landroidx/dynamicanimation/animation/DynamicAnimation$MassState;->mVelocity:F

    .line 221
    .line 222
    return-object v3
.end method
