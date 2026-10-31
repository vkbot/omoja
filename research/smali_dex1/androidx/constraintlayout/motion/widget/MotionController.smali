.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field static final BOUNCE:I = 0x4

.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field static final LINEAR:I = 0x3

.field static final OVERSHOOT:I = 0x5

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field mAttributeTable:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field mCurrentCenterX:F

.field mCurrentCenterY:F

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mForceMeasure:Z

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMaxDimension:I

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mTempRect:Landroid/graphics/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroid/view/View;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 16
    .line 17
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 18
    .line 19
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 23
    .line 24
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 25
    .line 26
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 30
    .line 31
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 32
    .line 33
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 37
    .line 38
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 39
    .line 40
    invoke-direct {v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 44
    .line 45
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 46
    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 51
    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMaxDimension:I

    .line 58
    .line 59
    new-array v2, v2, [F

    .line 60
    .line 61
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 62
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    new-array v2, v2, [F

    .line 72
    .line 73
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 74
    .line 75
    new-instance v2, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 81
    .line 82
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 83
    .line 84
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 85
    .line 86
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 90
    .line 91
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 92
    .line 93
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 94
    .line 95
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    .line 97
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .registers 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p2, :cond_9

    .line 6
    .line 7
    aput v1, p2, v2

    .line 8
    .line 9
    goto :goto_28

    .line 10
    :cond_9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 11
    .line 12
    float-to-double v4, v3

    .line 13
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 14
    .line 15
    cmpl-double v4, v4, v6

    .line 16
    .line 17
    if-eqz v4, :cond_28

    .line 18
    .line 19
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 20
    .line 21
    cmpg-float v5, p1, v4

    .line 22
    .line 23
    if-gez v5, :cond_19

    .line 24
    .line 25
    move p1, v0

    .line 26
    :cond_19
    cmpl-float v5, p1, v4

    .line 27
    .line 28
    if-lez v5, :cond_28

    .line 29
    .line 30
    float-to-double v8, p1

    .line 31
    cmpg-double v5, v8, v6

    .line 32
    .line 33
    if-gez v5, :cond_28

    .line 34
    .line 35
    sub-float/2addr p1, v4

    .line 36
    mul-float/2addr p1, v3

    .line 37
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :cond_28
    :goto_28
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 52
    .line 53
    move v7, v2

    .line 54
    :cond_35
    :goto_35
    if-ge v7, v5, :cond_55

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 61
    .line 62
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 63
    .line 64
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 65
    .line 66
    if-eqz v9, :cond_35

    .line 67
    .line 68
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 69
    .line 70
    cmpg-float v11, v10, p1

    .line 71
    .line 72
    if-gez v11, :cond_4c

    .line 73
    .line 74
    move-object v3, v9

    .line 75
    move v0, v10

    .line 76
    goto :goto_35

    .line 77
    :cond_4c
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_35

    .line 82
    .line 83
    iget v6, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 84
    .line 85
    goto :goto_35

    .line 86
    :cond_55
    if-eqz v3, :cond_73

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5e

    .line 93
    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    move v1, v6

    .line 96
    :goto_5f
    sub-float/2addr p1, v0

    .line 97
    sub-float/2addr v1, v0

    .line 98
    div-float/2addr p1, v1

    .line 99
    float-to-double v4, p1

    .line 100
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v6

    .line 104
    double-to-float p1, v6

    .line 105
    mul-float/2addr p1, v1

    .line 106
    add-float/2addr p1, v0

    .line 107
    if-eqz p2, :cond_73

    .line 108
    .line 109
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    double-to-float v0, v0

    .line 114
    aput v0, p2, v2

    .line 115
    .line 116
    :cond_73
    return p1
.end method

.method private static getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;
    .registers 5

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_3e

    .line 3
    .line 4
    const/4 p0, -0x1

    .line 5
    if-eq p1, p0, :cond_34

    .line 6
    .line 7
    if-eqz p1, :cond_2e

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    if-eq p1, p0, :cond_28

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-eq p1, p0, :cond_22

    .line 14
    .line 15
    const/4 p0, 0x4

    .line 16
    if-eq p1, p0, :cond_1c

    .line 17
    .line 18
    const/4 p0, 0x5

    .line 19
    if-eq p1, p0, :cond_16

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_16
    new-instance p0, Landroid/view/animation/OvershootInterpolator;

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1c
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_22
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 36
    .line 37
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_28
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    .line 42
    .line 43
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2e
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 48
    .line 49
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_34
    invoke-static {p2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionController$1;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionController$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_3e
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method private getPreCycleDistance()F
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v7, v1, [F

    .line 5
    .line 6
    const/16 v1, 0x63

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    const/high16 v9, 0x3f800000    # 1.0f

    .line 10
    .line 11
    div-float v1, v9, v1

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    move-wide v12, v2

    .line 16
    move-wide v14, v12

    .line 17
    const/4 v2, 0x0

    .line 18
    const/16 v16, 0x0

    .line 19
    .line 20
    :goto_13
    const/16 v3, 0x64

    .line 21
    .line 22
    if-ge v2, v3, :cond_ab

    .line 23
    .line 24
    int-to-float v3, v2

    .line 25
    mul-float/2addr v3, v1

    .line 26
    float-to-double v4, v3

    .line 27
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 28
    .line 29
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 30
    .line 31
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 38
    .line 39
    const/4 v10, 0x0

    .line 40
    const/16 v18, 0x0

    .line 41
    .line 42
    :goto_29
    if-ge v10, v9, :cond_57

    .line 43
    .line 44
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v19

    .line 48
    add-int/lit8 v10, v10, 0x1

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    move-object/from16 v11, v19

    .line 53
    .line 54
    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 55
    .line 56
    move/from16 v19, v1

    .line 57
    .line 58
    iget-object v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 59
    .line 60
    if-eqz v1, :cond_54

    .line 61
    .line 62
    move-object/from16 v21, v1

    .line 63
    .line 64
    iget v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 65
    .line 66
    cmpg-float v22, v1, v3

    .line 67
    .line 68
    if-gez v22, :cond_4a

    .line 69
    .line 70
    move/from16 v18, v1

    .line 71
    .line 72
    move-object/from16 v6, v21

    .line 73
    .line 74
    goto :goto_54

    .line 75
    :cond_4a
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_54

    .line 80
    .line 81
    iget v1, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 82
    .line 83
    move/from16 v17, v1

    .line 84
    .line 85
    :cond_54
    :goto_54
    move/from16 v1, v19

    .line 86
    .line 87
    goto :goto_29

    .line 88
    :cond_57
    move/from16 v19, v1

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    if-eqz v6, :cond_76

    .line 93
    .line 94
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_65

    .line 99
    .line 100
    const/high16 v17, 0x3f800000    # 1.0f

    .line 101
    .line 102
    :cond_65
    sub-float v3, v3, v18

    .line 103
    .line 104
    sub-float v17, v17, v18

    .line 105
    .line 106
    div-float v3, v3, v17

    .line 107
    .line 108
    float-to-double v3, v3

    .line 109
    invoke-virtual {v6, v3, v4}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    double-to-float v1, v3

    .line 114
    mul-float v1, v1, v17

    .line 115
    .line 116
    add-float v1, v1, v18

    .line 117
    .line 118
    float-to-double v4, v1

    .line 119
    :cond_76
    move-wide v3, v4

    .line 120
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 121
    .line 122
    aget-object v1, v1, v20

    .line 123
    .line 124
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 125
    .line 126
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 127
    .line 128
    .line 129
    move v11, v2

    .line 130
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 131
    .line 132
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 133
    .line 134
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 138
    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    if-lez v11, :cond_9d

    .line 142
    .line 143
    aget v2, v7, v1

    .line 144
    .line 145
    float-to-double v2, v2

    .line 146
    sub-double/2addr v14, v2

    .line 147
    aget v2, v7, v20

    .line 148
    .line 149
    float-to-double v2, v2

    .line 150
    sub-double/2addr v12, v2

    .line 151
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    .line 152
    .line 153
    .line 154
    move-result-wide v2

    .line 155
    double-to-float v2, v2

    .line 156
    add-float v16, v16, v2

    .line 157
    .line 158
    :cond_9d
    aget v2, v7, v20

    .line 159
    .line 160
    float-to-double v12, v2

    .line 161
    aget v1, v7, v1

    .line 162
    .line 163
    float-to-double v14, v1

    .line 164
    add-int/lit8 v2, v11, 0x1

    .line 165
    .line 166
    move/from16 v1, v19

    .line 167
    .line 168
    const/high16 v9, 0x3f800000    # 1.0f

    .line 169
    .line 170
    goto/16 :goto_13

    .line 171
    .line 172
    :cond_ab
    return v16
.end method

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_22

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, " KeyPath position \""

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "\" outside of range"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "MotionController"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_22
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 36
    .line 37
    neg-int v0, v0

    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    int-to-float v1, v1

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addKeys(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public buildBounds([FI)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int/lit8 v2, v1, -0x1

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    div-float v2, v3, v2

    .line 11
    .line 12
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 13
    .line 14
    const-string v5, "translationX"

    .line 15
    .line 16
    if-nez v4, :cond_12

    .line 17
    .line 18
    goto :goto_18

    .line 19
    :cond_12
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 24
    .line 25
    :goto_18
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 26
    .line 27
    const-string v6, "translationY"

    .line 28
    .line 29
    if-nez v4, :cond_1f

    .line 30
    .line 31
    goto :goto_25

    .line 32
    :cond_1f
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 37
    .line 38
    :goto_25
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 39
    .line 40
    if-nez v4, :cond_2a

    .line 41
    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 48
    .line 49
    :goto_30
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 50
    .line 51
    if-nez v4, :cond_35

    .line 52
    .line 53
    goto :goto_3b

    .line 54
    :cond_35
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 59
    .line 60
    :goto_3b
    const/4 v5, 0x0

    .line 61
    :goto_3c
    if-ge v5, v1, :cond_d2

    .line 62
    .line 63
    int-to-float v6, v5

    .line 64
    mul-float/2addr v6, v2

    .line 65
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 66
    .line 67
    cmpl-float v8, v7, v3

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    if-eqz v8, :cond_5f

    .line 71
    .line 72
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 73
    .line 74
    cmpg-float v10, v6, v8

    .line 75
    .line 76
    if-gez v10, :cond_4e

    .line 77
    .line 78
    move v6, v9

    .line 79
    :cond_4e
    cmpl-float v10, v6, v8

    .line 80
    .line 81
    if-lez v10, :cond_5f

    .line 82
    .line 83
    float-to-double v10, v6

    .line 84
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 85
    .line 86
    cmpg-double v10, v10, v12

    .line 87
    .line 88
    if-gez v10, :cond_5f

    .line 89
    .line 90
    sub-float/2addr v6, v8

    .line 91
    mul-float/2addr v6, v7

    .line 92
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    :cond_5f
    float-to-double v7, v6

    .line 97
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 98
    .line 99
    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 100
    .line 101
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    const/high16 v13, 0x7fc00000    # Float.NaN

    .line 108
    .line 109
    const/4 v14, 0x0

    .line 110
    :goto_6d
    if-ge v14, v12, :cond_92

    .line 111
    .line 112
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    add-int/lit8 v14, v14, 0x1

    .line 117
    .line 118
    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 119
    .line 120
    iget-object v3, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 121
    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    if-eqz v3, :cond_8f

    .line 125
    .line 126
    iget v4, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 127
    .line 128
    cmpg-float v17, v4, v6

    .line 129
    .line 130
    if-gez v17, :cond_86

    .line 131
    .line 132
    move-object v10, v3

    .line 133
    move v9, v4

    .line 134
    goto :goto_8f

    .line 135
    :cond_86
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_8f

    .line 140
    .line 141
    iget v3, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 142
    .line 143
    move v13, v3

    .line 144
    :cond_8f
    :goto_8f
    const/high16 v3, 0x3f800000    # 1.0f

    .line 145
    .line 146
    goto :goto_6d

    .line 147
    :cond_92
    const/16 v16, 0x0

    .line 148
    .line 149
    if-eqz v10, :cond_aa

    .line 150
    .line 151
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_9e

    .line 156
    .line 157
    const/high16 v13, 0x3f800000    # 1.0f

    .line 158
    .line 159
    :cond_9e
    sub-float/2addr v6, v9

    .line 160
    sub-float/2addr v13, v9

    .line 161
    div-float/2addr v6, v13

    .line 162
    float-to-double v3, v6

    .line 163
    invoke-virtual {v10, v3, v4}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    double-to-float v3, v3

    .line 168
    mul-float/2addr v3, v13

    .line 169
    add-float/2addr v3, v9

    .line 170
    float-to-double v7, v3

    .line 171
    :cond_aa
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 172
    .line 173
    aget-object v3, v3, v16

    .line 174
    .line 175
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 176
    .line 177
    invoke-virtual {v3, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 178
    .line 179
    .line 180
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 181
    .line 182
    if-eqz v3, :cond_bf

    .line 183
    .line 184
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 185
    .line 186
    array-length v6, v4

    .line 187
    if-lez v6, :cond_bf

    .line 188
    .line 189
    invoke-virtual {v3, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 190
    .line 191
    .line 192
    :cond_bf
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 193
    .line 194
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 195
    .line 196
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 197
    .line 198
    mul-int/lit8 v7, v5, 0x2

    .line 199
    .line 200
    move-object/from16 v8, p1

    .line 201
    .line 202
    invoke-virtual {v3, v4, v6, v8, v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v5, v5, 0x1

    .line 206
    .line 207
    const/high16 v3, 0x3f800000    # 1.0f

    .line 208
    .line 209
    goto/16 :goto_3c

    .line 210
    .line 211
    :cond_d2
    return-void
.end method

.method public buildKeyBounds([F[I)I
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_48

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 5
    .line 6
    aget-object v1, v1, v0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz p2, :cond_27

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    move v4, v0

    .line 21
    move v5, v4

    .line 22
    :goto_15
    if-ge v5, v3, :cond_27

    .line 23
    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 31
    .line 32
    add-int/lit8 v7, v4, 0x1

    .line 33
    .line 34
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 35
    .line 36
    aput v6, p2, v4

    .line 37
    .line 38
    move v4, v7

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    move p2, v0

    .line 41
    move v2, p2

    .line 42
    :goto_29
    array-length v3, v1

    .line 43
    if-ge p2, v3, :cond_45

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 46
    .line 47
    aget-object v3, v3, v0

    .line 48
    .line 49
    aget-wide v4, v1, p2

    .line 50
    .line 51
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 59
    .line 60
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x2

    .line 66
    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    .line 69
    goto :goto_29

    .line 70
    :cond_45
    div-int/lit8 v2, v2, 0x2

    .line 71
    .line 72
    return v2

    .line 73
    :cond_48
    return v0
.end method

.method public buildKeyFrames([F[I)I
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4b

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 5
    .line 6
    aget-object v1, v1, v0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz p2, :cond_27

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    move v4, v0

    .line 21
    move v5, v4

    .line 22
    :goto_15
    if-ge v5, v3, :cond_27

    .line 23
    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    add-int/lit8 v5, v5, 0x1

    .line 29
    .line 30
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 31
    .line 32
    add-int/lit8 v7, v4, 0x1

    .line 33
    .line 34
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 35
    .line 36
    aput v6, p2, v4

    .line 37
    .line 38
    move v4, v7

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    move p2, v0

    .line 41
    move v8, p2

    .line 42
    :goto_29
    array-length v2, v1

    .line 43
    if-ge p2, v2, :cond_48

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 46
    .line 47
    aget-object v2, v2, v0

    .line 48
    .line 49
    aget-wide v3, v1, p2

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 57
    .line 58
    aget-wide v3, v1, p2

    .line 59
    .line 60
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 61
    .line 62
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 63
    .line 64
    move-object v7, p1

    .line 65
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v8, v8, 0x2

    .line 69
    .line 70
    add-int/lit8 p2, p2, 0x1

    .line 71
    .line 72
    goto :goto_29

    .line 73
    :cond_48
    div-int/lit8 v8, v8, 0x2

    .line 74
    .line 75
    return v8

    .line 76
    :cond_4b
    return v0
.end method

.method public buildPath([FI)V
    .registers 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int/lit8 v2, v1, -0x1

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    div-float v2, v3, v2

    .line 11
    .line 12
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 13
    .line 14
    const-string v5, "translationX"

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-nez v4, :cond_14

    .line 18
    .line 19
    move-object v4, v6

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 26
    .line 27
    :goto_1a
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 28
    .line 29
    const-string v8, "translationY"

    .line 30
    .line 31
    if-nez v7, :cond_22

    .line 32
    .line 33
    move-object v7, v6

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 40
    .line 41
    :goto_28
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 42
    .line 43
    if-nez v9, :cond_2e

    .line 44
    .line 45
    move-object v5, v6

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 52
    .line 53
    :goto_34
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 54
    .line 55
    if-nez v9, :cond_39

    .line 56
    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 63
    .line 64
    :goto_3f
    const/4 v9, 0x0

    .line 65
    :goto_40
    if-ge v9, v1, :cond_122

    .line 66
    .line 67
    int-to-float v10, v9

    .line 68
    mul-float/2addr v10, v2

    .line 69
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 70
    .line 71
    cmpl-float v12, v11, v3

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    if-eqz v12, :cond_63

    .line 75
    .line 76
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 77
    .line 78
    cmpg-float v14, v10, v12

    .line 79
    .line 80
    if-gez v14, :cond_52

    .line 81
    .line 82
    move v10, v13

    .line 83
    :cond_52
    cmpl-float v14, v10, v12

    .line 84
    .line 85
    if-lez v14, :cond_63

    .line 86
    .line 87
    float-to-double v14, v10

    .line 88
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 89
    .line 90
    cmpg-double v14, v14, v16

    .line 91
    .line 92
    if-gez v14, :cond_63

    .line 93
    .line 94
    sub-float/2addr v10, v12

    .line 95
    mul-float/2addr v10, v11

    .line 96
    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    :cond_63
    float-to-double v11, v10

    .line 101
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 102
    .line 103
    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 104
    .line 105
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/high16 v17, 0x7fc00000    # Float.NaN

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    :goto_73
    if-ge v8, v3, :cond_a0

    .line 117
    .line 118
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v19

    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 123
    .line 124
    move-object/from16 v1, v19

    .line 125
    .line 126
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 127
    .line 128
    move/from16 v19, v2

    .line 129
    .line 130
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 131
    .line 132
    if-eqz v2, :cond_9b

    .line 133
    .line 134
    move-object/from16 v20, v2

    .line 135
    .line 136
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 137
    .line 138
    cmpg-float v21, v2, v10

    .line 139
    .line 140
    if-gez v21, :cond_91

    .line 141
    .line 142
    move v13, v2

    .line 143
    move-object/from16 v14, v20

    .line 144
    .line 145
    goto :goto_9b

    .line 146
    :cond_91
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_9b

    .line 151
    .line 152
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 153
    .line 154
    move/from16 v17, v1

    .line 155
    .line 156
    :cond_9b
    :goto_9b
    move/from16 v1, p2

    .line 157
    .line 158
    move/from16 v2, v19

    .line 159
    .line 160
    goto :goto_73

    .line 161
    :cond_a0
    move/from16 v19, v2

    .line 162
    .line 163
    if-eqz v14, :cond_bc

    .line 164
    .line 165
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_ac

    .line 170
    .line 171
    const/high16 v17, 0x3f800000    # 1.0f

    .line 172
    .line 173
    :cond_ac
    sub-float v1, v10, v13

    .line 174
    .line 175
    sub-float v17, v17, v13

    .line 176
    .line 177
    div-float v1, v1, v17

    .line 178
    .line 179
    float-to-double v1, v1

    .line 180
    invoke-virtual {v14, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    double-to-float v1, v1

    .line 185
    mul-float v1, v1, v17

    .line 186
    .line 187
    add-float/2addr v1, v13

    .line 188
    float-to-double v11, v1

    .line 189
    :cond_bc
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 190
    .line 191
    aget-object v1, v1, v18

    .line 192
    .line 193
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 194
    .line 195
    invoke-virtual {v1, v11, v12, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 199
    .line 200
    if-eqz v1, :cond_d1

    .line 201
    .line 202
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 203
    .line 204
    array-length v3, v2

    .line 205
    if-lez v3, :cond_d1

    .line 206
    .line 207
    invoke-virtual {v1, v11, v12, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 208
    .line 209
    .line 210
    :cond_d1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 211
    .line 212
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 213
    .line 214
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 215
    .line 216
    mul-int/lit8 v26, v9, 0x2

    .line 217
    .line 218
    move-object/from16 v25, p1

    .line 219
    .line 220
    move-object/from16 v20, v1

    .line 221
    .line 222
    move-object/from16 v23, v2

    .line 223
    .line 224
    move-object/from16 v24, v3

    .line 225
    .line 226
    move-wide/from16 v21, v11

    .line 227
    .line 228
    invoke-virtual/range {v20 .. v26}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 229
    .line 230
    .line 231
    if-eqz v5, :cond_f2

    .line 232
    .line 233
    aget v1, p1, v26

    .line 234
    .line 235
    invoke-virtual {v5, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    add-float/2addr v2, v1

    .line 240
    aput v2, p1, v26

    .line 241
    .line 242
    goto :goto_fd

    .line 243
    :cond_f2
    if-eqz v4, :cond_fd

    .line 244
    .line 245
    aget v1, p1, v26

    .line 246
    .line 247
    invoke-virtual {v4, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    add-float/2addr v2, v1

    .line 252
    aput v2, p1, v26

    .line 253
    .line 254
    :cond_fd
    :goto_fd
    if-eqz v6, :cond_10b

    .line 255
    .line 256
    add-int/lit8 v26, v26, 0x1

    .line 257
    .line 258
    aget v1, p1, v26

    .line 259
    .line 260
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    add-float/2addr v2, v1

    .line 265
    aput v2, p1, v26

    .line 266
    .line 267
    goto :goto_118

    .line 268
    :cond_10b
    if-eqz v7, :cond_118

    .line 269
    .line 270
    add-int/lit8 v26, v26, 0x1

    .line 271
    .line 272
    aget v1, p1, v26

    .line 273
    .line 274
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    add-float/2addr v2, v1

    .line 279
    aput v2, p1, v26

    .line 280
    .line 281
    :cond_118
    :goto_118
    add-int/lit8 v9, v9, 0x1

    .line 282
    .line 283
    move/from16 v1, p2

    .line 284
    .line 285
    move/from16 v2, v19

    .line 286
    .line 287
    const/high16 v3, 0x3f800000    # 1.0f

    .line 288
    .line 289
    goto/16 :goto_40

    .line 290
    .line 291
    :cond_122
    return-void
.end method

.method public buildRect(F[FI)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    float-to-double v1, p1

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public buildRectangles([FI)V
    .registers 10

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    div-float/2addr v1, v0

    .line 7
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_8
    if-ge v2, p2, :cond_29

    .line 10
    .line 11
    int-to-float v3, v2

    .line 12
    mul-float/2addr v3, v1

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 19
    .line 20
    aget-object v4, v4, v0

    .line 21
    .line 22
    float-to-double v5, v3

    .line 23
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 24
    .line 25
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 29
    .line 30
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 31
    .line 32
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 33
    .line 34
    mul-int/lit8 v6, v2, 0x8

    .line 35
    .line 36
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_8

    .line 42
    :cond_29
    return-void
.end method

.method public endTrigger(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "button"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_29

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 16
    .line 17
    if-eqz v0, :cond_29

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-ge v0, v2, :cond_29

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    if-eqz p1, :cond_1f

    .line 28
    .line 29
    const/high16 v2, -0x3d380000    # -100.0f

    .line 30
    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/high16 v2, 0x42c80000    # 100.0f

    .line 33
    .line 34
    :goto_21
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_13

    .line 42
    :cond_29
    return-void
.end method

.method public getAnimateRelativeTo()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 4
    .line 5
    return v0
.end method

.method public getAttributeValues(Ljava/lang/String;[FI)I
    .registers 5

    .line 1
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 8
    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p3, 0x0

    .line 14
    :goto_d
    array-length v0, p2

    .line 15
    if-ge p3, v0, :cond_1f

    .line 16
    .line 17
    array-length v0, p2

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    div-int v0, p3, v0

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    aput v0, p2, p3

    .line 28
    .line 29
    add-int/lit8 p3, p3, 0x1

    .line 30
    .line 31
    goto :goto_d

    .line 32
    :cond_1f
    array-length p1, p2

    .line 33
    return p1
.end method

.method public getCenter(D[F[F)V
    .registers 14

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v5, v0, [D

    .line 3
    .line 4
    new-array v7, v0, [D

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 15
    .line 16
    aget-object v0, v0, v1

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 28
    .line 29
    move-wide v2, p1

    .line 30
    move-object v6, p3

    .line 31
    move-object v8, p4

    .line 32
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[F[D[F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public getCenterX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterX:F

    .line 2
    .line 3
    return v0
.end method

.method public getCenterY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurrentCenterY:F

    .line 2
    .line 3
    return v0
.end method

.method public getDpDt(FFF[F)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_5d

    .line 11
    .line 12
    aget-object v0, v0, v1

    .line 13
    .line 14
    float-to-double v2, p1

    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 21
    .line 22
    aget-object p1, p1, v1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 30
    .line 31
    aget p1, p1, v1

    .line 32
    .line 33
    :goto_20
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 34
    .line 35
    array-length v0, v9

    .line 36
    if-ge v1, v0, :cond_2e

    .line 37
    .line 38
    aget-wide v4, v9, v1

    .line 39
    .line 40
    float-to-double v6, p1

    .line 41
    mul-double/2addr v4, v6

    .line 42
    aput-wide v4, v9, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_20

    .line 47
    :cond_2e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 48
    .line 49
    if-eqz p1, :cond_50

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 52
    .line 53
    array-length v1, v0

    .line 54
    if-lez v1, :cond_4f

    .line 55
    .line 56
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 62
    .line 63
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 67
    .line 68
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 69
    .line 70
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 71
    .line 72
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 73
    .line 74
    move v5, p2

    .line 75
    move v6, p3

    .line 76
    move-object v7, p4

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 78
    .line 79
    .line 80
    :cond_4f
    return-void

    .line 81
    :cond_50
    move v5, p2

    .line 82
    move v6, p3

    .line 83
    move-object v7, p4

    .line 84
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 85
    .line 86
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 87
    .line 88
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 89
    .line 90
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5d
    move v5, p2

    .line 95
    move v6, p3

    .line 96
    move-object v7, p4

    .line 97
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 98
    .line 99
    iget p2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 100
    .line 101
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 102
    .line 103
    iget p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 104
    .line 105
    sub-float/2addr p2, p4

    .line 106
    iget p4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 107
    .line 108
    iget v0, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 109
    .line 110
    sub-float/2addr p4, v0

    .line 111
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 112
    .line 113
    iget v2, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 114
    .line 115
    sub-float/2addr v0, v2

    .line 116
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 117
    .line 118
    iget p3, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 119
    .line 120
    sub-float/2addr p1, p3

    .line 121
    add-float/2addr v0, p2

    .line 122
    add-float/2addr p1, p4

    .line 123
    const/high16 p3, 0x3f800000    # 1.0f

    .line 124
    .line 125
    sub-float v2, p3, v5

    .line 126
    .line 127
    mul-float/2addr v2, p2

    .line 128
    mul-float/2addr v0, v5

    .line 129
    add-float/2addr v0, v2

    .line 130
    aput v0, v7, v1

    .line 131
    .line 132
    sub-float/2addr p3, v6

    .line 133
    mul-float/2addr p3, p4

    .line 134
    mul-float/2addr p1, v6

    .line 135
    add-float/2addr p1, p3

    .line 136
    const/4 p2, 0x1

    .line 137
    aput p1, v7, p2

    .line 138
    .line 139
    return-void
.end method

.method public getDrawPath()I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_b
    if-ge v3, v2, :cond_1c

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 21
    .line 22
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 23
    .line 24
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_b

    .line 29
    :cond_1c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 30
    .line 31
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public getFinalHeight()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 4
    .line 5
    return v0
.end method

.method public getFinalWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 4
    .line 5
    return v0
.end method

.method public getFinalX()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 4
    .line 5
    return v0
.end method

.method public getFinalY()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 4
    .line 5
    return v0
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 8
    .line 9
    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v8, v2, [F

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v10

    .line 14
    const/4 v11, 0x0

    .line 15
    move v3, v11

    .line 16
    move v12, v3

    .line 17
    move v13, v12

    .line 18
    :goto_11
    if-ge v3, v10, :cond_88

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    add-int/lit8 v14, v3, 0x1

    .line 25
    .line 26
    move-object v15, v4

    .line 27
    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    .line 28
    .line 29
    iget v3, v15, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    .line 30
    .line 31
    if-eq v3, v1, :cond_25

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    if-ne v1, v4, :cond_25

    .line 35
    .line 36
    :goto_23
    move v3, v14

    .line 37
    goto :goto_11

    .line 38
    :cond_25
    aput v11, p2, v13

    .line 39
    .line 40
    add-int/lit8 v4, v13, 0x1

    .line 41
    .line 42
    aput v3, p2, v4

    .line 43
    .line 44
    add-int/lit8 v3, v13, 0x2

    .line 45
    .line 46
    iget v4, v15, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 47
    .line 48
    aput v4, p2, v3

    .line 49
    .line 50
    int-to-float v3, v4

    .line 51
    const/high16 v4, 0x42c80000    # 100.0f

    .line 52
    .line 53
    div-float/2addr v3, v4

    .line 54
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 55
    .line 56
    aget-object v4, v4, v11

    .line 57
    .line 58
    float-to-double v5, v3

    .line 59
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 60
    .line 61
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 65
    .line 66
    move-wide v4, v5

    .line 67
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 68
    .line 69
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v13, 0x3

    .line 76
    .line 77
    aget v4, v8, v11

    .line 78
    .line 79
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    aput v4, p2, v3

    .line 84
    .line 85
    add-int/lit8 v3, v13, 0x4

    .line 86
    .line 87
    const/4 v4, 0x1

    .line 88
    aget v5, v8, v4

    .line 89
    .line 90
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    aput v5, p2, v3

    .line 95
    .line 96
    instance-of v5, v15, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 97
    .line 98
    if-eqz v5, :cond_7f

    .line 99
    .line 100
    check-cast v15, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 101
    .line 102
    add-int/lit8 v3, v13, 0x5

    .line 103
    .line 104
    iget v5, v15, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 105
    .line 106
    aput v5, p2, v3

    .line 107
    .line 108
    add-int/lit8 v3, v13, 0x6

    .line 109
    .line 110
    iget v5, v15, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 111
    .line 112
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    aput v5, p2, v3

    .line 117
    .line 118
    add-int/lit8 v3, v13, 0x7

    .line 119
    .line 120
    iget v5, v15, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 121
    .line 122
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    aput v5, p2, v3

    .line 127
    .line 128
    :cond_7f
    add-int/2addr v3, v4

    .line 129
    sub-int v4, v3, v13

    .line 130
    .line 131
    aput v4, p2, v13

    .line 132
    .line 133
    add-int/lit8 v12, v12, 0x1

    .line 134
    .line 135
    move v13, v3

    .line 136
    goto :goto_23

    .line 137
    :cond_88
    return v12
.end method

.method public getKeyFrameParameter(IFF)F
    .registers 14

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 6
    .line 7
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 8
    .line 9
    sub-float/2addr v1, v3

    .line 10
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 11
    .line 12
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 13
    .line 14
    sub-float/2addr v0, v4

    .line 15
    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 16
    .line 17
    const/high16 v6, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v5, v6

    .line 20
    add-float/2addr v5, v3

    .line 21
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 22
    .line 23
    div-float/2addr v2, v6

    .line 24
    add-float/2addr v2, v4

    .line 25
    float-to-double v3, v1

    .line 26
    float-to-double v6, v0

    .line 27
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    double-to-float v3, v3

    .line 32
    float-to-double v6, v3

    .line 33
    const-wide v8, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    cmpg-double v4, v6, v8

    .line 39
    .line 40
    if-gez v4, :cond_2c

    .line 41
    .line 42
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 43
    .line 44
    return p1

    .line 45
    :cond_2c
    sub-float/2addr p2, v5

    .line 46
    sub-float/2addr p3, v2

    .line 47
    float-to-double v4, p2

    .line 48
    float-to-double v6, p3

    .line 49
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    double-to-float v2, v4

    .line 54
    const/4 v4, 0x0

    .line 55
    cmpl-float v2, v2, v4

    .line 56
    .line 57
    if-nez v2, :cond_3b

    .line 58
    .line 59
    return v4

    .line 60
    :cond_3b
    mul-float v2, p2, v1

    .line 61
    .line 62
    mul-float v5, p3, v0

    .line 63
    .line 64
    add-float/2addr v5, v2

    .line 65
    if-eqz p1, :cond_64

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    if-eq p1, v2, :cond_5a

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    if-eq p1, v2, :cond_58

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    if-eq p1, v2, :cond_56

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    if-eq p1, v1, :cond_54

    .line 78
    .line 79
    const/4 p2, 0x5

    .line 80
    if-eq p1, p2, :cond_52

    .line 81
    .line 82
    return v4

    .line 83
    :cond_52
    div-float/2addr p3, v0

    .line 84
    return p3

    .line 85
    :cond_54
    div-float/2addr p2, v0

    .line 86
    return p2

    .line 87
    :cond_56
    div-float/2addr p3, v1

    .line 88
    return p3

    .line 89
    :cond_58
    div-float/2addr p2, v1

    .line 90
    return p2

    .line 91
    :cond_5a
    mul-float/2addr v3, v3

    .line 92
    mul-float/2addr v5, v5

    .line 93
    sub-float/2addr v3, v5

    .line 94
    float-to-double p1, v3

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide p1

    .line 99
    double-to-float p1, p1

    .line 100
    return p1

    .line 101
    :cond_64
    div-float/2addr v5, v3

    .line 102
    return v5
.end method

.method public getKeyFramePositions([I[F)I
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    move v10, v4

    .line 11
    :goto_a
    if-ge v4, v1, :cond_3c

    .line 12
    .line 13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    add-int/lit8 v11, v4, 0x1

    .line 18
    .line 19
    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    .line 20
    .line 21
    add-int/lit8 v12, v3, 0x1

    .line 22
    .line 23
    iget v4, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 24
    .line 25
    iget v5, v5, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    .line 26
    .line 27
    mul-int/lit16 v5, v5, 0x3e8

    .line 28
    .line 29
    add-int/2addr v5, v4

    .line 30
    aput v5, p1, v3

    .line 31
    .line 32
    int-to-float v3, v4

    .line 33
    const/high16 v4, 0x42c80000    # 100.0f

    .line 34
    .line 35
    div-float/2addr v3, v4

    .line 36
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 37
    .line 38
    aget-object v4, v4, v2

    .line 39
    .line 40
    float-to-double v5, v3

    .line 41
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 42
    .line 43
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 49
    .line 50
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 51
    .line 52
    move-object v9, p2

    .line 53
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter(D[I[D[FI)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x2

    .line 57
    .line 58
    move v4, v11

    .line 59
    move v3, v12

    .line 60
    goto :goto_a

    .line 61
    :cond_3c
    return v3
.end method

.method public getPos(D)[D
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 12
    .line 13
    if-eqz v0, :cond_16

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    if-lez v2, :cond_16

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 21
    .line 22
    .line 23
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 24
    .line 25
    return-object p1
.end method

.method public getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .registers 15

    .line 1
    new-instance v3, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 7
    .line 8
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 9
    .line 10
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 11
    .line 12
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 13
    .line 14
    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 17
    .line 18
    add-float/2addr v1, v4

    .line 19
    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 20
    .line 21
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 22
    .line 23
    add-float/2addr v2, v0

    .line 24
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 25
    .line 26
    new-instance v4, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 32
    .line 33
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 34
    .line 35
    iput v1, v4, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 38
    .line 39
    iput v2, v4, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 42
    .line 43
    add-float/2addr v1, v5

    .line 44
    iput v1, v4, Landroid/graphics/RectF;->right:F

    .line 45
    .line 46
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 47
    .line 48
    add-float/2addr v2, v0

    .line 49
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/4 v0, 0x0

    .line 58
    :goto_39
    if-ge v0, v8, :cond_5f

    .line 59
    .line 60
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    add-int/lit8 v9, v0, 0x1

    .line 65
    .line 66
    check-cast v1, Landroidx/constraintlayout/motion/widget/Key;

    .line 67
    .line 68
    instance-of v0, v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    .line 69
    .line 70
    if-eqz v0, :cond_55

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    check-cast v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    .line 74
    .line 75
    move v1, p1

    .line 76
    move v2, p2

    .line 77
    move v5, p3

    .line 78
    move v6, p4

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_59

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_55
    move v1, p1

    .line 87
    move v2, p2

    .line 88
    move v5, p3

    .line 89
    move v6, p4

    .line 90
    :cond_59
    move p1, v1

    .line 91
    move p2, v2

    .line 92
    move p3, v5

    .line 93
    move p4, v6

    .line 94
    move v0, v9

    .line 95
    goto :goto_39

    .line 96
    :cond_5f
    const/4 p1, 0x0

    .line 97
    return-object p1
.end method

.method public getPostLayoutDvDp(FIIFF[F)V
    .registers 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v3, "translationX"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-nez v2, :cond_13

    .line 17
    .line 18
    move-object v2, v4

    .line 19
    goto :goto_19

    .line 20
    :cond_13
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 25
    .line 26
    :goto_19
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 27
    .line 28
    const-string v6, "translationY"

    .line 29
    .line 30
    if-nez v5, :cond_21

    .line 31
    .line 32
    move-object v5, v4

    .line 33
    goto :goto_27

    .line 34
    :cond_21
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 39
    .line 40
    :goto_27
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 41
    .line 42
    const-string v8, "rotation"

    .line 43
    .line 44
    if-nez v7, :cond_2f

    .line 45
    .line 46
    move-object v7, v4

    .line 47
    goto :goto_35

    .line 48
    :cond_2f
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 53
    .line 54
    :goto_35
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 55
    .line 56
    const-string v10, "scaleX"

    .line 57
    .line 58
    if-nez v9, :cond_3d

    .line 59
    .line 60
    move-object v9, v4

    .line 61
    goto :goto_43

    .line 62
    :cond_3d
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    check-cast v9, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 67
    .line 68
    :goto_43
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 69
    .line 70
    const-string v12, "scaleY"

    .line 71
    .line 72
    if-nez v11, :cond_4b

    .line 73
    .line 74
    move-object v11, v4

    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 81
    .line 82
    :goto_51
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 83
    .line 84
    if-nez v13, :cond_57

    .line 85
    .line 86
    move-object v3, v4

    .line 87
    goto :goto_5d

    .line 88
    :cond_57
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 93
    .line 94
    :goto_5d
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 95
    .line 96
    if-nez v13, :cond_63

    .line 97
    .line 98
    move-object v6, v4

    .line 99
    goto :goto_69

    .line 100
    :cond_63
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 105
    .line 106
    :goto_69
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 107
    .line 108
    if-nez v13, :cond_6f

    .line 109
    .line 110
    move-object v8, v4

    .line 111
    goto :goto_75

    .line 112
    :cond_6f
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 117
    .line 118
    :goto_75
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 119
    .line 120
    if-nez v13, :cond_7b

    .line 121
    .line 122
    move-object v10, v4

    .line 123
    goto :goto_81

    .line 124
    :cond_7b
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 129
    .line 130
    :goto_81
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 131
    .line 132
    if-nez v13, :cond_86

    .line 133
    .line 134
    goto :goto_8c

    .line 135
    :cond_86
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 140
    .line 141
    :goto_8c
    new-instance v12, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    .line 142
    .line 143
    invoke-direct {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 165
    .line 166
    .line 167
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 168
    .line 169
    if-eqz v13, :cond_d9

    .line 170
    .line 171
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 172
    .line 173
    array-length v3, v2

    .line 174
    if-lez v3, :cond_cb

    .line 175
    .line 176
    float-to-double v3, v1

    .line 177
    invoke-virtual {v13, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 181
    .line 182
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 183
    .line 184
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 185
    .line 186
    .line 187
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 188
    .line 189
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 190
    .line 191
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 192
    .line 193
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 194
    .line 195
    move/from16 v6, p4

    .line 196
    .line 197
    move/from16 v7, p5

    .line 198
    .line 199
    move-object/from16 v8, p6

    .line 200
    .line 201
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 202
    .line 203
    .line 204
    :cond_cb
    move/from16 v15, p2

    .line 205
    .line 206
    move/from16 v16, p3

    .line 207
    .line 208
    move/from16 v13, p4

    .line 209
    .line 210
    move/from16 v14, p5

    .line 211
    .line 212
    move-object/from16 v17, p6

    .line 213
    .line 214
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_d9
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    if-eqz v13, :cond_12a

    .line 222
    .line 223
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 224
    .line 225
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 230
    .line 231
    aget-object v2, v2, v14

    .line 232
    .line 233
    float-to-double v3, v1

    .line 234
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 235
    .line 236
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 240
    .line 241
    aget-object v1, v1, v14

    .line 242
    .line 243
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 244
    .line 245
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 249
    .line 250
    aget v1, v1, v14

    .line 251
    .line 252
    :goto_fb
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 253
    .line 254
    array-length v3, v2

    .line 255
    if-ge v14, v3, :cond_109

    .line 256
    .line 257
    aget-wide v3, v2, v14

    .line 258
    .line 259
    float-to-double v5, v1

    .line 260
    mul-double/2addr v3, v5

    .line 261
    aput-wide v3, v2, v14

    .line 262
    .line 263
    add-int/lit8 v14, v14, 0x1

    .line 264
    .line 265
    goto :goto_fb

    .line 266
    :cond_109
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 267
    .line 268
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 269
    .line 270
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 271
    .line 272
    move/from16 v14, p4

    .line 273
    .line 274
    move/from16 v15, p5

    .line 275
    .line 276
    move-object/from16 v16, p6

    .line 277
    .line 278
    move-object/from16 v17, v1

    .line 279
    .line 280
    move-object/from16 v18, v2

    .line 281
    .line 282
    move-object/from16 v19, v3

    .line 283
    .line 284
    invoke-virtual/range {v13 .. v19}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 285
    .line 286
    .line 287
    move v13, v14

    .line 288
    move v14, v15

    .line 289
    move-object/from16 v17, v16

    .line 290
    .line 291
    move/from16 v15, p2

    .line 292
    .line 293
    move/from16 v16, p3

    .line 294
    .line 295
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_12a
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 300
    .line 301
    iget v15, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 302
    .line 303
    move/from16 p1, v14

    .line 304
    .line 305
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 306
    .line 307
    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 308
    .line 309
    sub-float/2addr v15, v0

    .line 310
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 311
    .line 312
    move/from16 v16, v0

    .line 313
    .line 314
    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 315
    .line 316
    sub-float v0, v16, v0

    .line 317
    .line 318
    move/from16 v16, v0

    .line 319
    .line 320
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 321
    .line 322
    move/from16 v17, v0

    .line 323
    .line 324
    iget v0, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 325
    .line 326
    sub-float v0, v17, v0

    .line 327
    .line 328
    iget v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 329
    .line 330
    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 331
    .line 332
    sub-float/2addr v13, v14

    .line 333
    add-float/2addr v0, v15

    .line 334
    add-float v13, v16, v13

    .line 335
    .line 336
    const/high16 v14, 0x3f800000    # 1.0f

    .line 337
    .line 338
    sub-float v17, v14, p4

    .line 339
    .line 340
    mul-float v17, v17, v15

    .line 341
    .line 342
    mul-float v0, v0, p4

    .line 343
    .line 344
    add-float v0, v0, v17

    .line 345
    .line 346
    aput v0, p6, p1

    .line 347
    .line 348
    sub-float v14, v14, p5

    .line 349
    .line 350
    mul-float v14, v14, v16

    .line 351
    .line 352
    mul-float v13, v13, p5

    .line 353
    .line 354
    add-float/2addr v13, v14

    .line 355
    const/4 v0, 0x1

    .line 356
    aput v13, p6, v0

    .line 357
    .line 358
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->clear()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/SplineSet;Landroidx/constraintlayout/core/motion/utils/SplineSet;F)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;F)V

    .line 377
    .line 378
    .line 379
    move/from16 v15, p2

    .line 380
    .line 381
    move/from16 v16, p3

    .line 382
    .line 383
    move/from16 v13, p4

    .line 384
    .line 385
    move/from16 v14, p5

    .line 386
    .line 387
    move-object/from16 v17, p6

    .line 388
    .line 389
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public getStartHeight()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 4
    .line 5
    return v0
.end method

.method public getStartWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 4
    .line 5
    return v0
.end method

.method public getStartX()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 4
    .line 5
    return v0
.end method

.method public getStartY()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 4
    .line 5
    return v0
.end method

.method public getTransformPivotTarget()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 2
    .line 3
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move/from16 v3, p2

    .line 7
    .line 8
    invoke-direct {v0, v3, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 13
    .line 14
    sget v5, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 15
    .line 16
    const/high16 v12, 0x3f800000    # 1.0f

    .line 17
    .line 18
    if-eq v4, v5, :cond_42

    .line 19
    .line 20
    int-to-float v4, v4

    .line 21
    div-float v4, v12, v4

    .line 22
    .line 23
    div-float v5, v3, v4

    .line 24
    .line 25
    float-to-double v5, v5

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    double-to-float v5, v5

    .line 31
    mul-float/2addr v5, v4

    .line 32
    rem-float/2addr v3, v4

    .line 33
    div-float/2addr v3, v4

    .line 34
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 35
    .line 36
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_2d

    .line 41
    .line 42
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 43
    .line 44
    add-float/2addr v3, v6

    .line 45
    rem-float/2addr v3, v12

    .line 46
    :cond_2d
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    .line 48
    if-eqz v6, :cond_36

    .line 49
    .line 50
    invoke-interface {v6, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_40

    .line 55
    :cond_36
    float-to-double v6, v3

    .line 56
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 57
    .line 58
    cmpl-double v3, v6, v8

    .line 59
    .line 60
    if-lez v3, :cond_3f

    .line 61
    .line 62
    move v3, v12

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 v3, 0x0

    .line 65
    :goto_40
    mul-float/2addr v3, v4

    .line 66
    add-float/2addr v3, v5

    .line 67
    :cond_42
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 68
    .line 69
    if-eqz v4, :cond_5e

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_5e

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 90
    .line 91
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setProperty(Landroid/view/View;F)V

    .line 92
    .line 93
    .line 94
    goto :goto_4e

    .line 95
    :cond_5e
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 96
    .line 97
    const/4 v13, 0x0

    .line 98
    if-eqz v4, :cond_90

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    move-object v8, v1

    .line 109
    move v9, v13

    .line 110
    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_8d

    .line 115
    .line 116
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 121
    .line 122
    instance-of v4, v1, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 123
    .line 124
    if-eqz v4, :cond_81

    .line 125
    .line 126
    move-object v8, v1

    .line 127
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    .line 128
    .line 129
    goto :goto_6d

    .line 130
    :cond_81
    move-wide/from16 v4, p3

    .line 131
    .line 132
    move-object/from16 v6, p5

    .line 133
    .line 134
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    or-int/2addr v9, v1

    .line 139
    move-object/from16 v2, p1

    .line 140
    .line 141
    goto :goto_6d

    .line 142
    :cond_8d
    move v14, v9

    .line 143
    move-object v9, v8

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    move-object v9, v1

    .line 146
    move v14, v13

    .line 147
    :goto_92
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 148
    .line 149
    const/4 v15, 0x1

    .line 150
    if-eqz v1, :cond_1f2

    .line 151
    .line 152
    aget-object v1, v1, v13

    .line 153
    .line 154
    float-to-double v4, v3

    .line 155
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 156
    .line 157
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 161
    .line 162
    aget-object v1, v1, v13

    .line 163
    .line 164
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 165
    .line 166
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 170
    .line 171
    if-eqz v1, :cond_bb

    .line 172
    .line 173
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 174
    .line 175
    array-length v6, v2

    .line 176
    if-lez v6, :cond_bb

    .line 177
    .line 178
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 182
    .line 183
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 184
    .line 185
    invoke-virtual {v1, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 186
    .line 187
    .line 188
    :cond_bb
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 189
    .line 190
    if-nez v1, :cond_e3

    .line 191
    .line 192
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 193
    .line 194
    move-wide v5, v4

    .line 195
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 196
    .line 197
    move-wide v6, v5

    .line 198
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 199
    .line 200
    move-wide v7, v6

    .line 201
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 202
    .line 203
    move-wide/from16 v16, v7

    .line 204
    .line 205
    const/4 v7, 0x0

    .line 206
    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 207
    .line 208
    move v2, v3

    .line 209
    move/from16 v18, v12

    .line 210
    .line 211
    move-wide/from16 v11, v16

    .line 212
    .line 213
    const/16 p2, 0x0

    .line 214
    .line 215
    move-object/from16 v3, p1

    .line 216
    .line 217
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(FLandroid/view/View;[I[D[D[DZ)V

    .line 218
    .line 219
    .line 220
    move-object/from16 v19, v3

    .line 221
    .line 222
    move v3, v2

    .line 223
    move-object/from16 v2, v19

    .line 224
    .line 225
    iput-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 226
    .line 227
    goto :goto_ea

    .line 228
    :cond_e3
    move-object/from16 v2, p1

    .line 229
    .line 230
    move/from16 v18, v12

    .line 231
    .line 232
    const/16 p2, 0x0

    .line 233
    .line 234
    move-wide v11, v4

    .line 235
    :goto_ea
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 236
    .line 237
    sget v4, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 238
    .line 239
    if-eq v1, v4, :cond_14c

    .line 240
    .line 241
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 242
    .line 243
    if-nez v1, :cond_102

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Landroid/view/View;

    .line 250
    .line 251
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 252
    .line 253
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 258
    .line 259
    :cond_102
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 260
    .line 261
    if-eqz v1, :cond_14c

    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    add-int/2addr v4, v1

    .line 274
    int-to-float v1, v4

    .line 275
    const/high16 v4, 0x40000000    # 2.0f

    .line 276
    .line 277
    div-float/2addr v1, v4

    .line 278
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 279
    .line 280
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    add-int/2addr v6, v5

    .line 291
    int-to-float v5, v6

    .line 292
    div-float/2addr v5, v4

    .line 293
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    sub-int/2addr v4, v6

    .line 302
    if-lez v4, :cond_14c

    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    sub-int/2addr v4, v6

    .line 313
    if-lez v4, :cond_14c

    .line 314
    .line 315
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    int-to-float v4, v4

    .line 320
    sub-float/2addr v5, v4

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    int-to-float v4, v4

    .line 326
    sub-float/2addr v1, v4

    .line 327
    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotX(F)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    .line 331
    .line 332
    .line 333
    :cond_14c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 334
    .line 335
    if-eqz v1, :cond_17c

    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    :goto_158
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_17c

    .line 350
    .line 351
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 356
    .line 357
    instance-of v4, v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 358
    .line 359
    if-eqz v4, :cond_179

    .line 360
    .line 361
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 362
    .line 363
    array-length v5, v4

    .line 364
    if-le v5, v15, :cond_179

    .line 365
    .line 366
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    .line 367
    .line 368
    aget-wide v5, v4, v13

    .line 369
    .line 370
    aget-wide v16, v4, v15

    .line 371
    .line 372
    move-wide v4, v5

    .line 373
    move-wide/from16 v6, v16

    .line 374
    .line 375
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    .line 376
    .line 377
    .line 378
    :cond_179
    move-object/from16 v2, p1

    .line 379
    .line 380
    goto :goto_158

    .line 381
    :cond_17c
    if-eqz v9, :cond_194

    .line 382
    .line 383
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 384
    .line 385
    aget-wide v7, v1, v13

    .line 386
    .line 387
    aget-wide v4, v1, v15

    .line 388
    .line 389
    move-object/from16 v2, p1

    .line 390
    .line 391
    move-object v1, v9

    .line 392
    move-wide v9, v4

    .line 393
    move-wide/from16 v5, p3

    .line 394
    .line 395
    move v4, v3

    .line 396
    move-object/from16 v3, p5

    .line 397
    .line 398
    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;FJDD)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    move v3, v4

    .line 403
    or-int/2addr v14, v1

    .line 404
    goto :goto_196

    .line 405
    :cond_194
    move-object/from16 v2, p1

    .line 406
    .line 407
    :goto_196
    move v1, v15

    .line 408
    :goto_197
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 409
    .line 410
    array-length v5, v4

    .line 411
    if-ge v1, v5, :cond_1bb

    .line 412
    .line 413
    aget-object v4, v4, v1

    .line 414
    .line 415
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 416
    .line 417
    invoke-virtual {v4, v11, v12, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 418
    .line 419
    .line 420
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 421
    .line 422
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 423
    .line 424
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 425
    .line 426
    add-int/lit8 v6, v1, -0x1

    .line 427
    .line 428
    aget-object v5, v5, v6

    .line 429
    .line 430
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 435
    .line 436
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 437
    .line 438
    invoke-static {v4, v2, v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 439
    .line 440
    .line 441
    add-int/lit8 v1, v1, 0x1

    .line 442
    .line 443
    goto :goto_197

    .line 444
    :cond_1bb
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 445
    .line 446
    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    .line 447
    .line 448
    if-nez v4, :cond_1e0

    .line 449
    .line 450
    cmpg-float v4, v3, p2

    .line 451
    .line 452
    if-gtz v4, :cond_1cb

    .line 453
    .line 454
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 455
    .line 456
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    goto :goto_1e0

    .line 460
    :cond_1cb
    cmpl-float v4, v3, v18

    .line 461
    .line 462
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 463
    .line 464
    if-ltz v4, :cond_1d7

    .line 465
    .line 466
    iget v1, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 467
    .line 468
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    goto :goto_1e0

    .line 472
    :cond_1d7
    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 473
    .line 474
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 475
    .line 476
    if-eq v4, v1, :cond_1e0

    .line 477
    .line 478
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .line 480
    .line 481
    :cond_1e0
    :goto_1e0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 482
    .line 483
    if-eqz v1, :cond_244

    .line 484
    .line 485
    move v1, v13

    .line 486
    :goto_1e5
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 487
    .line 488
    array-length v5, v4

    .line 489
    if-ge v1, v5, :cond_244

    .line 490
    .line 491
    aget-object v4, v4, v1

    .line 492
    .line 493
    invoke-virtual {v4, v3, v2}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 494
    .line 495
    .line 496
    add-int/lit8 v1, v1, 0x1

    .line 497
    .line 498
    goto :goto_1e5

    .line 499
    :cond_1f2
    move-object/from16 v2, p1

    .line 500
    .line 501
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 502
    .line 503
    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 504
    .line 505
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 506
    .line 507
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 508
    .line 509
    invoke-static {v6, v4, v3, v4}, Lai/onnxruntime/a;->b(FFFF)F

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 514
    .line 515
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 516
    .line 517
    invoke-static {v7, v6, v3, v6}, Lai/onnxruntime/a;->b(FFFF)F

    .line 518
    .line 519
    .line 520
    move-result v6

    .line 521
    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 522
    .line 523
    iget v8, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 524
    .line 525
    invoke-static {v8, v7, v3, v7}, Lai/onnxruntime/a;->b(FFFF)F

    .line 526
    .line 527
    .line 528
    move-result v9

    .line 529
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 530
    .line 531
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 532
    .line 533
    invoke-static {v5, v1, v3, v1}, Lai/onnxruntime/a;->b(FFFF)F

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    const/high16 v11, 0x3f000000    # 0.5f

    .line 538
    .line 539
    add-float/2addr v4, v11

    .line 540
    float-to-int v12, v4

    .line 541
    add-float/2addr v6, v11

    .line 542
    float-to-int v11, v6

    .line 543
    add-float/2addr v4, v9

    .line 544
    float-to-int v4, v4

    .line 545
    add-float/2addr v6, v10

    .line 546
    float-to-int v6, v6

    .line 547
    sub-int v9, v4, v12

    .line 548
    .line 549
    sub-int v10, v6, v11

    .line 550
    .line 551
    cmpl-float v7, v8, v7

    .line 552
    .line 553
    if-nez v7, :cond_232

    .line 554
    .line 555
    cmpl-float v1, v5, v1

    .line 556
    .line 557
    if-nez v1, :cond_232

    .line 558
    .line 559
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 560
    .line 561
    if-eqz v1, :cond_241

    .line 562
    .line 563
    :cond_232
    const/high16 v1, 0x40000000    # 2.0f

    .line 564
    .line 565
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    invoke-virtual {v2, v5, v1}, Landroid/view/View;->measure(II)V

    .line 574
    .line 575
    .line 576
    iput-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 577
    .line 578
    :cond_241
    invoke-virtual {v2, v12, v11, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 579
    .line 580
    .line 581
    :cond_244
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 582
    .line 583
    if-eqz v1, :cond_272

    .line 584
    .line 585
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 590
    .line 591
    .line 592
    move-result-object v8

    .line 593
    :goto_250
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    if-eqz v1, :cond_272

    .line 598
    .line 599
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 604
    .line 605
    instance-of v4, v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 606
    .line 607
    if-eqz v4, :cond_26e

    .line 608
    .line 609
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    .line 610
    .line 611
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 612
    .line 613
    aget-wide v5, v4, v13

    .line 614
    .line 615
    aget-wide v9, v4, v15

    .line 616
    .line 617
    move-wide v4, v5

    .line 618
    move-wide v6, v9

    .line 619
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    .line 620
    .line 621
    .line 622
    goto :goto_250

    .line 623
    :cond_26e
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setProperty(Landroid/view/View;F)V

    .line 624
    .line 625
    .line 626
    goto :goto_250

    .line 627
    :cond_272
    return v14
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .registers 15

    .line 1
    new-instance v2, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 7
    .line 8
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 9
    .line 10
    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 11
    .line 12
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 13
    .line 14
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 15
    .line 16
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 17
    .line 18
    add-float/2addr v1, v4

    .line 19
    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 20
    .line 21
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 22
    .line 23
    add-float/2addr v3, v0

    .line 24
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 25
    .line 26
    new-instance v3, Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 32
    .line 33
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 34
    .line 35
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 36
    .line 37
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 38
    .line 39
    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 42
    .line 43
    add-float/2addr v1, v5

    .line 44
    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 45
    .line 46
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 47
    .line 48
    add-float/2addr v4, v0

    .line 49
    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    move-object v1, p1

    .line 52
    move-object v0, p2

    .line 53
    move v4, p3

    .line 54
    move v5, p4

    .line 55
    move-object v6, p5

    .line 56
    move-object v7, p6

    .line 57
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public remeasure()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mForceMeasure:Z

    .line 3
    .line 4
    return-void
.end method

.method public rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p3, v0, :cond_97

    .line 4
    .line 5
    if-eq p3, v1, :cond_69

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p3, v0, :cond_3b

    .line 9
    .line 10
    const/4 p5, 0x4

    .line 11
    if-eq p3, p5, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget p5, p1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr p3, p5

    .line 19
    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    add-int/2addr p5, v0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, p5

    .line 29
    div-int/2addr v0, v1

    .line 30
    sub-int/2addr p4, v0

    .line 31
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    sub-int/2addr p3, p4

    .line 38
    div-int/2addr p3, v1

    .line 39
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    add-int/2addr p4, p3

    .line 48
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, p3

    .line 57
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    add-int/2addr p3, p4

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    div-int/2addr p4, v1

    .line 70
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 71
    .line 72
    add-int/2addr p4, v0

    .line 73
    div-int/lit8 v0, p3, 0x2

    .line 74
    .line 75
    sub-int/2addr p4, v0

    .line 76
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    add-int/2addr p4, p3

    .line 83
    div-int/2addr p4, v1

    .line 84
    sub-int/2addr p5, p4

    .line 85
    iput p5, p2, Landroid/graphics/Rect;->top:I

    .line 86
    .line 87
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    add-int/2addr p4, p3

    .line 94
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    add-int/2addr p1, p3

    .line 103
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 104
    .line 105
    return-void

    .line 106
    :cond_69
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    iget p5, p1, Landroid/graphics/Rect;->right:I

    .line 109
    .line 110
    add-int/2addr p3, p5

    .line 111
    iget p5, p1, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 114
    .line 115
    add-int/2addr p5, v0

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v0, p5

    .line 121
    div-int/2addr v0, v1

    .line 122
    sub-int/2addr p4, v0

    .line 123
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    sub-int/2addr p3, p4

    .line 130
    div-int/2addr p3, v1

    .line 131
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 132
    .line 133
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    add-int/2addr p4, p3

    .line 140
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    add-int/2addr p1, p3

    .line 149
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 150
    .line 151
    return-void

    .line 152
    :cond_97
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 155
    .line 156
    add-int/2addr p3, p4

    .line 157
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 158
    .line 159
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 160
    .line 161
    add-int/2addr p4, v0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    sub-int/2addr p4, v0

    .line 167
    div-int/2addr p4, v1

    .line 168
    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 171
    .line 172
    .line 173
    move-result p4

    .line 174
    add-int/2addr p4, p3

    .line 175
    div-int/2addr p4, v1

    .line 176
    sub-int/2addr p5, p4

    .line 177
    iput p5, p2, Landroid/graphics/Rect;->top:I

    .line 178
    .line 179
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 182
    .line 183
    .line 184
    move-result p4

    .line 185
    add-int/2addr p4, p3

    .line 186
    iput p4, p2, Landroid/graphics/Rect;->right:I

    .line 187
    .line 188
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    add-int/2addr p1, p3

    .line 195
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 196
    .line 197
    return-void
.end method

.method public setBothStates(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    int-to-float v3, v3

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    int-to-float v4, v4

    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setDrawPath(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 4
    .line 5
    return-void
.end method

.method public setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .registers 11

    .line 1
    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    .line 2
    .line 3
    if-eqz v3, :cond_10

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    goto :goto_12

    .line 17
    :cond_10
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    :goto_12
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 20
    .line 21
    const/high16 p4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 24
    .line 25
    iput p4, p3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 26
    .line 27
    invoke-direct {p0, p3}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 28
    .line 29
    .line 30
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 31
    .line 32
    iget p4, p1, Landroid/graphics/Rect;->left:I

    .line 33
    .line 34
    int-to-float p4, p4

    .line 35
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    int-to-float v1, v1

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    int-to-float v4, v4

    .line 48
    invoke-virtual {p3, p4, v1, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 49
    .line 50
    .line 51
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 52
    .line 53
    iget p4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 54
    .line 55
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 60
    .line 61
    .line 62
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 63
    .line 64
    iget p4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 65
    .line 66
    invoke-virtual {p3, p1, p2, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartCurrentState(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    int-to-float v3, v3

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .registers 11

    .line 140
    iget v3, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    if-eqz v3, :cond_e

    .line 141
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionController;->rotate(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    goto :goto_10

    :cond_e
    move-object v0, p0

    move-object v1, p1

    .line 142
    :goto_10
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 p3, 0x0

    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 143
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 144
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 145
    iget-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p3, v1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p4, v1, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p3, p4, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 146
    iget p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p1

    .line 147
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 148
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget p3, p3, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 149
    iget-object p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget p4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p3, v1, p2, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    .line 150
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 151
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget p3, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    iput p3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionSteps:I

    .line 152
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionPhase:F

    .line 153
    iget-object p2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget p3, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    iget-object p4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    invoke-static {p2, p3, p4, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->getInterpolator(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mQuantizeMotionInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p3, v1, :cond_41

    .line 16
    .line 17
    if-eq p3, v2, :cond_13

    .line 18
    .line 19
    goto :goto_6e

    .line 20
    :cond_13
    iget p4, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    .line 21
    .line 22
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    .line 23
    .line 24
    add-int/2addr p4, v1

    .line 25
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    .line 28
    .line 29
    add-int/2addr v1, v3

    .line 30
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v1

    .line 35
    div-int/2addr v3, v2

    .line 36
    sub-int/2addr p5, v3

    .line 37
    iput p5, v0, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    sub-int/2addr p4, p5

    .line 44
    div-int/2addr p4, v2

    .line 45
    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget p4, v0, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    add-int/2addr p5, p4

    .line 54
    iput p5, v0, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    iget p4, v0, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    .line 59
    .line 60
    .line 61
    move-result p5

    .line 62
    add-int/2addr p5, p4

    .line 63
    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 64
    .line 65
    goto :goto_6e

    .line 66
    :cond_41
    iget p5, p1, Landroidx/constraintlayout/motion/utils/ViewState;->left:I

    .line 67
    .line 68
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->right:I

    .line 69
    .line 70
    add-int/2addr p5, v1

    .line 71
    iget v1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->top:I

    .line 72
    .line 73
    iget v3, p1, Landroidx/constraintlayout/motion/utils/ViewState;->bottom:I

    .line 74
    .line 75
    add-int/2addr v1, v3

    .line 76
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    sub-int/2addr v1, v3

    .line 81
    div-int/2addr v1, v2

    .line 82
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v1, p5

    .line 89
    div-int/2addr v1, v2

    .line 90
    sub-int/2addr p4, v1

    .line 91
    iput p4, v0, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    iget p4, v0, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->width()I

    .line 96
    .line 97
    .line 98
    move-result p5

    .line 99
    add-int/2addr p5, p4

    .line 100
    iput p5, v0, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    iget p4, v0, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/utils/ViewState;->height()I

    .line 105
    .line 106
    .line 107
    move-result p5

    .line 108
    add-int/2addr p5, p4

    .line 109
    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 110
    .line 111
    :goto_6e
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 112
    .line 113
    iget p5, v0, Landroid/graphics/Rect;->left:I

    .line 114
    .line 115
    int-to-float p5, p5

    .line 116
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    int-to-float v1, v1

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    int-to-float v2, v2

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    int-to-float v3, v3

    .line 129
    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 130
    .line 131
    .line 132
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 133
    .line 134
    iget p1, p1, Landroidx/constraintlayout/motion/utils/ViewState;->rotation:F

    .line 135
    .line 136
    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/graphics/Rect;Landroid/view/View;IF)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public setTransformPivotTarget(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotTarget:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mTransformPivotView:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    .line 15
    if-eqz v0, :cond_18

    .line 16
    .line 17
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    .line 24
    .line 25
    :cond_18
    return-void
.end method

.method public setup(IIFJ)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v4, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 29
    .line 30
    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 31
    .line 32
    if-eq v5, v6, :cond_25

    .line 33
    .line 34
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 35
    .line 36
    iput v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 37
    .line 38
    :cond_25
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 39
    .line 40
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 41
    .line 42
    invoke-virtual {v5, v6, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 43
    .line 44
    .line 45
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    if-eqz v5, :cond_90

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    move v10, v6

    .line 55
    const/4 v9, 0x0

    .line 56
    :cond_37
    :goto_37
    if-ge v10, v8, :cond_91

    .line 57
    .line 58
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    add-int/lit8 v10, v10, 0x1

    .line 63
    .line 64
    check-cast v11, Landroidx/constraintlayout/motion/widget/Key;

    .line 65
    .line 66
    instance-of v12, v11, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 67
    .line 68
    if-eqz v12, :cond_68

    .line 69
    .line 70
    move-object/from16 v16, v11

    .line 71
    .line 72
    check-cast v16, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 73
    .line 74
    new-instance v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 75
    .line 76
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 77
    .line 78
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 79
    .line 80
    move/from16 v14, p1

    .line 81
    .line 82
    move/from16 v15, p2

    .line 83
    .line 84
    move-object/from16 v17, v11

    .line 85
    .line 86
    move-object/from16 v18, v12

    .line 87
    .line 88
    invoke-direct/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v11, v16

    .line 92
    .line 93
    invoke-direct {v0, v13}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 94
    .line 95
    .line 96
    iget v11, v11, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->mCurveFit:I

    .line 97
    .line 98
    sget v12, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 99
    .line 100
    if-eq v11, v12, :cond_37

    .line 101
    .line 102
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 103
    .line 104
    goto :goto_37

    .line 105
    :cond_68
    instance-of v12, v11, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 106
    .line 107
    if-eqz v12, :cond_70

    .line 108
    .line 109
    invoke-virtual {v11, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 110
    .line 111
    .line 112
    goto :goto_37

    .line 113
    :cond_70
    instance-of v12, v11, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 114
    .line 115
    if-eqz v12, :cond_78

    .line 116
    .line 117
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 118
    .line 119
    .line 120
    goto :goto_37

    .line 121
    :cond_78
    instance-of v12, v11, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 122
    .line 123
    if-eqz v12, :cond_89

    .line 124
    .line 125
    if-nez v9, :cond_83

    .line 126
    .line 127
    new-instance v9, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    :cond_83
    check-cast v11, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 133
    .line 134
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_37

    .line 138
    :cond_89
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 142
    .line 143
    .line 144
    goto :goto_37

    .line 145
    :cond_90
    const/4 v9, 0x0

    .line 146
    :cond_91
    if-eqz v9, :cond_9d

    .line 147
    .line 148
    new-array v5, v6, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 149
    .line 150
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 155
    .line 156
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 157
    .line 158
    :cond_9d
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const-string v8, ","

    .line 163
    .line 164
    const-string v9, "CUSTOM,"

    .line 165
    .line 166
    const/4 v10, 0x1

    .line 167
    if-nez v5, :cond_17f

    .line 168
    .line 169
    new-instance v5, Ljava/util/HashMap;

    .line 170
    .line 171
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    :goto_b3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_117

    .line 185
    .line 186
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    check-cast v11, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    if-eqz v12, :cond_102

    .line 197
    .line 198
    new-instance v12, Landroid/util/SparseArray;

    .line 199
    .line 200
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    aget-object v13, v13, v10

    .line 208
    .line 209
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    move v7, v6

    .line 216
    :goto_d7
    if-ge v7, v15, :cond_fb

    .line 217
    .line 218
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v16

    .line 222
    add-int/lit8 v7, v7, 0x1

    .line 223
    .line 224
    move/from16 p1, v10

    .line 225
    .line 226
    move-object/from16 v10, v16

    .line 227
    .line 228
    check-cast v10, Landroidx/constraintlayout/motion/widget/Key;

    .line 229
    .line 230
    iget-object v6, v10, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 231
    .line 232
    if-nez v6, :cond_ed

    .line 233
    .line 234
    :cond_e9
    :goto_e9
    move/from16 v10, p1

    .line 235
    .line 236
    const/4 v6, 0x0

    .line 237
    goto :goto_d7

    .line 238
    :cond_ed
    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 243
    .line 244
    if-eqz v6, :cond_e9

    .line 245
    .line 246
    iget v10, v10, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 247
    .line 248
    invoke-virtual {v12, v10, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_e9

    .line 252
    :cond_fb
    move/from16 p1, v10

    .line 253
    .line 254
    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    goto :goto_108

    .line 259
    :cond_102
    move/from16 p1, v10

    .line 260
    .line 261
    invoke-static {v11}, Landroidx/constraintlayout/motion/utils/ViewSpline;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    :goto_108
    if-nez v6, :cond_10e

    .line 266
    .line 267
    :goto_10a
    move/from16 v10, p1

    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    goto :goto_b3

    .line 271
    :cond_10e
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 275
    .line 276
    invoke-virtual {v7, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto :goto_10a

    .line 280
    :cond_117
    move/from16 p1, v10

    .line 281
    .line 282
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 283
    .line 284
    if-eqz v5, :cond_136

    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    const/4 v7, 0x0

    .line 291
    :cond_122
    :goto_122
    if-ge v7, v6, :cond_136

    .line 292
    .line 293
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    add-int/lit8 v7, v7, 0x1

    .line 298
    .line 299
    check-cast v10, Landroidx/constraintlayout/motion/widget/Key;

    .line 300
    .line 301
    instance-of v11, v10, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    .line 302
    .line 303
    if-eqz v11, :cond_122

    .line 304
    .line 305
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 306
    .line 307
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    .line 308
    .line 309
    .line 310
    goto :goto_122

    .line 311
    :cond_136
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 312
    .line 313
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 314
    .line 315
    const/4 v7, 0x0

    .line 316
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 317
    .line 318
    .line 319
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 320
    .line 321
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 322
    .line 323
    const/16 v7, 0x64

    .line 324
    .line 325
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 326
    .line 327
    .line 328
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 329
    .line 330
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    :cond_151
    :goto_151
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    if-eqz v6, :cond_181

    .line 343
    .line 344
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    check-cast v6, Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    if-eqz v7, :cond_170

    .line 355
    .line 356
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    check-cast v7, Ljava/lang/Integer;

    .line 361
    .line 362
    if-eqz v7, :cond_170

    .line 363
    .line 364
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    goto :goto_171

    .line 369
    :cond_170
    const/4 v7, 0x0

    .line 370
    :goto_171
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 371
    .line 372
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 377
    .line 378
    if-eqz v6, :cond_151

    .line 379
    .line 380
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_151

    .line 384
    :cond_17f
    move/from16 p1, v10

    .line 385
    .line 386
    :cond_181
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-nez v5, :cond_24d

    .line 391
    .line 392
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 393
    .line 394
    if-nez v5, :cond_192

    .line 395
    .line 396
    new-instance v5, Ljava/util/HashMap;

    .line 397
    .line 398
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 399
    .line 400
    .line 401
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 402
    .line 403
    :cond_192
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    :goto_196
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_1fa

    .line 412
    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    check-cast v5, Ljava/lang/String;

    .line 418
    .line 419
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 420
    .line 421
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v6

    .line 425
    if-eqz v6, :cond_1ab

    .line 426
    .line 427
    goto :goto_196

    .line 428
    :cond_1ab
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    if-eqz v6, :cond_1e8

    .line 433
    .line 434
    new-instance v6, Landroid/util/SparseArray;

    .line 435
    .line 436
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    aget-object v7, v7, p1

    .line 444
    .line 445
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 448
    .line 449
    .line 450
    move-result v11

    .line 451
    const/4 v12, 0x0

    .line 452
    :cond_1c3
    :goto_1c3
    if-ge v12, v11, :cond_1e0

    .line 453
    .line 454
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    add-int/lit8 v12, v12, 0x1

    .line 459
    .line 460
    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    .line 461
    .line 462
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 463
    .line 464
    if-nez v14, :cond_1d2

    .line 465
    .line 466
    goto :goto_1c3

    .line 467
    :cond_1d2
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 472
    .line 473
    if-eqz v14, :cond_1c3

    .line 474
    .line 475
    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 476
    .line 477
    invoke-virtual {v6, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    goto :goto_1c3

    .line 481
    :cond_1e0
    invoke-static {v5, v6}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    move-object v10, v6

    .line 486
    move-wide/from16 v6, p4

    .line 487
    .line 488
    goto :goto_1ee

    .line 489
    :cond_1e8
    move-wide/from16 v6, p4

    .line 490
    .line 491
    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    :goto_1ee
    if-nez v10, :cond_1f1

    .line 496
    .line 497
    goto :goto_196

    .line 498
    :cond_1f1
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setType(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 502
    .line 503
    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    goto :goto_196

    .line 507
    :cond_1fa
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 508
    .line 509
    if-eqz v1, :cond_219

    .line 510
    .line 511
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    const/4 v6, 0x0

    .line 516
    :cond_203
    :goto_203
    if-ge v6, v5, :cond_219

    .line 517
    .line 518
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    add-int/lit8 v6, v6, 0x1

    .line 523
    .line 524
    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 525
    .line 526
    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 527
    .line 528
    if-eqz v8, :cond_203

    .line 529
    .line 530
    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    .line 531
    .line 532
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 533
    .line 534
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 535
    .line 536
    .line 537
    goto :goto_203

    .line 538
    :cond_219
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 539
    .line 540
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    :goto_223
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    if-eqz v5, :cond_24d

    .line 553
    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    check-cast v5, Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    if-eqz v6, :cond_240

    .line 565
    .line 566
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v6

    .line 570
    check-cast v6, Ljava/lang/Integer;

    .line 571
    .line 572
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    goto :goto_241

    .line 577
    :cond_240
    const/4 v6, 0x0

    .line 578
    :goto_241
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 579
    .line 580
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    .line 585
    .line 586
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    .line 587
    .line 588
    .line 589
    goto :goto_223

    .line 590
    :cond_24d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    add-int/lit8 v4, v1, 0x2

    .line 597
    .line 598
    new-array v5, v4, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 599
    .line 600
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 601
    .line 602
    const/4 v7, 0x0

    .line 603
    aput-object v6, v5, v7

    .line 604
    .line 605
    add-int/lit8 v1, v1, 0x1

    .line 606
    .line 607
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 608
    .line 609
    aput-object v6, v5, v1

    .line 610
    .line 611
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-lez v1, :cond_271

    .line 618
    .line 619
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 620
    .line 621
    const/4 v6, -0x1

    .line 622
    if-ne v1, v6, :cond_271

    .line 623
    .line 624
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 625
    .line 626
    :cond_271
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 629
    .line 630
    .line 631
    move-result v6

    .line 632
    move/from16 v8, p1

    .line 633
    .line 634
    const/4 v7, 0x0

    .line 635
    :goto_27a
    if-ge v7, v6, :cond_28a

    .line 636
    .line 637
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v10

    .line 641
    add-int/lit8 v7, v7, 0x1

    .line 642
    .line 643
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 644
    .line 645
    add-int/lit8 v11, v8, 0x1

    .line 646
    .line 647
    aput-object v10, v5, v8

    .line 648
    .line 649
    move v8, v11

    .line 650
    goto :goto_27a

    .line 651
    :cond_28a
    new-instance v1, Ljava/util/HashSet;

    .line 652
    .line 653
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 654
    .line 655
    .line 656
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 657
    .line 658
    iget-object v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 659
    .line 660
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 665
    .line 666
    .line 667
    move-result-object v6

    .line 668
    :cond_29b
    :goto_29b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    if-eqz v7, :cond_2c7

    .line 673
    .line 674
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v7

    .line 678
    check-cast v7, Ljava/lang/String;

    .line 679
    .line 680
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 681
    .line 682
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 683
    .line 684
    invoke-virtual {v8, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v8

    .line 688
    if-eqz v8, :cond_29b

    .line 689
    .line 690
    new-instance v8, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v8

    .line 706
    if-nez v8, :cond_29b

    .line 707
    .line 708
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    goto :goto_29b

    .line 712
    :cond_2c7
    const/4 v7, 0x0

    .line 713
    new-array v2, v7, [Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    check-cast v1, [Ljava/lang/String;

    .line 720
    .line 721
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 722
    .line 723
    array-length v1, v1

    .line 724
    new-array v1, v1, [I

    .line 725
    .line 726
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    .line 727
    .line 728
    const/4 v1, 0x0

    .line 729
    :goto_2d8
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 730
    .line 731
    array-length v6, v2

    .line 732
    if-ge v1, v6, :cond_310

    .line 733
    .line 734
    aget-object v2, v2, v1

    .line 735
    .line 736
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    .line 737
    .line 738
    const/16 v16, 0x0

    .line 739
    .line 740
    aput v16, v6, v1

    .line 741
    .line 742
    const/4 v6, 0x0

    .line 743
    :goto_2e6
    if-ge v6, v4, :cond_30d

    .line 744
    .line 745
    aget-object v7, v5, v6

    .line 746
    .line 747
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 748
    .line 749
    invoke-virtual {v7, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v7

    .line 753
    if-eqz v7, :cond_30a

    .line 754
    .line 755
    aget-object v7, v5, v6

    .line 756
    .line 757
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAttributes:Ljava/util/LinkedHashMap;

    .line 758
    .line 759
    invoke-virtual {v7, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v7

    .line 763
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 764
    .line 765
    if-eqz v7, :cond_30a

    .line 766
    .line 767
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpolatorCount:[I

    .line 768
    .line 769
    aget v6, v2, v1

    .line 770
    .line 771
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 772
    .line 773
    .line 774
    move-result v7

    .line 775
    add-int/2addr v7, v6

    .line 776
    aput v7, v2, v1

    .line 777
    .line 778
    goto :goto_30d

    .line 779
    :cond_30a
    add-int/lit8 v6, v6, 0x1

    .line 780
    .line 781
    goto :goto_2e6

    .line 782
    :cond_30d
    :goto_30d
    add-int/lit8 v1, v1, 0x1

    .line 783
    .line 784
    goto :goto_2d8

    .line 785
    :cond_310
    const/16 v16, 0x0

    .line 786
    .line 787
    aget-object v1, v5, v16

    .line 788
    .line 789
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 790
    .line 791
    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 792
    .line 793
    if-eq v1, v6, :cond_31d

    .line 794
    .line 795
    move/from16 v1, p1

    .line 796
    .line 797
    goto :goto_31e

    .line 798
    :cond_31d
    const/4 v1, 0x0

    .line 799
    :goto_31e
    array-length v2, v2

    .line 800
    const/16 v6, 0x12

    .line 801
    .line 802
    add-int/2addr v6, v2

    .line 803
    new-array v2, v6, [Z

    .line 804
    .line 805
    move/from16 v7, p1

    .line 806
    .line 807
    :goto_326
    if-ge v7, v4, :cond_336

    .line 808
    .line 809
    aget-object v8, v5, v7

    .line 810
    .line 811
    add-int/lit8 v9, v7, -0x1

    .line 812
    .line 813
    aget-object v9, v5, v9

    .line 814
    .line 815
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 816
    .line 817
    invoke-virtual {v8, v9, v2, v10, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 818
    .line 819
    .line 820
    add-int/lit8 v7, v7, 0x1

    .line 821
    .line 822
    goto :goto_326

    .line 823
    :cond_336
    move/from16 v7, p1

    .line 824
    .line 825
    const/4 v1, 0x0

    .line 826
    :goto_339
    if-ge v7, v6, :cond_344

    .line 827
    .line 828
    aget-boolean v8, v2, v7

    .line 829
    .line 830
    if-eqz v8, :cond_341

    .line 831
    .line 832
    add-int/lit8 v1, v1, 0x1

    .line 833
    .line 834
    :cond_341
    add-int/lit8 v7, v7, 0x1

    .line 835
    .line 836
    goto :goto_339

    .line 837
    :cond_344
    new-array v7, v1, [I

    .line 838
    .line 839
    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 840
    .line 841
    const/4 v7, 0x2

    .line 842
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    new-array v8, v1, [D

    .line 847
    .line 848
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 849
    .line 850
    new-array v1, v1, [D

    .line 851
    .line 852
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 853
    .line 854
    move/from16 v8, p1

    .line 855
    .line 856
    const/4 v1, 0x0

    .line 857
    :goto_358
    if-ge v8, v6, :cond_368

    .line 858
    .line 859
    aget-boolean v9, v2, v8

    .line 860
    .line 861
    if-eqz v9, :cond_365

    .line 862
    .line 863
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 864
    .line 865
    add-int/lit8 v10, v1, 0x1

    .line 866
    .line 867
    aput v8, v9, v1

    .line 868
    .line 869
    move v1, v10

    .line 870
    :cond_365
    add-int/lit8 v8, v8, 0x1

    .line 871
    .line 872
    goto :goto_358

    .line 873
    :cond_368
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 874
    .line 875
    array-length v1, v1

    .line 876
    new-array v2, v7, [I

    .line 877
    .line 878
    aput v1, v2, p1

    .line 879
    .line 880
    const/16 v16, 0x0

    .line 881
    .line 882
    aput v4, v2, v16

    .line 883
    .line 884
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 885
    .line 886
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    check-cast v2, [[D

    .line 891
    .line 892
    new-array v6, v4, [D

    .line 893
    .line 894
    const/4 v8, 0x0

    .line 895
    :goto_37e
    if-ge v8, v4, :cond_393

    .line 896
    .line 897
    aget-object v9, v5, v8

    .line 898
    .line 899
    aget-object v10, v2, v8

    .line 900
    .line 901
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 902
    .line 903
    invoke-virtual {v9, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    .line 904
    .line 905
    .line 906
    aget-object v9, v5, v8

    .line 907
    .line 908
    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 909
    .line 910
    float-to-double v9, v9

    .line 911
    aput-wide v9, v6, v8

    .line 912
    .line 913
    add-int/lit8 v8, v8, 0x1

    .line 914
    .line 915
    goto :goto_37e

    .line 916
    :cond_393
    const/4 v8, 0x0

    .line 917
    :goto_394
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 918
    .line 919
    array-length v10, v9

    .line 920
    if-ge v8, v10, :cond_3cb

    .line 921
    .line 922
    aget v9, v9, v8

    .line 923
    .line 924
    sget-object v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    .line 925
    .line 926
    array-length v10, v10

    .line 927
    if-ge v9, v10, :cond_3c8

    .line 928
    .line 929
    new-instance v9, Ljava/lang/StringBuilder;

    .line 930
    .line 931
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .line 933
    .line 934
    sget-object v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->sNames:[Ljava/lang/String;

    .line 935
    .line 936
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 937
    .line 938
    aget v11, v11, v8

    .line 939
    .line 940
    aget-object v10, v10, v11

    .line 941
    .line 942
    const-string v11, " ["

    .line 943
    .line 944
    invoke-static {v9, v10, v11}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v9

    .line 948
    const/4 v10, 0x0

    .line 949
    :goto_3b4
    if-ge v10, v4, :cond_3c8

    .line 950
    .line 951
    invoke-static {v9}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    move-result-object v9

    .line 955
    aget-object v11, v2, v10

    .line 956
    .line 957
    aget-wide v12, v11, v8

    .line 958
    .line 959
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v9

    .line 966
    add-int/lit8 v10, v10, 0x1

    .line 967
    .line 968
    goto :goto_3b4

    .line 969
    :cond_3c8
    add-int/lit8 v8, v8, 0x1

    .line 970
    .line 971
    goto :goto_394

    .line 972
    :cond_3cb
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 973
    .line 974
    array-length v8, v8

    .line 975
    add-int/lit8 v8, v8, 0x1

    .line 976
    .line 977
    new-array v8, v8, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 978
    .line 979
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 980
    .line 981
    const/4 v8, 0x0

    .line 982
    :goto_3d5
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 983
    .line 984
    array-length v10, v9

    .line 985
    if-ge v8, v10, :cond_437

    .line 986
    .line 987
    aget-object v9, v9, v8

    .line 988
    .line 989
    const/4 v10, 0x0

    .line 990
    const/4 v11, 0x0

    .line 991
    const/4 v12, 0x0

    .line 992
    const/4 v13, 0x0

    .line 993
    :goto_3e0
    if-ge v10, v4, :cond_41c

    .line 994
    .line 995
    aget-object v14, v5, v10

    .line 996
    .line 997
    invoke-virtual {v14, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    .line 998
    .line 999
    .line 1000
    move-result v14

    .line 1001
    if-eqz v14, :cond_414

    .line 1002
    .line 1003
    if-nez v13, :cond_402

    .line 1004
    .line 1005
    new-array v12, v4, [D

    .line 1006
    .line 1007
    aget-object v13, v5, v10

    .line 1008
    .line 1009
    invoke-virtual {v13, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    .line 1010
    .line 1011
    .line 1012
    move-result v13

    .line 1013
    new-array v14, v7, [I

    .line 1014
    .line 1015
    aput v13, v14, p1

    .line 1016
    .line 1017
    const/4 v15, 0x0

    .line 1018
    aput v4, v14, v15

    .line 1019
    .line 1020
    invoke-static {v1, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v13

    .line 1024
    check-cast v13, [[D

    .line 1025
    .line 1026
    goto :goto_403

    .line 1027
    :cond_402
    const/4 v15, 0x0

    .line 1028
    :goto_403
    aget-object v14, v5, v10

    .line 1029
    .line 1030
    iget v7, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 1031
    .line 1032
    move/from16 v17, v8

    .line 1033
    .line 1034
    float-to-double v7, v7

    .line 1035
    aput-wide v7, v12, v11

    .line 1036
    .line 1037
    aget-object v7, v13, v11

    .line 1038
    .line 1039
    invoke-virtual {v14, v9, v7, v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 1040
    .line 1041
    .line 1042
    add-int/lit8 v11, v11, 0x1

    .line 1043
    .line 1044
    goto :goto_416

    .line 1045
    :cond_414
    move/from16 v17, v8

    .line 1046
    .line 1047
    :goto_416
    add-int/lit8 v10, v10, 0x1

    .line 1048
    .line 1049
    move/from16 v8, v17

    .line 1050
    .line 1051
    const/4 v7, 0x2

    .line 1052
    goto :goto_3e0

    .line 1053
    :cond_41c
    move/from16 v17, v8

    .line 1054
    .line 1055
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 1056
    .line 1057
    .line 1058
    move-result-object v7

    .line 1059
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v8

    .line 1063
    check-cast v8, [[D

    .line 1064
    .line 1065
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1066
    .line 1067
    add-int/lit8 v10, v17, 0x1

    .line 1068
    .line 1069
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 1070
    .line 1071
    invoke-static {v11, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v7

    .line 1075
    aput-object v7, v9, v10

    .line 1076
    .line 1077
    move v8, v10

    .line 1078
    const/4 v7, 0x2

    .line 1079
    goto :goto_3d5

    .line 1080
    :cond_437
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1081
    .line 1082
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 1083
    .line 1084
    invoke-static {v8, v6, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    const/16 v16, 0x0

    .line 1089
    .line 1090
    aput-object v2, v7, v16

    .line 1091
    .line 1092
    aget-object v2, v5, v16

    .line 1093
    .line 1094
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 1095
    .line 1096
    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    .line 1097
    .line 1098
    if-eq v2, v6, :cond_483

    .line 1099
    .line 1100
    new-array v2, v4, [I

    .line 1101
    .line 1102
    new-array v6, v4, [D

    .line 1103
    .line 1104
    const/4 v7, 0x2

    .line 1105
    new-array v8, v7, [I

    .line 1106
    .line 1107
    aput v7, v8, p1

    .line 1108
    .line 1109
    aput v4, v8, v16

    .line 1110
    .line 1111
    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v1

    .line 1115
    check-cast v1, [[D

    .line 1116
    .line 1117
    const/4 v7, 0x0

    .line 1118
    :goto_45d
    if-ge v7, v4, :cond_47b

    .line 1119
    .line 1120
    aget-object v8, v5, v7

    .line 1121
    .line 1122
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 1123
    .line 1124
    aput v9, v2, v7

    .line 1125
    .line 1126
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 1127
    .line 1128
    float-to-double v9, v9

    .line 1129
    aput-wide v9, v6, v7

    .line 1130
    .line 1131
    aget-object v9, v1, v7

    .line 1132
    .line 1133
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 1134
    .line 1135
    float-to-double v10, v10

    .line 1136
    const/16 v16, 0x0

    .line 1137
    .line 1138
    aput-wide v10, v9, v16

    .line 1139
    .line 1140
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 1141
    .line 1142
    float-to-double v10, v8

    .line 1143
    aput-wide v10, v9, p1

    .line 1144
    .line 1145
    add-int/lit8 v7, v7, 0x1

    .line 1146
    .line 1147
    goto :goto_45d

    .line 1148
    :cond_47b
    const/16 v16, 0x0

    .line 1149
    .line 1150
    invoke-static {v2, v6, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v1

    .line 1154
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1155
    .line 1156
    :cond_483
    new-instance v1, Ljava/util/HashMap;

    .line 1157
    .line 1158
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1162
    .line 1163
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 1164
    .line 1165
    if-eqz v1, :cond_4f8

    .line 1166
    .line 1167
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v1

    .line 1171
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1172
    .line 1173
    :goto_494
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v3

    .line 1177
    if-eqz v3, :cond_4c0

    .line 1178
    .line 1179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v3

    .line 1183
    check-cast v3, Ljava/lang/String;

    .line 1184
    .line 1185
    invoke-static {v3}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    if-nez v4, :cond_4a7

    .line 1190
    .line 1191
    goto :goto_494

    .line 1192
    :cond_4a7
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v5

    .line 1196
    if-eqz v5, :cond_4b7

    .line 1197
    .line 1198
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v5

    .line 1202
    if-eqz v5, :cond_4b7

    .line 1203
    .line 1204
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    .line 1205
    .line 1206
    .line 1207
    move-result v2

    .line 1208
    :cond_4b7
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1212
    .line 1213
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    goto :goto_494

    .line 1217
    :cond_4c0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 1218
    .line 1219
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1220
    .line 1221
    .line 1222
    move-result v3

    .line 1223
    move/from16 v6, v16

    .line 1224
    .line 1225
    :cond_4c8
    :goto_4c8
    if-ge v6, v3, :cond_4de

    .line 1226
    .line 1227
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v4

    .line 1231
    add-int/lit8 v6, v6, 0x1

    .line 1232
    .line 1233
    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    .line 1234
    .line 1235
    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 1236
    .line 1237
    if-eqz v5, :cond_4c8

    .line 1238
    .line 1239
    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyCycle;

    .line 1240
    .line 1241
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1242
    .line 1243
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 1244
    .line 1245
    .line 1246
    goto :goto_4c8

    .line 1247
    :cond_4de
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 1248
    .line 1249
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v1

    .line 1253
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    :goto_4e8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v3

    .line 1261
    if-eqz v3, :cond_4f8

    .line 1262
    .line 1263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v3

    .line 1267
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 1268
    .line 1269
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    .line 1270
    .line 1271
    .line 1272
    goto :goto_4e8

    .line 1273
    :cond_4f8
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " start: x: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 9
    .line 10
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " y: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 21
    .line 22
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " end: x: "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 33
    .line 34
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 43
    .line 44
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
