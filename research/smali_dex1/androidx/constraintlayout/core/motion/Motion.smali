.class public Landroidx/constraintlayout/core/motion/Motion;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


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
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
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
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field public mId:Ljava/lang/String;

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

.field private mMaxDimension:I

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field mRelativeMotion:Landroidx/constraintlayout/core/motion/Motion;

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroidx/constraintlayout/core/motion/MotionWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTempRect:Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 13
    .line 14
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 15
    .line 16
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 20
    .line 21
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 22
    .line 23
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 27
    .line 28
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 29
    .line 30
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 34
    .line 35
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 36
    .line 37
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 41
    .line 42
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 43
    .line 44
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 48
    .line 49
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMaxDimension:I

    .line 55
    .line 56
    new-array v2, v2, [F

    .line 57
    .line 58
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 59
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    new-array v2, v2, [F

    .line 69
    .line 70
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 71
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 78
    .line 79
    const/4 v2, -0x1

    .line 80
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 81
    .line 82
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    iput-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 86
    .line 87
    iput v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    .line 88
    .line 89
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 90
    .line 91
    iput-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 92
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/Motion;->setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 96
    .line 97
    .line 98
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
    iget v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

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
    iget v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

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
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 42
    .line 43
    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v8, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 63
    .line 64
    iget-object v9, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 65
    .line 66
    if-eqz v9, :cond_35

    .line 67
    .line 68
    iget v10, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget v6, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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

.method private static getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;
    .registers 3

    .line 1
    const/4 p2, -0x1

    .line 2
    if-eq p0, p2, :cond_5

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_5
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Landroidx/constraintlayout/core/motion/Motion$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/motion/Motion$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 13
    .line 14
    .line 15
    return-object p1
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
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 28
    .line 29
    iget-object v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 30
    .line 31
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v11, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 55
    .line 56
    move/from16 v19, v1

    .line 57
    .line 58
    iget-object v1, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 59
    .line 60
    if-eqz v1, :cond_54

    .line 61
    .line 62
    move-object/from16 v21, v1

    .line 63
    .line 64
    iget v1, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget v1, v11, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 121
    .line 122
    aget-object v1, v1, v20

    .line 123
    .line 124
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 125
    .line 126
    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 127
    .line 128
    .line 129
    move v11, v2

    .line 130
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 131
    .line 132
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 133
    .line 134
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

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

.method private insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    const/4 v3, 0x0

    .line 9
    :cond_8
    :goto_8
    if-ge v3, v1, :cond_1c

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 18
    .line 19
    iget v5, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 20
    .line 21
    iget v6, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 22
    .line 23
    cmpl-float v5, v5, v6

    .line 24
    .line 25
    if-nez v5, :cond_8

    .line 26
    .line 27
    move-object v2, v4

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    if-eqz v2, :cond_23

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_45

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, " KeyPath position \""

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, "\" outside of range"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "MotionController"

    .line 66
    .line 67
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 71
    .line 72
    neg-int v0, v0

    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private setupRelative()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mRelativeMotion:Landroidx/constraintlayout/core/motion/Motion;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 9
    .line 10
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mRelativeMotion:Landroidx/constraintlayout/core/motion/Motion;

    .line 16
    .line 17
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

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
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

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
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 48
    .line 49
    :goto_30
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

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
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

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
    iget v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

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
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 98
    .line 99
    iget-object v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 100
    .line 101
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v15, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 119
    .line 120
    iget-object v3, v15, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 121
    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    if-eqz v3, :cond_8f

    .line 125
    .line 126
    iget v4, v15, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget v3, v15, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 172
    .line 173
    aget-object v3, v3, v16

    .line 174
    .line 175
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 176
    .line 177
    invoke-virtual {v3, v7, v8, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 178
    .line 179
    .line 180
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 181
    .line 182
    if-eqz v3, :cond_bf

    .line 183
    .line 184
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 193
    .line 194
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 195
    .line 196
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 197
    .line 198
    mul-int/lit8 v7, v5, 0x2

    .line 199
    .line 200
    move-object/from16 v8, p1

    .line 201
    .line 202
    invoke-virtual {v3, v4, v6, v8, v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

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
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 31
    .line 32
    add-int/lit8 v7, v4, 0x1

    .line 33
    .line 34
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

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
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 46
    .line 47
    aget-object v3, v3, v0

    .line 48
    .line 49
    aget-wide v4, v1, p2

    .line 50
    .line 51
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 52
    .line 53
    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 59
    .line 60
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/core/motion/MotionPaths;->getBounds([I[D[FI)V

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

.method public buildKeyFrames([F[I[I)I
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6b

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 31
    .line 32
    add-int/lit8 v7, v4, 0x1

    .line 33
    .line 34
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

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
    if-eqz p3, :cond_47

    .line 41
    .line 42
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    move v3, v0

    .line 49
    move v4, v3

    .line 50
    :goto_31
    if-ge v4, v2, :cond_47

    .line 51
    .line 52
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    check-cast v5, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 59
    .line 60
    add-int/lit8 v6, v3, 0x1

    .line 61
    .line 62
    const/high16 v7, 0x42c80000    # 100.0f

    .line 63
    .line 64
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 65
    .line 66
    mul-float/2addr v5, v7

    .line 67
    float-to-int v5, v5

    .line 68
    aput v5, p3, v3

    .line 69
    .line 70
    move v3, v6

    .line 71
    goto :goto_31

    .line 72
    :cond_47
    move p2, v0

    .line 73
    move v8, p2

    .line 74
    :goto_49
    array-length p3, v1

    .line 75
    if-ge p2, p3, :cond_68

    .line 76
    .line 77
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 78
    .line 79
    aget-object p3, p3, v0

    .line 80
    .line 81
    aget-wide v2, v1, p2

    .line 82
    .line 83
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 84
    .line 85
    invoke-virtual {p3, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 89
    .line 90
    aget-wide v3, v1, p2

    .line 91
    .line 92
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 93
    .line 94
    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 95
    .line 96
    move-object v7, p1

    .line 97
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v8, v8, 0x2

    .line 101
    .line 102
    add-int/lit8 p2, p2, 0x1

    .line 103
    .line 104
    goto :goto_49

    .line 105
    :cond_68
    div-int/lit8 v8, v8, 0x2

    .line 106
    .line 107
    return v8

    .line 108
    :cond_6b
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
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 52
    .line 53
    :goto_34
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

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
    iget v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

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
    iget v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

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
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 102
    .line 103
    iget-object v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 104
    .line 105
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 127
    .line 128
    move/from16 v19, v2

    .line 129
    .line 130
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 131
    .line 132
    if-eqz v2, :cond_9b

    .line 133
    .line 134
    move-object/from16 v20, v2

    .line 135
    .line 136
    iget v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

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
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 190
    .line 191
    aget-object v1, v1, v18

    .line 192
    .line 193
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 194
    .line 195
    invoke-virtual {v1, v11, v12, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 199
    .line 200
    if-eqz v1, :cond_d1

    .line 201
    .line 202
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 211
    .line 212
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 213
    .line 214
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    invoke-virtual/range {v20 .. v26}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

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
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    float-to-double v1, p1

    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

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
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 19
    .line 20
    aget-object v4, v4, v0

    .line 21
    .line 22
    float-to-double v5, v3

    .line 23
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 24
    .line 25
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 29
    .line 30
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 31
    .line 32
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 33
    .line 34
    mul-int/lit8 v6, v2, 0x8

    .line 35
    .line 36
    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/core/motion/MotionPaths;->getRect([I[D[FI)V

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
    .registers 2

    .line 1
    return-void
.end method

.method public getAnimateRelativeTo()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public getAttributeValues(Ljava/lang/String;[FI)I
    .registers 5

    .line 1
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 28
    .line 29
    move-wide v2, p1

    .line 30
    move-object v6, p3

    .line 31
    move-object v8, p4

    .line 32
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[F[D[F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public getCenterX()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterX:F

    .line 2
    .line 3
    return v0
.end method

.method public getCenterY()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurrentCenterY:F

    .line 2
    .line 3
    return v0
.end method

.method public getDpDt(FFF[F)V
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

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
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 21
    .line 22
    aget-object p1, p1, v1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 25
    .line 26
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 30
    .line 31
    aget p1, p1, v1

    .line 32
    .line 33
    :goto_20
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

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
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 48
    .line 49
    if-eqz p1, :cond_50

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 62
    .line 63
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 67
    .line 68
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 69
    .line 70
    iget-object v9, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 71
    .line 72
    iget-object v10, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 73
    .line 74
    move v5, p2

    .line 75
    move v6, p3

    .line 76
    move-object v7, p4

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 85
    .line 86
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 87
    .line 88
    iget-object v10, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 89
    .line 90
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 98
    .line 99
    iget p2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 100
    .line 101
    iget-object p3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 102
    .line 103
    iget p4, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 104
    .line 105
    sub-float/2addr p2, p4

    .line 106
    iget p4, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 107
    .line 108
    iget v0, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 109
    .line 110
    sub-float/2addr p4, v0

    .line 111
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 112
    .line 113
    iget v2, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 114
    .line 115
    sub-float/2addr v0, v2

    .line 116
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 117
    .line 118
    iget p3, p3, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

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
    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 21
    .line 22
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

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
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 30
    .line 31
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 4
    .line 5
    return v0
.end method

.method public getFinalWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 4
    .line 5
    return v0
.end method

.method public getFinalX()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 4
    .line 5
    return v0
.end method

.method public getFinalY()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 4
    .line 5
    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/core/motion/MotionPaths;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

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
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v15, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 28
    .line 29
    iget v3, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

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
    iget v4, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

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
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 55
    .line 56
    aget-object v4, v4, v11

    .line 57
    .line 58
    float-to-double v5, v3

    .line 59
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 60
    .line 61
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 65
    .line 66
    move-wide v4, v5

    .line 67
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 68
    .line 69
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

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
    instance-of v5, v15, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 97
    .line 98
    if-eqz v5, :cond_7f

    .line 99
    .line 100
    check-cast v15, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 101
    .line 102
    add-int/lit8 v3, v13, 0x5

    .line 103
    .line 104
    iget v5, v15, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 105
    .line 106
    aput v5, p2, v3

    .line 107
    .line 108
    add-int/lit8 v3, v13, 0x6

    .line 109
    .line 110
    iget v5, v15, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

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
    iget v5, v15, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 6
    .line 7
    iget v3, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 8
    .line 9
    sub-float/2addr v1, v3

    .line 10
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 11
    .line 12
    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 13
    .line 14
    sub-float/2addr v0, v4

    .line 15
    iget v5, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 16
    .line 17
    const/high16 v6, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v5, v6

    .line 20
    add-float/2addr v5, v3

    .line 21
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v5, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 20
    .line 21
    add-int/lit8 v12, v3, 0x1

    .line 22
    .line 23
    iget v4, v5, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 24
    .line 25
    iget v5, v5, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

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
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 37
    .line 38
    aget-object v4, v4, v2

    .line 39
    .line 40
    float-to-double v5, v3

    .line 41
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 42
    .line 43
    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 49
    .line 50
    iget-object v8, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 51
    .line 52
    move-object v9, p2

    .line 53
    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

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

.method public getMotionStagger()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

    .line 2
    .line 3
    return v0
.end method

.method public getPos(D)[D
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 12
    .line 13
    if-eqz v0, :cond_16

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 24
    .line 25
    return-object p1
.end method

.method public getPositionKeyframe(IIFF)Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;
    .registers 15

    .line 1
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 2
    .line 3
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 7
    .line 8
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 9
    .line 10
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 11
    .line 12
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 13
    .line 14
    iput v2, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 15
    .line 16
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 17
    .line 18
    add-float/2addr v1, v4

    .line 19
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 20
    .line 21
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 22
    .line 23
    add-float/2addr v2, v0

    .line 24
    iput v2, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 25
    .line 26
    new-instance v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 27
    .line 28
    invoke-direct {v4}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 32
    .line 33
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 34
    .line 35
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 36
    .line 37
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 38
    .line 39
    iput v2, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 40
    .line 41
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 42
    .line 43
    add-float/2addr v1, v5

    .line 44
    iput v1, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 45
    .line 46
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 47
    .line 48
    add-float/2addr v2, v0

    .line 49
    iput v2, v4, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 50
    .line 51
    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

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
    check-cast v1, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 67
    .line 68
    instance-of v0, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 69
    .line 70
    if-eqz v0, :cond_55

    .line 71
    .line 72
    move-object v0, v1

    .line 73
    check-cast v0, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

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
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->intersects(IILandroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF)Z

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
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 41
    .line 42
    const-string v8, "rotationZ"

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
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

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
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 93
    .line 94
    :goto_5d
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v6, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 105
    .line 106
    :goto_69
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v8, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 117
    .line 118
    :goto_75
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v10, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 129
    .line 130
    :goto_81
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

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
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

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
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 168
    .line 169
    if-eqz v13, :cond_d9

    .line 170
    .line 171
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 181
    .line 182
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 183
    .line 184
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 185
    .line 186
    .line 187
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 188
    .line 189
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 190
    .line 191
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 192
    .line 193
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 219
    .line 220
    const/4 v14, 0x0

    .line 221
    if-eqz v13, :cond_12a

    .line 222
    .line 223
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 224
    .line 225
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 230
    .line 231
    aget-object v2, v2, v14

    .line 232
    .line 233
    float-to-double v3, v1

    .line 234
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 235
    .line 236
    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 240
    .line 241
    aget-object v1, v1, v14

    .line 242
    .line 243
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 244
    .line 245
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 249
    .line 250
    aget v1, v1, v14

    .line 251
    .line 252
    :goto_fb
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

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
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 267
    .line 268
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 269
    .line 270
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

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
    invoke-virtual/range {v13 .. v19}, Landroidx/constraintlayout/core/motion/MotionPaths;->setDpDt(FF[F[I[D[D)V

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
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 300
    .line 301
    iget v15, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 302
    .line 303
    move/from16 p1, v14

    .line 304
    .line 305
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 306
    .line 307
    iget v0, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 308
    .line 309
    sub-float/2addr v15, v0

    .line 310
    iget v0, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 311
    .line 312
    move/from16 v16, v0

    .line 313
    .line 314
    iget v0, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 315
    .line 316
    sub-float v0, v16, v0

    .line 317
    .line 318
    move/from16 v16, v0

    .line 319
    .line 320
    iget v0, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 321
    .line 322
    move/from16 v17, v0

    .line 323
    .line 324
    iget v0, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 325
    .line 326
    sub-float v0, v17, v0

    .line 327
    .line 328
    iget v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 329
    .line 330
    iget v14, v14, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

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
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 4
    .line 5
    return v0
.end method

.method public getStartWidth()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 4
    .line 5
    return v0
.end method

.method public getStartX()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 4
    .line 5
    return v0
.end method

.method public getStartY()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 4
    .line 5
    return v0
.end method

.method public getTransformPivotTarget()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 2
    .line 3
    return v0
.end method

.method public getView()Landroidx/constraintlayout/core/motion/MotionWidget;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 2
    .line 3
    return-object v0
.end method

.method public interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .registers 22

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
    invoke-direct {v0, v3, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/high16 v9, 0x3f800000    # 1.0f

    .line 16
    .line 17
    const/4 v10, -0x1

    .line 18
    if-eq v3, v10, :cond_42

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    div-float v3, v9, v3

    .line 22
    .line 23
    div-float v4, v1, v3

    .line 24
    .line 25
    float-to-double v4, v4

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    double-to-float v4, v4

    .line 31
    mul-float/2addr v4, v3

    .line 32
    rem-float/2addr v1, v3

    .line 33
    div-float/2addr v1, v3

    .line 34
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_2d

    .line 41
    .line 42
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 43
    .line 44
    add-float/2addr v1, v5

    .line 45
    rem-float/2addr v1, v9

    .line 46
    :cond_2d
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 47
    .line 48
    if-eqz v5, :cond_36

    .line 49
    .line 50
    invoke-interface {v5, v1}, Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;->getInterpolation(F)F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_40

    .line 55
    :cond_36
    float-to-double v5, v1

    .line 56
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 57
    .line 58
    cmpl-double v1, v5, v11

    .line 59
    .line 60
    if-lez v1, :cond_3f

    .line 61
    .line 62
    move v1, v9

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v1, v8

    .line 65
    :goto_40
    mul-float/2addr v1, v3

    .line 66
    add-float/2addr v1, v4

    .line 67
    :cond_42
    move v3, v1

    .line 68
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 69
    .line 70
    if-eqz v1, :cond_5f

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5f

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 91
    .line 92
    invoke-virtual {v4, v2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V

    .line 93
    .line 94
    .line 95
    goto :goto_4f

    .line 96
    :cond_5f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 97
    .line 98
    const/4 v11, 0x1

    .line 99
    const/4 v12, 0x0

    .line 100
    if-eqz v1, :cond_15a

    .line 101
    .line 102
    aget-object v1, v1, v12

    .line 103
    .line 104
    float-to-double v13, v3

    .line 105
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 106
    .line 107
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 111
    .line 112
    aget-object v1, v1, v12

    .line 113
    .line 114
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 115
    .line 116
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 120
    .line 121
    if-eqz v1, :cond_89

    .line 122
    .line 123
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 124
    .line 125
    array-length v5, v4

    .line 126
    if-lez v5, :cond_89

    .line 127
    .line 128
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 132
    .line 133
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 134
    .line 135
    invoke-virtual {v1, v13, v14, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 136
    .line 137
    .line 138
    :cond_89
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 139
    .line 140
    if-nez v1, :cond_9f

    .line 141
    .line 142
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 143
    .line 144
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 145
    .line 146
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 147
    .line 148
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    move v15, v3

    .line 152
    move-object v3, v2

    .line 153
    move v2, v15

    .line 154
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V

    .line 155
    .line 156
    .line 157
    move-object v15, v3

    .line 158
    move v3, v2

    .line 159
    move-object v2, v15

    .line 160
    :cond_9f
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 161
    .line 162
    if-eq v1, v10, :cond_fd

    .line 163
    .line 164
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 165
    .line 166
    if-nez v1, :cond_b3

    .line 167
    .line 168
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 179
    .line 180
    :cond_b3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 181
    .line 182
    if-eqz v1, :cond_fd

    .line 183
    .line 184
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 189
    .line 190
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    add-int/2addr v4, v1

    .line 195
    int-to-float v1, v4

    .line 196
    const/high16 v4, 0x40000000    # 2.0f

    .line 197
    .line 198
    div-float/2addr v1, v4

    .line 199
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 200
    .line 201
    invoke-virtual {v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 206
    .line 207
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    add-int/2addr v6, v5

    .line 212
    int-to-float v5, v6

    .line 213
    div-float/2addr v5, v4

    .line 214
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    sub-int/2addr v4, v6

    .line 223
    if-lez v4, :cond_fd

    .line 224
    .line 225
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    sub-int/2addr v4, v6

    .line 234
    if-lez v4, :cond_fd

    .line 235
    .line 236
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    int-to-float v4, v4

    .line 241
    sub-float/2addr v5, v4

    .line 242
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    int-to-float v4, v4

    .line 247
    sub-float/2addr v1, v4

    .line 248
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotX(F)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotY(F)V

    .line 252
    .line 253
    .line 254
    :cond_fd
    move v1, v11

    .line 255
    :goto_fe
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 256
    .line 257
    array-length v5, v4

    .line 258
    if-ge v1, v5, :cond_122

    .line 259
    .line 260
    aget-object v4, v4, v1

    .line 261
    .line 262
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 263
    .line 264
    invoke-virtual {v4, v13, v14, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 265
    .line 266
    .line 267
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 268
    .line 269
    iget-object v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 270
    .line 271
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 272
    .line 273
    add-int/lit8 v6, v1, -0x1

    .line 274
    .line 275
    aget-object v5, v5, v6

    .line 276
    .line 277
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 282
    .line 283
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 284
    .line 285
    invoke-virtual {v4, v2, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    .line 286
    .line 287
    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 289
    .line 290
    goto :goto_fe

    .line 291
    :cond_122
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 292
    .line 293
    iget v4, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 294
    .line 295
    if-nez v4, :cond_148

    .line 296
    .line 297
    cmpg-float v4, v3, v8

    .line 298
    .line 299
    if-gtz v4, :cond_132

    .line 300
    .line 301
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibility:I

    .line 302
    .line 303
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_148

    .line 307
    :cond_132
    cmpl-float v4, v3, v9

    .line 308
    .line 309
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 310
    .line 311
    if-ltz v4, :cond_13e

    .line 312
    .line 313
    iget v1, v5, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibility:I

    .line 314
    .line 315
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_148

    .line 319
    :cond_13e
    iget v4, v5, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibility:I

    .line 320
    .line 321
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibility:I

    .line 322
    .line 323
    if-eq v4, v1, :cond_148

    .line 324
    .line 325
    const/4 v1, 0x4

    .line 326
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    :cond_148
    :goto_148
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 330
    .line 331
    if-eqz v1, :cond_18b

    .line 332
    .line 333
    move v1, v12

    .line 334
    :goto_14d
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 335
    .line 336
    array-length v5, v4

    .line 337
    if-ge v1, v5, :cond_18b

    .line 338
    .line 339
    aget-object v4, v4, v1

    .line 340
    .line 341
    invoke-virtual {v4, v3, v2}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 342
    .line 343
    .line 344
    add-int/lit8 v1, v1, 0x1

    .line 345
    .line 346
    goto :goto_14d

    .line 347
    :cond_15a
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 348
    .line 349
    iget v4, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 350
    .line 351
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 352
    .line 353
    iget v6, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 354
    .line 355
    invoke-static {v6, v4, v3, v4}, Lai/onnxruntime/a;->b(FFFF)F

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    iget v6, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 360
    .line 361
    iget v7, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 362
    .line 363
    invoke-static {v7, v6, v3, v6}, Lai/onnxruntime/a;->b(FFFF)F

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    iget v7, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 368
    .line 369
    iget v8, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 370
    .line 371
    invoke-static {v8, v7, v3, v7}, Lai/onnxruntime/a;->b(FFFF)F

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 376
    .line 377
    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 378
    .line 379
    invoke-static {v5, v1, v3, v1}, Lai/onnxruntime/a;->b(FFFF)F

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    const/high16 v5, 0x3f000000    # 0.5f

    .line 384
    .line 385
    add-float/2addr v4, v5

    .line 386
    float-to-int v8, v4

    .line 387
    add-float/2addr v6, v5

    .line 388
    float-to-int v5, v6

    .line 389
    add-float/2addr v4, v7

    .line 390
    float-to-int v4, v4

    .line 391
    add-float/2addr v6, v1

    .line 392
    float-to-int v1, v6

    .line 393
    invoke-virtual {v2, v8, v5, v4, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    .line 394
    .line 395
    .line 396
    :cond_18b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 397
    .line 398
    if-eqz v1, :cond_1b9

    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v8

    .line 408
    :goto_197
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-eqz v1, :cond_1b9

    .line 413
    .line 414
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 419
    .line 420
    instance-of v4, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    .line 421
    .line 422
    if-eqz v4, :cond_1b5

    .line 423
    .line 424
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    .line 425
    .line 426
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 427
    .line 428
    aget-wide v5, v4, v12

    .line 429
    .line 430
    aget-wide v9, v4, v11

    .line 431
    .line 432
    move-wide v4, v5

    .line 433
    move-wide v6, v9

    .line 434
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V

    .line 435
    .line 436
    .line 437
    goto :goto_197

    .line 438
    :cond_1b5
    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    .line 439
    .line 440
    .line 441
    goto :goto_197

    .line 442
    :cond_1b9
    return v12
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public positionKeyframe(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;FF[Ljava/lang/String;[F)V
    .registers 15

    .line 1
    new-instance v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 2
    .line 3
    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 7
    .line 8
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 9
    .line 10
    iput v1, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 11
    .line 12
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 13
    .line 14
    iput v3, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 15
    .line 16
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 17
    .line 18
    add-float/2addr v1, v4

    .line 19
    iput v1, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 20
    .line 21
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 22
    .line 23
    add-float/2addr v3, v0

    .line 24
    iput v3, v2, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

    .line 25
    .line 26
    new-instance v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;

    .line 27
    .line 28
    invoke-direct {v3}, Landroidx/constraintlayout/core/motion/utils/FloatRect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 32
    .line 33
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 34
    .line 35
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->left:F

    .line 36
    .line 37
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 38
    .line 39
    iput v4, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->top:F

    .line 40
    .line 41
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 42
    .line 43
    add-float/2addr v1, v5

    .line 44
    iput v1, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->right:F

    .line 45
    .line 46
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 47
    .line 48
    add-float/2addr v4, v0

    .line 49
    iput v4, v3, Landroidx/constraintlayout/core/motion/utils/FloatRect;->bottom:F

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
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->positionAttributes(Landroidx/constraintlayout/core/motion/MotionWidget;Landroidx/constraintlayout/core/motion/utils/FloatRect;Landroidx/constraintlayout/core/motion/utils/FloatRect;FF[Ljava/lang/String;[F)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public rotate(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/utils/Rect;III)V
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
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 15
    .line 16
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr p3, p5

    .line 19
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 20
    .line 21
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 22
    .line 23
    add-int/2addr p5, v0

    .line 24
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

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
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    sub-int/2addr p3, p4

    .line 38
    div-int/2addr p3, v1

    .line 39
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 40
    .line 41
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    add-int/2addr p4, p3

    .line 48
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 49
    .line 50
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    add-int/2addr p1, p3

    .line 57
    iput p1, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 61
    .line 62
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 63
    .line 64
    add-int/2addr p3, p4

    .line 65
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    div-int/2addr p4, v1

    .line 70
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 71
    .line 72
    add-int/2addr p4, v0

    .line 73
    div-int/lit8 v0, p3, 0x2

    .line 74
    .line 75
    sub-int/2addr p4, v0

    .line 76
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

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
    iput p5, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 86
    .line 87
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    add-int/2addr p4, p3

    .line 94
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 95
    .line 96
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    add-int/2addr p1, p3

    .line 103
    iput p1, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 104
    .line 105
    return-void

    .line 106
    :cond_69
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 107
    .line 108
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 109
    .line 110
    add-int/2addr p3, p5

    .line 111
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 112
    .line 113
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 114
    .line 115
    add-int/2addr p5, v0

    .line 116
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

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
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 126
    .line 127
    .line 128
    move-result p4

    .line 129
    sub-int/2addr p3, p4

    .line 130
    div-int/2addr p3, v1

    .line 131
    iput p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 132
    .line 133
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 136
    .line 137
    .line 138
    move-result p4

    .line 139
    add-int/2addr p4, p3

    .line 140
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 141
    .line 142
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 143
    .line 144
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    add-int/2addr p1, p3

    .line 149
    iput p1, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 150
    .line 151
    return-void

    .line 152
    :cond_97
    iget p3, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 153
    .line 154
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 155
    .line 156
    add-int/2addr p3, p4

    .line 157
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 158
    .line 159
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 160
    .line 161
    add-int/2addr p4, v0

    .line 162
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    sub-int/2addr p4, v0

    .line 167
    div-int/2addr p4, v1

    .line 168
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 169
    .line 170
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

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
    iput p5, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 178
    .line 179
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 180
    .line 181
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 182
    .line 183
    .line 184
    move-result p4

    .line 185
    add-int/2addr p4, p3

    .line 186
    iput p4, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 187
    .line 188
    iget p3, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    add-int/2addr p1, p3

    .line 195
    iput p1, p2, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 196
    .line 197
    return-void
.end method

.method public setBothStates(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    int-to-float v3, v3

    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    int-to-float v4, v4

    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    int-to-float v2, v2

    .line 46
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    int-to-float v4, v4

    .line 56
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setDrawPath(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 4
    .line 5
    return-void
.end method

.method public setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 6
    .line 7
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/Motion;->readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-float v4, v4

    .line 34
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setIdString(Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 4
    .line 5
    iput-object p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mId:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 2
    .line 3
    return-void
.end method

.method public setStaggerOffset(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerOffset:F

    .line 2
    .line 3
    return-void
.end method

.method public setStaggerScale(F)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    .line 2
    .line 3
    return-void
.end method

.method public setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidgetFrame()Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->getMotionProperties()Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_35

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->applyDelta(Landroidx/constraintlayout/core/motion/utils/TypedValues;)V

    .line 52
    .line 53
    .line 54
    :cond_35
    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/core/motion/utils/ViewState;Landroidx/constraintlayout/core/motion/MotionWidget;III)V
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 5
    .line 6
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 7
    .line 8
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

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
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    .line 21
    .line 22
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    .line 23
    .line 24
    add-int/2addr p4, v1

    .line 25
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    .line 28
    .line 29
    add-int/2addr v1, v3

    .line 30
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

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
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    sub-int/2addr p4, p5

    .line 44
    div-int/2addr p4, v2

    .line 45
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 46
    .line 47
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    add-int/2addr p5, p4

    .line 54
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 55
    .line 56
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 59
    .line 60
    .line 61
    move-result p5

    .line 62
    add-int/2addr p5, p4

    .line 63
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 64
    .line 65
    goto :goto_6e

    .line 66
    :cond_41
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    .line 67
    .line 68
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    .line 69
    .line 70
    add-int/2addr p5, v1

    .line 71
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    .line 72
    .line 73
    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    .line 74
    .line 75
    add-int/2addr v1, v3

    .line 76
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    sub-int/2addr v1, v3

    .line 81
    div-int/2addr v1, v2

    .line 82
    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

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
    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 92
    .line 93
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    .line 96
    .line 97
    .line 98
    move-result p5

    .line 99
    add-int/2addr p5, p4

    .line 100
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 101
    .line 102
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    .line 105
    .line 106
    .line 107
    move-result p5

    .line 108
    add-int/2addr p5, p4

    .line 109
    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 110
    .line 111
    :goto_6e
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 112
    .line 113
    iget p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 114
    .line 115
    int-to-float p5, p5

    .line 116
    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 117
    .line 118
    int-to-float v1, v1

    .line 119
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    int-to-float v2, v2

    .line 124
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    int-to-float v3, v3

    .line 129
    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 130
    .line 131
    .line 132
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 133
    .line 134
    iget p1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    .line 135
    .line 136
    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public setTransformPivotTarget(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 5
    .line 6
    return-void
.end method

.method public setValue(IF)Z
    .registers 5

    const/16 v0, 0x25a

    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    .line 32
    iput p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    return v1

    :cond_8
    const/16 v0, 0x258

    if-ne v0, p1, :cond_f

    .line 33
    iput p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionStagger:F

    return v1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public setValue(II)Z
    .registers 5

    const/16 v0, 0x1fd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_13

    const/16 v0, 0x262

    if-eq p1, v0, :cond_10

    const/16 p2, 0x2c0

    if-eq p1, p2, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    return v1

    .line 30
    :cond_10
    iput p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    return v1

    .line 31
    :cond_13
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/Motion;->setPathMotionArc(I)V

    return v1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 6

    .line 1
    const/16 v0, 0x2c1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_15

    .line 6
    .line 7
    const/16 v0, 0x263

    .line 8
    .line 9
    if-ne v0, p1, :cond_b

    .line 10
    .line 11
    goto :goto_15

    .line 12
    :cond_b
    const/16 v0, 0x25d

    .line 13
    .line 14
    if-ne v0, p1, :cond_14

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 17
    .line 18
    iput-object p2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 19
    .line 20
    return v2

    .line 21
    :cond_14
    return v1

    .line 22
    :cond_15
    :goto_15
    const/4 p1, -0x1

    .line 23
    invoke-static {p1, p2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    .line 28
    .line 29
    return v2
.end method

.method public setValue(IZ)Z
    .registers 3

    .line 34
    const/4 p1, 0x0

    return p1
.end method

.method public setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 2
    .line 3
    return-void
.end method

.method public setup(IIFJ)V
    .registers 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p4

    .line 4
    .line 5
    new-instance v3, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v4, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v5, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v6, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/Motion;->setupRelative()V

    .line 31
    .line 32
    .line 33
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 34
    .line 35
    const/4 v8, -0x1

    .line 36
    if-eq v7, v8, :cond_2d

    .line 37
    .line 38
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 39
    .line 40
    iget v10, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 41
    .line 42
    if-ne v10, v8, :cond_2d

    .line 43
    .line 44
    iput v7, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 45
    .line 46
    :cond_2d
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 47
    .line 48
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 49
    .line 50
    invoke-virtual {v7, v9, v4}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 51
    .line 52
    .line 53
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    if-eqz v7, :cond_98

    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    move v13, v9

    .line 63
    const/4 v12, 0x0

    .line 64
    :cond_3f
    :goto_3f
    if-ge v13, v11, :cond_99

    .line 65
    .line 66
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    add-int/lit8 v13, v13, 0x1

    .line 71
    .line 72
    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 73
    .line 74
    instance-of v15, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 75
    .line 76
    if-eqz v15, :cond_70

    .line 77
    .line 78
    move-object/from16 v19, v14

    .line 79
    .line 80
    check-cast v19, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 81
    .line 82
    new-instance v16, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 83
    .line 84
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 85
    .line 86
    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 87
    .line 88
    move/from16 v17, p1

    .line 89
    .line 90
    move/from16 v18, p2

    .line 91
    .line 92
    move-object/from16 v20, v14

    .line 93
    .line 94
    move-object/from16 v21, v15

    .line 95
    .line 96
    invoke-direct/range {v16 .. v21}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 97
    .line 98
    .line 99
    move-object/from16 v15, v16

    .line 100
    .line 101
    move-object/from16 v14, v19

    .line 102
    .line 103
    invoke-direct {v0, v15}, Landroidx/constraintlayout/core/motion/Motion;->insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 104
    .line 105
    .line 106
    iget v14, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    .line 107
    .line 108
    if-eq v14, v8, :cond_3f

    .line 109
    .line 110
    iput v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 111
    .line 112
    goto :goto_3f

    .line 113
    :cond_70
    instance-of v15, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    .line 114
    .line 115
    if-eqz v15, :cond_78

    .line 116
    .line 117
    invoke-virtual {v14, v5}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3f

    .line 121
    :cond_78
    instance-of v15, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 122
    .line 123
    if-eqz v15, :cond_80

    .line 124
    .line 125
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3f

    .line 129
    :cond_80
    instance-of v15, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 130
    .line 131
    if-eqz v15, :cond_91

    .line 132
    .line 133
    if-nez v12, :cond_8b

    .line 134
    .line 135
    new-instance v12, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    :cond_8b
    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 141
    .line 142
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_3f

    .line 146
    :cond_91
    invoke-virtual {v14, v6}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setInterpolation(Ljava/util/HashMap;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v14, v4}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3f

    .line 153
    :cond_98
    const/4 v12, 0x0

    .line 154
    :cond_99
    if-eqz v12, :cond_a5

    .line 155
    .line 156
    new-array v7, v9, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 157
    .line 158
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    check-cast v7, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 163
    .line 164
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 165
    .line 166
    :cond_a5
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    const-string v11, ","

    .line 171
    .line 172
    const-string v12, "CUSTOM,"

    .line 173
    .line 174
    const/4 v13, 0x1

    .line 175
    if-nez v7, :cond_19a

    .line 176
    .line 177
    new-instance v7, Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    :goto_bb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-eqz v14, :cond_12e

    .line 193
    .line 194
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    check-cast v14, Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v15

    .line 204
    if-eqz v15, :cond_110

    .line 205
    .line 206
    new-instance v15, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    .line 207
    .line 208
    invoke-direct {v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v16

    .line 215
    aget-object v10, v16, v13

    .line 216
    .line 217
    move/from16 p1, v13

    .line 218
    .line 219
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v8

    .line 225
    :goto_e0
    if-ge v9, v8, :cond_107

    .line 226
    .line 227
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v18

    .line 231
    add-int/lit8 v9, v9, 0x1

    .line 232
    .line 233
    move-object/from16 v19, v3

    .line 234
    .line 235
    move-object/from16 v3, v18

    .line 236
    .line 237
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 238
    .line 239
    move-object/from16 v18, v5

    .line 240
    .line 241
    iget-object v5, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    .line 242
    .line 243
    if-nez v5, :cond_f9

    .line 244
    .line 245
    :cond_f4
    :goto_f4
    move-object/from16 v5, v18

    .line 246
    .line 247
    move-object/from16 v3, v19

    .line 248
    .line 249
    goto :goto_e0

    .line 250
    :cond_f9
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 255
    .line 256
    if-eqz v5, :cond_f4

    .line 257
    .line 258
    iget v3, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 259
    .line 260
    invoke-virtual {v15, v3, v5}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    .line 261
    .line 262
    .line 263
    goto :goto_f4

    .line 264
    :cond_107
    move-object/from16 v19, v3

    .line 265
    .line 266
    move-object/from16 v18, v5

    .line 267
    .line 268
    invoke-static {v14, v15}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    goto :goto_11a

    .line 273
    :cond_110
    move-object/from16 v19, v3

    .line 274
    .line 275
    move-object/from16 v18, v5

    .line 276
    .line 277
    move/from16 p1, v13

    .line 278
    .line 279
    invoke-static {v14, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    :goto_11a
    if-nez v3, :cond_125

    .line 284
    .line 285
    :goto_11c
    move/from16 v13, p1

    .line 286
    .line 287
    move-object/from16 v5, v18

    .line 288
    .line 289
    move-object/from16 v3, v19

    .line 290
    .line 291
    const/4 v8, -0x1

    .line 292
    const/4 v9, 0x0

    .line 293
    goto :goto_bb

    .line 294
    :cond_125
    invoke-virtual {v3, v14}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 298
    .line 299
    invoke-virtual {v5, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    goto :goto_11c

    .line 303
    :cond_12e
    move-object/from16 v19, v3

    .line 304
    .line 305
    move-object/from16 v18, v5

    .line 306
    .line 307
    move/from16 p1, v13

    .line 308
    .line 309
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 310
    .line 311
    if-eqz v3, :cond_151

    .line 312
    .line 313
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    const/4 v7, 0x0

    .line 318
    :cond_13d
    :goto_13d
    if-ge v7, v5, :cond_151

    .line 319
    .line 320
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    add-int/lit8 v7, v7, 0x1

    .line 325
    .line 326
    check-cast v8, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 327
    .line 328
    instance-of v9, v8, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    .line 329
    .line 330
    if-eqz v9, :cond_13d

    .line 331
    .line 332
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 333
    .line 334
    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/motion/key/MotionKey;->addValues(Ljava/util/HashMap;)V

    .line 335
    .line 336
    .line 337
    goto :goto_13d

    .line 338
    :cond_151
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 339
    .line 340
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    invoke-virtual {v3, v5, v7}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 344
    .line 345
    .line 346
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 347
    .line 348
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 349
    .line 350
    const/16 v7, 0x64

    .line 351
    .line 352
    invoke-virtual {v3, v5, v7}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 353
    .line 354
    .line 355
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    :cond_16c
    :goto_16c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_1a0

    .line 370
    .line 371
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    check-cast v5, Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v7

    .line 381
    if-eqz v7, :cond_18b

    .line 382
    .line 383
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    check-cast v7, Ljava/lang/Integer;

    .line 388
    .line 389
    if-eqz v7, :cond_18b

    .line 390
    .line 391
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    goto :goto_18c

    .line 396
    :cond_18b
    const/4 v7, 0x0

    .line 397
    :goto_18c
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 398
    .line 399
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 404
    .line 405
    if-eqz v5, :cond_16c

    .line 406
    .line 407
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    .line 408
    .line 409
    .line 410
    goto :goto_16c

    .line 411
    :cond_19a
    move-object/from16 v19, v3

    .line 412
    .line 413
    move-object/from16 v18, v5

    .line 414
    .line 415
    move/from16 p1, v13

    .line 416
    .line 417
    :cond_1a0
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->isEmpty()Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-nez v3, :cond_262

    .line 422
    .line 423
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 424
    .line 425
    if-nez v3, :cond_1b1

    .line 426
    .line 427
    new-instance v3, Ljava/util/HashMap;

    .line 428
    .line 429
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 433
    .line 434
    :cond_1b1
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    :goto_1b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_20f

    .line 443
    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Ljava/lang/String;

    .line 449
    .line 450
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 451
    .line 452
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    if-eqz v7, :cond_1ca

    .line 457
    .line 458
    goto :goto_1b5

    .line 459
    :cond_1ca
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    if-eqz v7, :cond_204

    .line 464
    .line 465
    new-instance v7, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    .line 466
    .line 467
    invoke-direct {v7}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    aget-object v8, v8, p1

    .line 475
    .line 476
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result v10

    .line 482
    const/4 v13, 0x0

    .line 483
    :cond_1e2
    :goto_1e2
    if-ge v13, v10, :cond_1ff

    .line 484
    .line 485
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v14

    .line 489
    add-int/lit8 v13, v13, 0x1

    .line 490
    .line 491
    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 492
    .line 493
    iget-object v15, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    .line 494
    .line 495
    if-nez v15, :cond_1f1

    .line 496
    .line 497
    goto :goto_1e2

    .line 498
    :cond_1f1
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v15

    .line 502
    check-cast v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 503
    .line 504
    if-eqz v15, :cond_1e2

    .line 505
    .line 506
    iget v14, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 507
    .line 508
    invoke-virtual {v7, v14, v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    .line 509
    .line 510
    .line 511
    goto :goto_1e2

    .line 512
    :cond_1ff
    invoke-static {v5, v7}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    goto :goto_208

    .line 517
    :cond_204
    invoke-static {v5, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    :goto_208
    if-nez v7, :cond_20b

    .line 522
    .line 523
    goto :goto_1b5

    .line 524
    :cond_20b
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto :goto_1b5

    .line 528
    :cond_20f
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 529
    .line 530
    if-eqz v1, :cond_22e

    .line 531
    .line 532
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    const/4 v3, 0x0

    .line 537
    :cond_218
    :goto_218
    if-ge v3, v2, :cond_22e

    .line 538
    .line 539
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    add-int/lit8 v3, v3, 0x1

    .line 544
    .line 545
    check-cast v5, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 546
    .line 547
    instance-of v7, v5, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 548
    .line 549
    if-eqz v7, :cond_218

    .line 550
    .line 551
    check-cast v5, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    .line 552
    .line 553
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 554
    .line 555
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 556
    .line 557
    .line 558
    goto :goto_218

    .line 559
    :cond_22e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 560
    .line 561
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    :goto_238
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    if-eqz v2, :cond_262

    .line 574
    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    check-cast v2, Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_255

    .line 586
    .line 587
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    check-cast v3, Ljava/lang/Integer;

    .line 592
    .line 593
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    goto :goto_256

    .line 598
    :cond_255
    const/4 v3, 0x0

    .line 599
    :goto_256
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 600
    .line 601
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    .line 606
    .line 607
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    .line 608
    .line 609
    .line 610
    goto :goto_238

    .line 611
    :cond_262
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    add-int/lit8 v2, v1, 0x2

    .line 618
    .line 619
    new-array v3, v2, [Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 620
    .line 621
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 622
    .line 623
    const/4 v7, 0x0

    .line 624
    aput-object v5, v3, v7

    .line 625
    .line 626
    add-int/lit8 v1, v1, 0x1

    .line 627
    .line 628
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 629
    .line 630
    aput-object v5, v3, v1

    .line 631
    .line 632
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-lez v1, :cond_287

    .line 639
    .line 640
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 641
    .line 642
    sget v5, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    .line 643
    .line 644
    if-ne v1, v5, :cond_287

    .line 645
    .line 646
    iput v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 647
    .line 648
    :cond_287
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    move/from16 v7, p1

    .line 655
    .line 656
    const/4 v6, 0x0

    .line 657
    :goto_290
    if-ge v6, v5, :cond_2a0

    .line 658
    .line 659
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    add-int/lit8 v6, v6, 0x1

    .line 664
    .line 665
    check-cast v8, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 666
    .line 667
    add-int/lit8 v9, v7, 0x1

    .line 668
    .line 669
    aput-object v8, v3, v7

    .line 670
    .line 671
    move v7, v9

    .line 672
    goto :goto_290

    .line 673
    :cond_2a0
    new-instance v1, Ljava/util/HashSet;

    .line 674
    .line 675
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 676
    .line 677
    .line 678
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 679
    .line 680
    iget-object v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 681
    .line 682
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 683
    .line 684
    .line 685
    move-result-object v5

    .line 686
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    :cond_2b1
    :goto_2b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    if-eqz v6, :cond_2dd

    .line 695
    .line 696
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v6

    .line 700
    check-cast v6, Ljava/lang/String;

    .line 701
    .line 702
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 703
    .line 704
    iget-object v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 705
    .line 706
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    if-eqz v7, :cond_2b1

    .line 711
    .line 712
    new-instance v7, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v7

    .line 724
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v7

    .line 728
    if-nez v7, :cond_2b1

    .line 729
    .line 730
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    .line 732
    .line 733
    goto :goto_2b1

    .line 734
    :cond_2dd
    const/4 v7, 0x0

    .line 735
    new-array v4, v7, [Ljava/lang/String;

    .line 736
    .line 737
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    check-cast v1, [Ljava/lang/String;

    .line 742
    .line 743
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 744
    .line 745
    array-length v1, v1

    .line 746
    new-array v1, v1, [I

    .line 747
    .line 748
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 749
    .line 750
    const/4 v1, 0x0

    .line 751
    :goto_2ee
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 752
    .line 753
    array-length v5, v4

    .line 754
    if-ge v1, v5, :cond_326

    .line 755
    .line 756
    aget-object v4, v4, v1

    .line 757
    .line 758
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 759
    .line 760
    const/16 v17, 0x0

    .line 761
    .line 762
    aput v17, v5, v1

    .line 763
    .line 764
    const/4 v5, 0x0

    .line 765
    :goto_2fc
    if-ge v5, v2, :cond_323

    .line 766
    .line 767
    aget-object v6, v3, v5

    .line 768
    .line 769
    iget-object v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 770
    .line 771
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result v6

    .line 775
    if-eqz v6, :cond_320

    .line 776
    .line 777
    aget-object v6, v3, v5

    .line 778
    .line 779
    iget-object v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 780
    .line 781
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    check-cast v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 786
    .line 787
    if-eqz v6, :cond_320

    .line 788
    .line 789
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    .line 790
    .line 791
    aget v5, v4, v1

    .line 792
    .line 793
    invoke-virtual {v6}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    .line 794
    .line 795
    .line 796
    move-result v6

    .line 797
    add-int/2addr v6, v5

    .line 798
    aput v6, v4, v1

    .line 799
    .line 800
    goto :goto_323

    .line 801
    :cond_320
    add-int/lit8 v5, v5, 0x1

    .line 802
    .line 803
    goto :goto_2fc

    .line 804
    :cond_323
    :goto_323
    add-int/lit8 v1, v1, 0x1

    .line 805
    .line 806
    goto :goto_2ee

    .line 807
    :cond_326
    const/16 v17, 0x0

    .line 808
    .line 809
    aget-object v1, v3, v17

    .line 810
    .line 811
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 812
    .line 813
    const/4 v5, -0x1

    .line 814
    if-eq v1, v5, :cond_332

    .line 815
    .line 816
    move/from16 v1, p1

    .line 817
    .line 818
    goto :goto_333

    .line 819
    :cond_332
    const/4 v1, 0x0

    .line 820
    :goto_333
    array-length v4, v4

    .line 821
    const/16 v5, 0x12

    .line 822
    .line 823
    add-int/2addr v5, v4

    .line 824
    new-array v4, v5, [Z

    .line 825
    .line 826
    move/from16 v6, p1

    .line 827
    .line 828
    :goto_33b
    if-ge v6, v2, :cond_34b

    .line 829
    .line 830
    aget-object v7, v3, v6

    .line 831
    .line 832
    add-int/lit8 v8, v6, -0x1

    .line 833
    .line 834
    aget-object v8, v3, v8

    .line 835
    .line 836
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 837
    .line 838
    invoke-virtual {v7, v8, v4, v9, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 839
    .line 840
    .line 841
    add-int/lit8 v6, v6, 0x1

    .line 842
    .line 843
    goto :goto_33b

    .line 844
    :cond_34b
    move/from16 v6, p1

    .line 845
    .line 846
    const/4 v1, 0x0

    .line 847
    :goto_34e
    if-ge v6, v5, :cond_359

    .line 848
    .line 849
    aget-boolean v7, v4, v6

    .line 850
    .line 851
    if-eqz v7, :cond_356

    .line 852
    .line 853
    add-int/lit8 v1, v1, 0x1

    .line 854
    .line 855
    :cond_356
    add-int/lit8 v6, v6, 0x1

    .line 856
    .line 857
    goto :goto_34e

    .line 858
    :cond_359
    new-array v6, v1, [I

    .line 859
    .line 860
    iput-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 861
    .line 862
    const/4 v6, 0x2

    .line 863
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    new-array v7, v1, [D

    .line 868
    .line 869
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 870
    .line 871
    new-array v1, v1, [D

    .line 872
    .line 873
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 874
    .line 875
    move/from16 v7, p1

    .line 876
    .line 877
    const/4 v1, 0x0

    .line 878
    :goto_36d
    if-ge v7, v5, :cond_37d

    .line 879
    .line 880
    aget-boolean v8, v4, v7

    .line 881
    .line 882
    if-eqz v8, :cond_37a

    .line 883
    .line 884
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 885
    .line 886
    add-int/lit8 v9, v1, 0x1

    .line 887
    .line 888
    aput v7, v8, v1

    .line 889
    .line 890
    move v1, v9

    .line 891
    :cond_37a
    add-int/lit8 v7, v7, 0x1

    .line 892
    .line 893
    goto :goto_36d

    .line 894
    :cond_37d
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 895
    .line 896
    array-length v1, v1

    .line 897
    new-array v4, v6, [I

    .line 898
    .line 899
    aput v1, v4, p1

    .line 900
    .line 901
    const/16 v17, 0x0

    .line 902
    .line 903
    aput v2, v4, v17

    .line 904
    .line 905
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 906
    .line 907
    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    check-cast v4, [[D

    .line 912
    .line 913
    new-array v5, v2, [D

    .line 914
    .line 915
    const/4 v7, 0x0

    .line 916
    :goto_393
    if-ge v7, v2, :cond_3a8

    .line 917
    .line 918
    aget-object v8, v3, v7

    .line 919
    .line 920
    aget-object v9, v4, v7

    .line 921
    .line 922
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 923
    .line 924
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/motion/MotionPaths;->fillStandard([D[I)V

    .line 925
    .line 926
    .line 927
    aget-object v8, v3, v7

    .line 928
    .line 929
    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 930
    .line 931
    float-to-double v8, v8

    .line 932
    aput-wide v8, v5, v7

    .line 933
    .line 934
    add-int/lit8 v7, v7, 0x1

    .line 935
    .line 936
    goto :goto_393

    .line 937
    :cond_3a8
    const/4 v7, 0x0

    .line 938
    :goto_3a9
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 939
    .line 940
    array-length v9, v8

    .line 941
    if-ge v7, v9, :cond_3e0

    .line 942
    .line 943
    aget v8, v8, v7

    .line 944
    .line 945
    sget-object v9, Landroidx/constraintlayout/core/motion/MotionPaths;->sNames:[Ljava/lang/String;

    .line 946
    .line 947
    array-length v9, v9

    .line 948
    if-ge v8, v9, :cond_3dd

    .line 949
    .line 950
    new-instance v8, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .line 954
    .line 955
    sget-object v9, Landroidx/constraintlayout/core/motion/MotionPaths;->sNames:[Ljava/lang/String;

    .line 956
    .line 957
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 958
    .line 959
    aget v10, v10, v7

    .line 960
    .line 961
    aget-object v9, v9, v10

    .line 962
    .line 963
    const-string v10, " ["

    .line 964
    .line 965
    invoke-static {v8, v9, v10}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v8

    .line 969
    const/4 v9, 0x0

    .line 970
    :goto_3c9
    if-ge v9, v2, :cond_3dd

    .line 971
    .line 972
    invoke-static {v8}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    .line 974
    .line 975
    move-result-object v8

    .line 976
    aget-object v10, v4, v9

    .line 977
    .line 978
    aget-wide v11, v10, v7

    .line 979
    .line 980
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v8

    .line 987
    add-int/lit8 v9, v9, 0x1

    .line 988
    .line 989
    goto :goto_3c9

    .line 990
    :cond_3dd
    add-int/lit8 v7, v7, 0x1

    .line 991
    .line 992
    goto :goto_3a9

    .line 993
    :cond_3e0
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 994
    .line 995
    array-length v7, v7

    .line 996
    add-int/lit8 v7, v7, 0x1

    .line 997
    .line 998
    new-array v7, v7, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 999
    .line 1000
    iput-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1001
    .line 1002
    const/4 v7, 0x0

    .line 1003
    :goto_3ea
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 1004
    .line 1005
    array-length v9, v8

    .line 1006
    if-ge v7, v9, :cond_44c

    .line 1007
    .line 1008
    aget-object v8, v8, v7

    .line 1009
    .line 1010
    const/4 v9, 0x0

    .line 1011
    const/4 v10, 0x0

    .line 1012
    const/4 v11, 0x0

    .line 1013
    const/4 v12, 0x0

    .line 1014
    :goto_3f5
    if-ge v9, v2, :cond_431

    .line 1015
    .line 1016
    aget-object v13, v3, v9

    .line 1017
    .line 1018
    invoke-virtual {v13, v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v13

    .line 1022
    if-eqz v13, :cond_429

    .line 1023
    .line 1024
    if-nez v12, :cond_417

    .line 1025
    .line 1026
    new-array v11, v2, [D

    .line 1027
    .line 1028
    aget-object v12, v3, v9

    .line 1029
    .line 1030
    invoke-virtual {v12, v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    .line 1031
    .line 1032
    .line 1033
    move-result v12

    .line 1034
    new-array v13, v6, [I

    .line 1035
    .line 1036
    aput v12, v13, p1

    .line 1037
    .line 1038
    const/4 v14, 0x0

    .line 1039
    aput v2, v13, v14

    .line 1040
    .line 1041
    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v12

    .line 1045
    check-cast v12, [[D

    .line 1046
    .line 1047
    goto :goto_418

    .line 1048
    :cond_417
    const/4 v14, 0x0

    .line 1049
    :goto_418
    aget-object v13, v3, v9

    .line 1050
    .line 1051
    iget v15, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 1052
    .line 1053
    move/from16 v19, v7

    .line 1054
    .line 1055
    float-to-double v6, v15

    .line 1056
    aput-wide v6, v11, v10

    .line 1057
    .line 1058
    aget-object v6, v12, v10

    .line 1059
    .line 1060
    invoke-virtual {v13, v8, v6, v14}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 1061
    .line 1062
    .line 1063
    add-int/lit8 v10, v10, 0x1

    .line 1064
    .line 1065
    goto :goto_42b

    .line 1066
    :cond_429
    move/from16 v19, v7

    .line 1067
    .line 1068
    :goto_42b
    add-int/lit8 v9, v9, 0x1

    .line 1069
    .line 1070
    move/from16 v7, v19

    .line 1071
    .line 1072
    const/4 v6, 0x2

    .line 1073
    goto :goto_3f5

    .line 1074
    :cond_431
    move/from16 v19, v7

    .line 1075
    .line 1076
    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 1077
    .line 1078
    .line 1079
    move-result-object v6

    .line 1080
    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v7

    .line 1084
    check-cast v7, [[D

    .line 1085
    .line 1086
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1087
    .line 1088
    add-int/lit8 v9, v19, 0x1

    .line 1089
    .line 1090
    iget v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 1091
    .line 1092
    invoke-static {v10, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v6

    .line 1096
    aput-object v6, v8, v9

    .line 1097
    .line 1098
    move v7, v9

    .line 1099
    const/4 v6, 0x2

    .line 1100
    goto :goto_3ea

    .line 1101
    :cond_44c
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1102
    .line 1103
    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 1104
    .line 1105
    invoke-static {v7, v5, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v4

    .line 1109
    const/16 v17, 0x0

    .line 1110
    .line 1111
    aput-object v4, v6, v17

    .line 1112
    .line 1113
    aget-object v4, v3, v17

    .line 1114
    .line 1115
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 1116
    .line 1117
    const/4 v5, -0x1

    .line 1118
    if-eq v4, v5, :cond_497

    .line 1119
    .line 1120
    new-array v4, v2, [I

    .line 1121
    .line 1122
    new-array v5, v2, [D

    .line 1123
    .line 1124
    const/4 v6, 0x2

    .line 1125
    new-array v7, v6, [I

    .line 1126
    .line 1127
    aput v6, v7, p1

    .line 1128
    .line 1129
    aput v2, v7, v17

    .line 1130
    .line 1131
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v1

    .line 1135
    check-cast v1, [[D

    .line 1136
    .line 1137
    const/4 v7, 0x0

    .line 1138
    :goto_471
    if-ge v7, v2, :cond_48f

    .line 1139
    .line 1140
    aget-object v6, v3, v7

    .line 1141
    .line 1142
    iget v8, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 1143
    .line 1144
    aput v8, v4, v7

    .line 1145
    .line 1146
    iget v8, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 1147
    .line 1148
    float-to-double v8, v8

    .line 1149
    aput-wide v8, v5, v7

    .line 1150
    .line 1151
    aget-object v8, v1, v7

    .line 1152
    .line 1153
    iget v9, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 1154
    .line 1155
    float-to-double v9, v9

    .line 1156
    const/16 v17, 0x0

    .line 1157
    .line 1158
    aput-wide v9, v8, v17

    .line 1159
    .line 1160
    iget v6, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 1161
    .line 1162
    float-to-double v9, v6

    .line 1163
    aput-wide v9, v8, p1

    .line 1164
    .line 1165
    add-int/lit8 v7, v7, 0x1

    .line 1166
    .line 1167
    goto :goto_471

    .line 1168
    :cond_48f
    const/16 v17, 0x0

    .line 1169
    .line 1170
    invoke-static {v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v1

    .line 1174
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 1175
    .line 1176
    :cond_497
    new-instance v1, Ljava/util/HashMap;

    .line 1177
    .line 1178
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1179
    .line 1180
    .line 1181
    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1182
    .line 1183
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 1184
    .line 1185
    if-eqz v1, :cond_50c

    .line 1186
    .line 1187
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 1192
    .line 1193
    :goto_4a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1194
    .line 1195
    .line 1196
    move-result v3

    .line 1197
    if-eqz v3, :cond_4d4

    .line 1198
    .line 1199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v3

    .line 1203
    check-cast v3, Ljava/lang/String;

    .line 1204
    .line 1205
    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v4

    .line 1209
    if-nez v4, :cond_4bb

    .line 1210
    .line 1211
    goto :goto_4a8

    .line 1212
    :cond_4bb
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v5

    .line 1216
    if-eqz v5, :cond_4cb

    .line 1217
    .line 1218
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v5

    .line 1222
    if-eqz v5, :cond_4cb

    .line 1223
    .line 1224
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/Motion;->getPreCycleDistance()F

    .line 1225
    .line 1226
    .line 1227
    move-result v2

    .line 1228
    :cond_4cb
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1232
    .line 1233
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    goto :goto_4a8

    .line 1237
    :cond_4d4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 1238
    .line 1239
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1240
    .line 1241
    .line 1242
    move-result v3

    .line 1243
    move/from16 v9, v17

    .line 1244
    .line 1245
    :cond_4dc
    :goto_4dc
    if-ge v9, v3, :cond_4f2

    .line 1246
    .line 1247
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v4

    .line 1251
    add-int/lit8 v9, v9, 0x1

    .line 1252
    .line 1253
    check-cast v4, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 1254
    .line 1255
    instance-of v5, v4, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    .line 1256
    .line 1257
    if-eqz v5, :cond_4dc

    .line 1258
    .line 1259
    check-cast v4, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    .line 1260
    .line 1261
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1262
    .line 1263
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 1264
    .line 1265
    .line 1266
    goto :goto_4dc

    .line 1267
    :cond_4f2
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 1268
    .line 1269
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v1

    .line 1273
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    :goto_4fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1278
    .line 1279
    .line 1280
    move-result v3

    .line 1281
    if-eqz v3, :cond_50c

    .line 1282
    .line 1283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v3

    .line 1287
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 1288
    .line 1289
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    .line 1290
    .line 1291
    .line 1292
    goto :goto_4fc

    .line 1293
    :cond_50c
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;)V
    .registers 2

    .line 23
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mRelativeMotion:Landroidx/constraintlayout/core/motion/Motion;

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
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 9
    .line 10
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

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
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 21
    .line 22
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

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
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 33
    .line 34
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

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
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 43
    .line 44
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

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
