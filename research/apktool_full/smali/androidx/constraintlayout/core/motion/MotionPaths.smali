.class public Landroidx/constraintlayout/core/motion/MotionPaths;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field public static final PERPENDICULAR:I = 0x1

.field public static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static sNames:[Ljava/lang/String;


# instance fields
.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:Ljava/lang/String;

.field mCustomAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field mDrawPath:I

.field mHeight:F

.field public mId:Ljava/lang/String;

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mPosition:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

.field mTempDelta:[D

.field mTempValue:[D

.field mTime:F

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "height"

    .line 2
    .line 3
    const-string v5, "pathRotate"

    .line 4
    .line 5
    const-string v0, "position"

    .line 6
    .line 7
    const-string v1, "x"

    .line 8
    .line 9
    const-string v2, "y"

    .line 10
    .line 11
    const-string v3, "width"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/constraintlayout/core/motion/MotionPaths;->sNames:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 87
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    .line 88
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    const/4 v2, -0x1

    .line 89
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    const/4 v2, 0x0

    .line 90
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 91
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    .line 92
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 94
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    const/16 v0, 0x12

    .line 95
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 96
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 6
    .line 7
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 8
    .line 9
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    .line 10
    .line 11
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    .line 20
    .line 21
    iput-object v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 22
    .line 23
    new-instance v1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 29
    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 31
    .line 32
    const/16 v0, 0x12

    .line 33
    .line 34
    new-array v1, v0, [D

    .line 35
    .line 36
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 37
    .line 38
    new-array v0, v0, [D

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    .line 41
    .line 42
    iget-object v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initPolar(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 47
    .line 48
    .line 49
    move-object p1, p0

    .line 50
    return-void

    .line 51
    :cond_0
    move-object v0, p5

    .line 52
    move-object p5, p4

    .line 53
    move-object p4, p3

    .line 54
    move p3, p2

    .line 55
    move-object p2, p0

    .line 56
    iget v1, p4, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    if-eq v1, v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0, p4, p5, v0}, Landroidx/constraintlayout/core/motion/MotionPaths;->initCartesian(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    move p2, p3

    .line 69
    move-object p3, p4

    .line 70
    move-object p4, p5

    .line 71
    move-object p5, v0

    .line 72
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initScreen(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 73
    .line 74
    .line 75
    move-object p1, p0

    .line 76
    return-void

    .line 77
    :cond_2
    move-object p1, p2

    .line 78
    move-object p3, p4

    .line 79
    move-object p4, p5

    .line 80
    move-object p5, v0

    .line 81
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/core/motion/MotionPaths;->initPath(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private diff(FF)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const p2, 0x358637bd    # 1.0E-6f

    .line 22
    .line 23
    .line 24
    cmpl-float p1, p1, p2

    .line 25
    .line 26
    if-lez p1, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    return v1

    .line 30
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eq p1, p2, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    return v1
.end method

.method private static xRotate(FFFFFF)F
    .locals 0

    .line 1
    sub-float/2addr p4, p2

    .line 2
    sub-float/2addr p5, p3

    .line 3
    mul-float/2addr p4, p1

    .line 4
    mul-float/2addr p5, p0

    .line 5
    sub-float/2addr p4, p5

    .line 6
    add-float/2addr p4, p2

    .line 7
    return p4
.end method

.method private static yRotate(FFFFFF)F
    .locals 0

    .line 1
    sub-float/2addr p4, p2

    .line 2
    sub-float/2addr p5, p3

    .line 3
    mul-float/2addr p4, p0

    .line 4
    mul-float/2addr p5, p1

    .line 5
    add-float/2addr p5, p4

    .line 6
    add-float/2addr p5, p3

    .line 7
    return p5
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->mMotion:Landroidx/constraintlayout/core/motion/MotionWidget$Motion;

    .line 12
    .line 13
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathMotionArc:I

    .line 14
    .line 15
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateRelativeTo:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mPathRotate:F

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    .line 24
    .line 25
    iget v1, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mDrawPath:I

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 28
    .line 29
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$Motion;->mAnimateCircleAngleTo:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateCircleAngleTo:I

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->mPropertySet:Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;

    .line 34
    .line 35
    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionWidget$PropertySet;->mProgress:F

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/MotionWidget;->mWidgetFrame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 48
    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionPaths;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 2
    .line 3
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->compareTo(Landroidx/constraintlayout/core/motion/MotionPaths;)I

    move-result p1

    return p1
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/core/motion/Motion;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mProgress:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/core/motion/Motion;->getPos(D)[D

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public different(Landroidx/constraintlayout/core/motion/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget p3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 2
    .line 3
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 4
    .line 5
    invoke-direct {p0, p3, v0}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 10
    .line 11
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    aget-boolean v2, p2, v1

    .line 19
    .line 20
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 21
    .line 22
    iget v4, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 23
    .line 24
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    or-int/2addr v2, v3

    .line 29
    aput-boolean v2, p2, v1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aget-boolean v3, p2, v2

    .line 33
    .line 34
    if-nez p3, :cond_1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    if-eqz p4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v4, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v4, v2

    .line 44
    :goto_1
    or-int/2addr v3, v4

    .line 45
    aput-boolean v3, p2, v2

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    aget-boolean v4, p2, v3

    .line 49
    .line 50
    if-nez p3, :cond_2

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    if-eqz p4, :cond_3

    .line 55
    .line 56
    :cond_2
    move v1, v2

    .line 57
    :cond_3
    or-int p3, v4, v1

    .line 58
    .line 59
    aput-boolean p3, p2, v3

    .line 60
    .line 61
    const/4 p3, 0x3

    .line 62
    aget-boolean p4, p2, p3

    .line 63
    .line 64
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 65
    .line 66
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 67
    .line 68
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    or-int/2addr p4, v0

    .line 73
    aput-boolean p4, p2, p3

    .line 74
    .line 75
    const/4 p3, 0x4

    .line 76
    aget-boolean p4, p2, p3

    .line 77
    .line 78
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 79
    .line 80
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 81
    .line 82
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->diff(FF)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    or-int/2addr p1, p4

    .line 87
    aput-boolean p1, p2, p3

    .line 88
    .line 89
    return-void
.end method

.method public fillStandard([D[I)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 6
    .line 7
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 8
    .line 9
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 10
    .line 11
    iget v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    .line 12
    .line 13
    const/4 v6, 0x6

    .line 14
    new-array v7, v6, [F

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    aput v0, v7, v8

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput v1, v7, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput v2, v7, v0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aput v3, v7, v0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    aput v4, v7, v0

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    aput v5, v7, v0

    .line 33
    .line 34
    move v0, v8

    .line 35
    :goto_0
    array-length v1, p2

    .line 36
    if-ge v8, v1, :cond_1

    .line 37
    .line 38
    aget v1, p2, v8

    .line 39
    .line 40
    if-ge v1, v6, :cond_0

    .line 41
    .line 42
    add-int/lit8 v2, v0, 0x1

    .line 43
    .line 44
    aget v1, v7, v1

    .line 45
    .line 46
    float-to-double v3, v1

    .line 47
    aput-wide v3, p1, v0

    .line 48
    .line 49
    move v0, v2

    .line 50
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public getBounds([I[D[FI)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p1

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    aget-wide v3, p2, v2

    .line 10
    .line 11
    double-to-float v3, v3

    .line 12
    aget v4, p1, v2

    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    if-eq v4, v5, :cond_1

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    if-eq v4, v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    aput v0, p3, p4

    .line 28
    .line 29
    add-int/lit8 p4, p4, 0x1

    .line 30
    .line 31
    aput v1, p3, p4

    .line 32
    .line 33
    return-void
.end method

.method public getCenter(D[I[D[FI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 183
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 184
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 185
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 186
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    const/4 v6, 0x0

    move v7, v6

    .line 187
    :goto_0
    array-length v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    .line 188
    aget-wide v11, p4, v7

    double-to-float v8, v11

    .line 189
    aget v11, v1, v7

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_1

    const/4 v9, 0x4

    if-eq v11, v9, :cond_0

    goto :goto_1

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 190
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    .line 191
    new-array v8, v9, [F

    .line 192
    new-array v9, v9, [F

    move-wide/from16 v11, p1

    .line 193
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    .line 194
    aget v1, v8, v6

    .line 195
    aget v6, v8, v10

    float-to-double v8, v1

    float-to-double v13, v2

    float-to-double v11, v3

    move-wide v15, v8

    .line 196
    invoke-static/range {v11 .. v16}, Lai/onnxruntime/a;->a(DDD)D

    move-result-wide v1

    div-float v3, v4, v7

    float-to-double v8, v3

    sub-double/2addr v1, v8

    double-to-float v2, v1

    float-to-double v8, v6

    .line 197
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v13

    sub-double/2addr v8, v11

    div-float v1, v5, v7

    float-to-double v11, v1

    sub-double/2addr v8, v11

    double-to-float v3, v8

    :cond_5
    div-float/2addr v4, v7

    add-float/2addr v4, v2

    const/4 v1, 0x0

    add-float/2addr v4, v1

    .line 198
    aput v4, p5, p6

    add-int/lit8 v2, p6, 0x1

    div-float/2addr v5, v7

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 199
    aput v5, p5, v2

    return-void
.end method

.method public getCenter(D[I[D[F[D[F)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 6
    .line 7
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 8
    .line 9
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 10
    .line 11
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    :goto_0
    array-length v13, v1

    .line 19
    const/4 v15, 0x1

    .line 20
    if-ge v8, v13, :cond_4

    .line 21
    .line 22
    const/4 v13, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    aget-wide v6, p4, v8

    .line 26
    .line 27
    double-to-float v6, v6

    .line 28
    move/from16 v17, v13

    .line 29
    .line 30
    aget-wide v13, p6, v8

    .line 31
    .line 32
    double-to-float v13, v13

    .line 33
    aget v14, v1, v8

    .line 34
    .line 35
    if-eq v14, v15, :cond_3

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    if-eq v14, v7, :cond_2

    .line 39
    .line 40
    const/4 v7, 0x3

    .line 41
    if-eq v14, v7, :cond_1

    .line 42
    .line 43
    const/4 v7, 0x4

    .line 44
    if-eq v14, v7, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move v5, v6

    .line 48
    move v12, v13

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v4, v6

    .line 51
    move v10, v13

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v3, v6

    .line 54
    move v11, v13

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v2, v6

    .line 57
    move v9, v13

    .line 58
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const/16 v16, 0x0

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const/high16 v1, 0x40000000    # 2.0f

    .line 66
    .line 67
    div-float/2addr v10, v1

    .line 68
    add-float/2addr v10, v9

    .line 69
    div-float/2addr v12, v1

    .line 70
    add-float/2addr v12, v11

    .line 71
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 72
    .line 73
    if-eqz v6, :cond_5

    .line 74
    .line 75
    const/4 v7, 0x2

    .line 76
    new-array v8, v7, [F

    .line 77
    .line 78
    new-array v7, v7, [F

    .line 79
    .line 80
    move-wide/from16 v12, p1

    .line 81
    .line 82
    invoke-virtual {v6, v12, v13, v8, v7}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    .line 83
    .line 84
    .line 85
    aget v6, v8, v16

    .line 86
    .line 87
    aget v8, v8, v15

    .line 88
    .line 89
    aget v10, v7, v16

    .line 90
    .line 91
    aget v7, v7, v15

    .line 92
    .line 93
    float-to-double v12, v6

    .line 94
    move/from16 p3, v1

    .line 95
    .line 96
    float-to-double v1, v2

    .line 97
    move-wide/from16 v20, v1

    .line 98
    .line 99
    float-to-double v0, v3

    .line 100
    move-wide/from16 v18, v0

    .line 101
    .line 102
    move-wide/from16 v22, v12

    .line 103
    .line 104
    invoke-static/range {v18 .. v23}, Lai/onnxruntime/a;->a(DDD)D

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    div-float v2, v4, p3

    .line 109
    .line 110
    float-to-double v2, v2

    .line 111
    sub-double/2addr v0, v2

    .line 112
    double-to-float v2, v0

    .line 113
    float-to-double v0, v8

    .line 114
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 115
    .line 116
    .line 117
    move-result-wide v12

    .line 118
    mul-double v12, v12, v20

    .line 119
    .line 120
    sub-double/2addr v0, v12

    .line 121
    div-float v3, v5, p3

    .line 122
    .line 123
    float-to-double v12, v3

    .line 124
    sub-double/2addr v0, v12

    .line 125
    double-to-float v3, v0

    .line 126
    float-to-double v0, v10

    .line 127
    float-to-double v8, v9

    .line 128
    move-wide/from16 v22, v0

    .line 129
    .line 130
    move-wide/from16 v20, v8

    .line 131
    .line 132
    invoke-static/range {v18 .. v23}, Lai/onnxruntime/a;->a(DDD)D

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 137
    .line 138
    .line 139
    move-result-wide v8

    .line 140
    float-to-double v10, v11

    .line 141
    mul-double/2addr v8, v10

    .line 142
    add-double/2addr v8, v0

    .line 143
    double-to-float v0, v8

    .line 144
    float-to-double v6, v7

    .line 145
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 146
    .line 147
    .line 148
    move-result-wide v8

    .line 149
    mul-double v8, v8, v20

    .line 150
    .line 151
    sub-double v22, v6, v8

    .line 152
    .line 153
    move-wide/from16 v20, v10

    .line 154
    .line 155
    invoke-static/range {v18 .. v23}, Lai/onnxruntime/a;->a(DDD)D

    .line 156
    .line 157
    .line 158
    move-result-wide v6

    .line 159
    double-to-float v12, v6

    .line 160
    move v10, v0

    .line 161
    goto :goto_2

    .line 162
    :cond_5
    move/from16 p3, v1

    .line 163
    .line 164
    :goto_2
    div-float v4, v4, p3

    .line 165
    .line 166
    add-float/2addr v4, v2

    .line 167
    add-float v4, v4, v17

    .line 168
    .line 169
    aput v4, p5, v16

    .line 170
    .line 171
    div-float v5, v5, p3

    .line 172
    .line 173
    add-float/2addr v5, v3

    .line 174
    add-float v5, v5, v17

    .line 175
    .line 176
    aput v5, p5, v15

    .line 177
    .line 178
    aput v10, p7, v16

    .line 179
    .line 180
    aput v12, p7, v15

    .line 181
    .line 182
    return-void
.end method

.method public getCenterVelocity(D[I[D[FI)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 6
    .line 7
    iget v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 8
    .line 9
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 10
    .line 11
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move v7, v6

    .line 15
    :goto_0
    array-length v8, v1

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x1

    .line 18
    if-ge v7, v8, :cond_4

    .line 19
    .line 20
    aget-wide v11, p4, v7

    .line 21
    .line 22
    double-to-float v8, v11

    .line 23
    aget v11, v1, v7

    .line 24
    .line 25
    if-eq v11, v10, :cond_3

    .line 26
    .line 27
    if-eq v11, v9, :cond_2

    .line 28
    .line 29
    const/4 v9, 0x3

    .line 30
    if-eq v11, v9, :cond_1

    .line 31
    .line 32
    const/4 v9, 0x4

    .line 33
    if-eq v11, v9, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move v5, v8

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v3, v8

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v2, v8

    .line 43
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 47
    .line 48
    const/high16 v7, 0x40000000    # 2.0f

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    new-array v8, v9, [F

    .line 53
    .line 54
    new-array v9, v9, [F

    .line 55
    .line 56
    move-wide/from16 v11, p1

    .line 57
    .line 58
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    .line 59
    .line 60
    .line 61
    aget v1, v8, v6

    .line 62
    .line 63
    aget v6, v8, v10

    .line 64
    .line 65
    float-to-double v8, v1

    .line 66
    float-to-double v13, v2

    .line 67
    float-to-double v11, v3

    .line 68
    move-wide v15, v8

    .line 69
    invoke-static/range {v11 .. v16}, Lai/onnxruntime/a;->a(DDD)D

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    div-float v3, v4, v7

    .line 74
    .line 75
    float-to-double v8, v3

    .line 76
    sub-double/2addr v1, v8

    .line 77
    double-to-float v2, v1

    .line 78
    float-to-double v8, v6

    .line 79
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    mul-double/2addr v11, v13

    .line 84
    sub-double/2addr v8, v11

    .line 85
    div-float v1, v5, v7

    .line 86
    .line 87
    float-to-double v11, v1

    .line 88
    sub-double/2addr v8, v11

    .line 89
    double-to-float v3, v8

    .line 90
    :cond_5
    div-float/2addr v4, v7

    .line 91
    add-float/2addr v4, v2

    .line 92
    const/4 v1, 0x0

    .line 93
    add-float/2addr v4, v1

    .line 94
    aput v4, p5, p6

    .line 95
    .line 96
    add-int/lit8 v2, p6, 0x1

    .line 97
    .line 98
    div-float/2addr v5, v7

    .line 99
    add-float/2addr v5, v3

    .line 100
    add-float/2addr v5, v1

    .line 101
    aput v5, p5, v2

    .line 102
    .line 103
    return-void
.end method

.method public getCustomData(Ljava/lang/String;[DI)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    float-to-double v0, p1

    .line 25
    aput-wide v0, p2, p3

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    new-array v2, v1, [F

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    .line 35
    .line 36
    .line 37
    :goto_0
    if-ge v0, v1, :cond_2

    .line 38
    .line 39
    add-int/lit8 p1, p3, 0x1

    .line 40
    .line 41
    aget v3, v2, v0

    .line 42
    .line 43
    float-to-double v3, v3

    .line 44
    aput-wide v3, p2, p3

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    move p3, p1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v1
.end method

.method public getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getRect([I[D[FI)V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 6
    .line 7
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    array-length v5, p1

    .line 11
    if-ge v4, v5, :cond_4

    .line 12
    .line 13
    aget-wide v5, p2, v4

    .line 14
    .line 15
    double-to-float v5, v5

    .line 16
    aget v6, p1, v4

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    if-eq v6, v7, :cond_3

    .line 20
    .line 21
    const/4 v7, 0x2

    .line 22
    if-eq v6, v7, :cond_2

    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    if-eq v6, v7, :cond_1

    .line 26
    .line 27
    const/4 v7, 0x4

    .line 28
    if-eq v6, v7, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v3, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v2, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move v0, v5

    .line 38
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/Motion;->getCenterX()F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 50
    .line 51
    invoke-virtual {p2}, Landroidx/constraintlayout/core/motion/Motion;->getCenterY()F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    float-to-double v8, p1

    .line 56
    float-to-double v6, v0

    .line 57
    float-to-double v4, v1

    .line 58
    invoke-static/range {v4 .. v9}, Lai/onnxruntime/a;->a(DDD)D

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    const/high16 p1, 0x40000000    # 2.0f

    .line 63
    .line 64
    div-float v8, v2, p1

    .line 65
    .line 66
    float-to-double v8, v8

    .line 67
    sub-double/2addr v0, v8

    .line 68
    double-to-float v0, v0

    .line 69
    float-to-double v8, p2

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    mul-double/2addr v4, v6

    .line 75
    sub-double/2addr v8, v4

    .line 76
    div-float p1, v3, p1

    .line 77
    .line 78
    float-to-double p1, p1

    .line 79
    sub-double/2addr v8, p1

    .line 80
    double-to-float v1, v8

    .line 81
    :cond_5
    add-float/2addr v2, v0

    .line 82
    add-float/2addr v3, v1

    .line 83
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    add-float p2, v0, p1

    .line 93
    .line 94
    add-float v4, v1, p1

    .line 95
    .line 96
    add-float v5, v2, p1

    .line 97
    .line 98
    add-float/2addr v1, p1

    .line 99
    add-float/2addr v2, p1

    .line 100
    add-float v6, v3, p1

    .line 101
    .line 102
    add-float/2addr v0, p1

    .line 103
    add-float/2addr v3, p1

    .line 104
    add-int/lit8 p1, p4, 0x1

    .line 105
    .line 106
    aput p2, p3, p4

    .line 107
    .line 108
    add-int/lit8 p2, p4, 0x2

    .line 109
    .line 110
    aput v4, p3, p1

    .line 111
    .line 112
    add-int/lit8 p1, p4, 0x3

    .line 113
    .line 114
    aput v5, p3, p2

    .line 115
    .line 116
    add-int/lit8 p2, p4, 0x4

    .line 117
    .line 118
    aput v1, p3, p1

    .line 119
    .line 120
    add-int/lit8 p1, p4, 0x5

    .line 121
    .line 122
    aput v2, p3, p2

    .line 123
    .line 124
    add-int/lit8 p2, p4, 0x6

    .line 125
    .line 126
    aput v6, p3, p1

    .line 127
    .line 128
    add-int/lit8 p4, p4, 0x7

    .line 129
    .line 130
    aput v0, p3, p2

    .line 131
    .line 132
    aput v3, p3, p4

    .line 133
    .line 134
    return-void
.end method

.method public hasCustomData(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mCustomAttributes:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public initCartesian(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 10
    .line 11
    int-to-float v4, v4

    .line 12
    const/high16 v5, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 16
    .line 17
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 18
    .line 19
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 20
    .line 21
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 32
    .line 33
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 44
    .line 45
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 46
    .line 47
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 48
    .line 49
    sub-float v9, v7, v8

    .line 50
    .line 51
    iget v10, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 52
    .line 53
    iget v11, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 54
    .line 55
    sub-float v12, v10, v11

    .line 56
    .line 57
    iget v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 58
    .line 59
    iput v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 60
    .line 61
    iget v13, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 62
    .line 63
    const/high16 v14, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float v15, v8, v14

    .line 66
    .line 67
    add-float/2addr v15, v13

    .line 68
    move/from16 v16, v14

    .line 69
    .line 70
    iget v14, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 71
    .line 72
    div-float v17, v11, v16

    .line 73
    .line 74
    add-float v17, v17, v14

    .line 75
    .line 76
    move/from16 v18, v4

    .line 77
    .line 78
    iget v4, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 79
    .line 80
    div-float v7, v7, v16

    .line 81
    .line 82
    add-float/2addr v7, v4

    .line 83
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 84
    .line 85
    div-float v10, v10, v16

    .line 86
    .line 87
    add-float/2addr v10, v3

    .line 88
    sub-float/2addr v7, v15

    .line 89
    sub-float v10, v10, v17

    .line 90
    .line 91
    mul-float v4, v7, v18

    .line 92
    .line 93
    add-float/2addr v4, v13

    .line 94
    mul-float/2addr v9, v5

    .line 95
    div-float v3, v9, v16

    .line 96
    .line 97
    sub-float/2addr v4, v3

    .line 98
    float-to-int v4, v4

    .line 99
    int-to-float v4, v4

    .line 100
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 101
    .line 102
    mul-float v4, v10, v18

    .line 103
    .line 104
    add-float/2addr v4, v14

    .line 105
    mul-float/2addr v12, v6

    .line 106
    div-float v5, v12, v16

    .line 107
    .line 108
    sub-float/2addr v4, v5

    .line 109
    float-to-int v4, v4

    .line 110
    int-to-float v4, v4

    .line 111
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 112
    .line 113
    add-float/2addr v8, v9

    .line 114
    float-to-int v4, v8

    .line 115
    int-to-float v4, v4

    .line 116
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 117
    .line 118
    add-float/2addr v11, v12

    .line 119
    float-to-int v4, v11

    .line 120
    int-to-float v4, v4

    .line 121
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 122
    .line 123
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 124
    .line 125
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_2

    .line 130
    .line 131
    move/from16 v4, v18

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 135
    .line 136
    :goto_2
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 137
    .line 138
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    const/4 v8, 0x0

    .line 143
    if-eqz v6, :cond_3

    .line 144
    .line 145
    move v6, v8

    .line 146
    goto :goto_3

    .line 147
    :cond_3
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentY:F

    .line 148
    .line 149
    :goto_3
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 150
    .line 151
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_4

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_4
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 159
    .line 160
    move/from16 v18, v9

    .line 161
    .line 162
    :goto_4
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    .line 163
    .line 164
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-eqz v9, :cond_5

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_5
    iget v8, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mAltPercentX:F

    .line 172
    .line 173
    :goto_5
    const/4 v9, 0x0

    .line 174
    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 175
    .line 176
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 177
    .line 178
    mul-float/2addr v4, v7

    .line 179
    add-float/2addr v4, v9

    .line 180
    mul-float/2addr v8, v10

    .line 181
    add-float/2addr v8, v4

    .line 182
    sub-float/2addr v8, v3

    .line 183
    float-to-int v3, v8

    .line 184
    int-to-float v3, v3

    .line 185
    iput v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 186
    .line 187
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 188
    .line 189
    mul-float/2addr v7, v6

    .line 190
    add-float/2addr v7, v2

    .line 191
    mul-float v10, v10, v18

    .line 192
    .line 193
    add-float/2addr v10, v7

    .line 194
    sub-float/2addr v10, v5

    .line 195
    float-to-int v2, v10

    .line 196
    int-to-float v2, v2

    .line 197
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 198
    .line 199
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 206
    .line 207
    iget v1, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 208
    .line 209
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 210
    .line 211
    return-void
.end method

.method public initPath(Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 10
    .line 11
    int-to-float v4, v4

    .line 12
    const/high16 v5, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 16
    .line 17
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 18
    .line 19
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 20
    .line 21
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 32
    .line 33
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 44
    .line 45
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 46
    .line 47
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 48
    .line 49
    sub-float/2addr v7, v8

    .line 50
    iget v8, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 51
    .line 52
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 53
    .line 54
    sub-float/2addr v8, v9

    .line 55
    iget v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 56
    .line 57
    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 58
    .line 59
    iget v9, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 60
    .line 61
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 69
    .line 70
    :goto_2
    iget v9, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 71
    .line 72
    iget v10, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 73
    .line 74
    const/high16 v11, 0x40000000    # 2.0f

    .line 75
    .line 76
    div-float v12, v10, v11

    .line 77
    .line 78
    add-float/2addr v12, v9

    .line 79
    iget v13, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 80
    .line 81
    iget v14, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 82
    .line 83
    div-float v15, v14, v11

    .line 84
    .line 85
    add-float/2addr v15, v13

    .line 86
    move/from16 v16, v11

    .line 87
    .line 88
    iget v11, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 89
    .line 90
    move/from16 v17, v4

    .line 91
    .line 92
    iget v4, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 93
    .line 94
    div-float v4, v4, v16

    .line 95
    .line 96
    add-float/2addr v4, v11

    .line 97
    iget v11, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 98
    .line 99
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 100
    .line 101
    div-float v3, v3, v16

    .line 102
    .line 103
    add-float/2addr v3, v11

    .line 104
    sub-float/2addr v4, v12

    .line 105
    sub-float/2addr v3, v15

    .line 106
    mul-float v11, v4, v17

    .line 107
    .line 108
    add-float/2addr v9, v11

    .line 109
    mul-float/2addr v7, v5

    .line 110
    div-float v5, v7, v16

    .line 111
    .line 112
    sub-float/2addr v9, v5

    .line 113
    float-to-int v9, v9

    .line 114
    int-to-float v9, v9

    .line 115
    iput v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 116
    .line 117
    mul-float v9, v3, v17

    .line 118
    .line 119
    add-float/2addr v13, v9

    .line 120
    mul-float/2addr v8, v6

    .line 121
    div-float v6, v8, v16

    .line 122
    .line 123
    sub-float/2addr v13, v6

    .line 124
    float-to-int v12, v13

    .line 125
    int-to-float v12, v12

    .line 126
    iput v12, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 127
    .line 128
    add-float/2addr v10, v7

    .line 129
    float-to-int v7, v10

    .line 130
    int-to-float v7, v7

    .line 131
    iput v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 132
    .line 133
    add-float/2addr v14, v8

    .line 134
    float-to-int v7, v14

    .line 135
    int-to-float v7, v7

    .line 136
    iput v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 137
    .line 138
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 139
    .line 140
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_3

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    iget v7, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 149
    .line 150
    :goto_3
    neg-float v3, v3

    .line 151
    mul-float/2addr v3, v7

    .line 152
    mul-float/2addr v4, v7

    .line 153
    const/4 v7, 0x1

    .line 154
    iput v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 155
    .line 156
    iget v7, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 157
    .line 158
    add-float/2addr v7, v11

    .line 159
    sub-float/2addr v7, v5

    .line 160
    float-to-int v5, v7

    .line 161
    int-to-float v5, v5

    .line 162
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 163
    .line 164
    add-float/2addr v2, v9

    .line 165
    sub-float/2addr v2, v6

    .line 166
    float-to-int v2, v2

    .line 167
    int-to-float v2, v2

    .line 168
    add-float/2addr v5, v3

    .line 169
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 170
    .line 171
    add-float/2addr v2, v4

    .line 172
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 173
    .line 174
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 175
    .line 176
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 185
    .line 186
    iget v1, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 187
    .line 188
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 189
    .line 190
    return-void
.end method

.method public initPolar(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 6

    .line 1
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 p2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    div-float/2addr p1, p2

    .line 7
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 8
    .line 9
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 10
    .line 11
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 12
    .line 13
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 14
    .line 15
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 16
    .line 17
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    move p2, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 28
    .line 29
    :goto_0
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move v0, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v0, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 40
    .line 41
    :goto_1
    iget v1, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 42
    .line 43
    iget v2, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 44
    .line 45
    sub-float/2addr v1, v2

    .line 46
    iget v3, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 47
    .line 48
    iget v4, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 49
    .line 50
    sub-float/2addr v3, v4

    .line 51
    iget v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 52
    .line 53
    iput v5, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 54
    .line 55
    mul-float/2addr v1, p2

    .line 56
    add-float/2addr v1, v2

    .line 57
    float-to-int v1, v1

    .line 58
    int-to-float v1, v1

    .line 59
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 60
    .line 61
    mul-float/2addr v3, v0

    .line 62
    add-float/2addr v3, v4

    .line 63
    float-to-int v1, v3

    .line 64
    int-to-float v1, v1

    .line 65
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 66
    .line 67
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-eq v1, v2, :cond_7

    .line 71
    .line 72
    iget v2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 73
    .line 74
    const/4 v3, 0x2

    .line 75
    if-eq v1, v3, :cond_4

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    move p2, p1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 86
    .line 87
    :goto_2
    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 88
    .line 89
    iget v1, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 90
    .line 91
    invoke-static {v0, v1, p2, v1}, Lai/onnxruntime/a;->b(FFFF)F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 96
    .line 97
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 107
    .line 108
    :goto_3
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 109
    .line 110
    iget p5, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 111
    .line 112
    invoke-static {p2, p5, p1, p5}, Lai/onnxruntime/a;->b(FFFF)F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 126
    .line 127
    iget v0, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 128
    .line 129
    invoke-static {p2, v0, p1, v0}, Lai/onnxruntime/a;->b(FFFF)F

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    iget v1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 135
    .line 136
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    mul-float/2addr p2, v1

    .line 141
    :goto_4
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 142
    .line 143
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 144
    .line 145
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_6

    .line 150
    .line 151
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 152
    .line 153
    iget p5, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 154
    .line 155
    invoke-static {p2, p5, p1, p5}, Lai/onnxruntime/a;->b(FFFF)F

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    goto :goto_5

    .line 160
    :cond_6
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 161
    .line 162
    :goto_5
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_7
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 166
    .line 167
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_8

    .line 172
    .line 173
    move p2, p1

    .line 174
    goto :goto_6

    .line 175
    :cond_8
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 176
    .line 177
    :goto_6
    iget v0, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 178
    .line 179
    iget v1, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 180
    .line 181
    invoke-static {v0, v1, p2, v1}, Lai/onnxruntime/a;->b(FFFF)F

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 186
    .line 187
    iget p2, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 188
    .line 189
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_9

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_9
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 197
    .line 198
    :goto_7
    iget p2, p5, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 199
    .line 200
    iget p5, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 201
    .line 202
    invoke-static {p2, p5, p1, p5}, Lai/onnxruntime/a;->b(FFFF)F

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 207
    .line 208
    :goto_8
    iget-object p1, p4, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 209
    .line 210
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 211
    .line 212
    iget-object p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 219
    .line 220
    iget p1, p3, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 221
    .line 222
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 223
    .line 224
    return-void
.end method

.method public initScreen(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget v4, v1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 10
    .line 11
    int-to-float v4, v4

    .line 12
    const/high16 v5, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 16
    .line 17
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mDrawPath:I

    .line 18
    .line 19
    iput v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 20
    .line 21
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentWidth:F

    .line 32
    .line 33
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentHeight:F

    .line 44
    .line 45
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 46
    .line 47
    iget v8, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 48
    .line 49
    sub-float v9, v7, v8

    .line 50
    .line 51
    iget v10, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 52
    .line 53
    iget v11, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 54
    .line 55
    sub-float v12, v10, v11

    .line 56
    .line 57
    iget v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTime:F

    .line 58
    .line 59
    iput v13, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPosition:F

    .line 60
    .line 61
    iget v13, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 62
    .line 63
    const/high16 v14, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float v15, v8, v14

    .line 66
    .line 67
    add-float/2addr v15, v13

    .line 68
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 69
    .line 70
    div-float v16, v11, v14

    .line 71
    .line 72
    add-float v16, v16, v2

    .line 73
    .line 74
    move/from16 v17, v14

    .line 75
    .line 76
    iget v14, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 77
    .line 78
    div-float v7, v7, v17

    .line 79
    .line 80
    add-float/2addr v7, v14

    .line 81
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 82
    .line 83
    div-float v10, v10, v17

    .line 84
    .line 85
    add-float/2addr v10, v3

    .line 86
    sub-float/2addr v7, v15

    .line 87
    sub-float v10, v10, v16

    .line 88
    .line 89
    mul-float/2addr v7, v4

    .line 90
    add-float/2addr v7, v13

    .line 91
    mul-float/2addr v9, v5

    .line 92
    div-float v3, v9, v17

    .line 93
    .line 94
    sub-float/2addr v7, v3

    .line 95
    float-to-int v3, v7

    .line 96
    int-to-float v3, v3

    .line 97
    iput v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 98
    .line 99
    mul-float/2addr v10, v4

    .line 100
    add-float/2addr v10, v2

    .line 101
    mul-float/2addr v12, v6

    .line 102
    div-float v2, v12, v17

    .line 103
    .line 104
    sub-float/2addr v10, v2

    .line 105
    float-to-int v2, v10

    .line 106
    int-to-float v2, v2

    .line 107
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 108
    .line 109
    add-float/2addr v8, v9

    .line 110
    float-to-int v2, v8

    .line 111
    int-to-float v2, v2

    .line 112
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 113
    .line 114
    add-float/2addr v11, v12

    .line 115
    float-to-int v2, v11

    .line 116
    int-to-float v2, v2

    .line 117
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 118
    .line 119
    const/4 v2, 0x2

    .line 120
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    .line 121
    .line 122
    iget v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_2

    .line 129
    .line 130
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 131
    .line 132
    float-to-int v2, v2

    .line 133
    sub-int v2, p1, v2

    .line 134
    .line 135
    iget v3, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    .line 136
    .line 137
    int-to-float v2, v2

    .line 138
    mul-float/2addr v3, v2

    .line 139
    float-to-int v2, v3

    .line 140
    int-to-float v2, v2

    .line 141
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 142
    .line 143
    :cond_2
    iget v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    iget v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 152
    .line 153
    float-to-int v2, v2

    .line 154
    sub-int v2, p2, v2

    .line 155
    .line 156
    iget v3, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    .line 157
    .line 158
    int-to-float v2, v2

    .line 159
    mul-float/2addr v3, v2

    .line 160
    float-to-int v2, v3

    .line 161
    int-to-float v2, v2

    .line 162
    iput v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 163
    .line 164
    :cond_3
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 165
    .line 166
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iput-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 175
    .line 176
    iget v1, v1, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPathMotionArc:I

    .line 177
    .line 178
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 179
    .line 180
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 4
    .line 5
    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 6
    .line 7
    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 8
    .line 9
    return-void
.end method

.method public setDpDt(FF[F[I[D[D)V
    .locals 12

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v4, v1

    .line 6
    move v5, v4

    .line 7
    move v6, v5

    .line 8
    move v7, v6

    .line 9
    move v3, v2

    .line 10
    :goto_0
    array-length v8, v0

    .line 11
    const/4 v9, 0x1

    .line 12
    if-ge v3, v8, :cond_4

    .line 13
    .line 14
    aget-wide v10, p5, v3

    .line 15
    .line 16
    double-to-float v8, v10

    .line 17
    aget v10, v0, v3

    .line 18
    .line 19
    if-eq v10, v9, :cond_3

    .line 20
    .line 21
    const/4 v9, 0x2

    .line 22
    if-eq v10, v9, :cond_2

    .line 23
    .line 24
    const/4 v9, 0x3

    .line 25
    if-eq v10, v9, :cond_1

    .line 26
    .line 27
    const/4 v9, 0x4

    .line 28
    if-eq v10, v9, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v7, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v6, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move v4, v8

    .line 38
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    mul-float v0, v1, v5

    .line 42
    .line 43
    const/high16 v3, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v0, v3

    .line 46
    sub-float/2addr v4, v0

    .line 47
    mul-float v0, v1, v7

    .line 48
    .line 49
    div-float/2addr v0, v3

    .line 50
    sub-float/2addr v6, v0

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    .line 53
    mul-float/2addr v5, v0

    .line 54
    mul-float/2addr v7, v0

    .line 55
    add-float/2addr v5, v4

    .line 56
    add-float/2addr v7, v6

    .line 57
    sub-float v3, v0, p1

    .line 58
    .line 59
    mul-float/2addr v3, v4

    .line 60
    mul-float/2addr v5, p1

    .line 61
    add-float/2addr v5, v3

    .line 62
    add-float/2addr v5, v1

    .line 63
    aput v5, p3, v2

    .line 64
    .line 65
    sub-float/2addr v0, p2

    .line 66
    mul-float/2addr v0, v6

    .line 67
    mul-float/2addr v7, p2

    .line 68
    add-float/2addr v7, v0

    .line 69
    add-float/2addr v7, v1

    .line 70
    aput v7, p3, v9

    .line 71
    .line 72
    return-void
.end method

.method public setView(FLandroidx/constraintlayout/core/motion/MotionWidget;[I[D[D[D)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v4, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 8
    .line 9
    iget v5, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 10
    .line 11
    iget v6, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 12
    .line 13
    iget v7, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 14
    .line 15
    array-length v8, v2

    .line 16
    const/4 v9, 0x1

    .line 17
    if-eqz v8, :cond_0

    .line 18
    .line 19
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 20
    .line 21
    array-length v8, v8

    .line 22
    array-length v10, v2

    .line 23
    sub-int/2addr v10, v9

    .line 24
    aget v10, v2, v10

    .line 25
    .line 26
    if-gt v8, v10, :cond_0

    .line 27
    .line 28
    array-length v8, v2

    .line 29
    sub-int/2addr v8, v9

    .line 30
    aget v8, v2, v8

    .line 31
    .line 32
    add-int/2addr v8, v9

    .line 33
    new-array v10, v8, [D

    .line 34
    .line 35
    iput-object v10, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 36
    .line 37
    new-array v8, v8, [D

    .line 38
    .line 39
    iput-object v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    .line 40
    .line 41
    :cond_0
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 42
    .line 43
    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    .line 44
    .line 45
    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    .line 46
    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_0
    array-length v11, v2

    .line 50
    if-ge v10, v11, :cond_1

    .line 51
    .line 52
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 53
    .line 54
    aget v12, v2, v10

    .line 55
    .line 56
    aget-wide v13, p4, v10

    .line 57
    .line 58
    aput-wide v13, v11, v12

    .line 59
    .line 60
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    .line 61
    .line 62
    aget-wide v13, p5, v10

    .line 63
    .line 64
    aput-wide v13, v11, v12

    .line 65
    .line 66
    add-int/lit8 v10, v10, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/high16 v10, 0x7fc00000    # Float.NaN

    .line 70
    .line 71
    const/16 p3, 0x0

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    const/4 v15, 0x0

    .line 78
    :goto_1
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 79
    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    array-length v8, v2

    .line 83
    if-ge v11, v8, :cond_b

    .line 84
    .line 85
    aget-wide v18, v2, v11

    .line 86
    .line 87
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const-wide/16 v18, 0x0

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    if-eqz p6, :cond_2

    .line 96
    .line 97
    aget-wide v20, p6, v11

    .line 98
    .line 99
    cmpl-double v2, v20, v18

    .line 100
    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    :cond_2
    move/from16 p4, v10

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_3
    if-eqz p6, :cond_4

    .line 107
    .line 108
    aget-wide v18, p6, v11

    .line 109
    .line 110
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 111
    .line 112
    aget-wide v20, v2, v11

    .line 113
    .line 114
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    :goto_2
    move/from16 p4, v10

    .line 121
    .line 122
    move-wide/from16 v9, v18

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 126
    .line 127
    aget-wide v20, v2, v11

    .line 128
    .line 129
    add-double v18, v20, v18

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :goto_3
    double-to-float v8, v9

    .line 133
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    .line 134
    .line 135
    aget-wide v2, v9, v11

    .line 136
    .line 137
    double-to-float v2, v2

    .line 138
    const/4 v3, 0x1

    .line 139
    if-eq v11, v3, :cond_a

    .line 140
    .line 141
    const/4 v10, 0x2

    .line 142
    if-eq v11, v10, :cond_9

    .line 143
    .line 144
    const/4 v3, 0x3

    .line 145
    if-eq v11, v3, :cond_8

    .line 146
    .line 147
    const/4 v3, 0x4

    .line 148
    if-eq v11, v3, :cond_7

    .line 149
    .line 150
    const/4 v2, 0x5

    .line 151
    if-eq v11, v2, :cond_6

    .line 152
    .line 153
    :goto_4
    move/from16 v10, p4

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_6
    move v10, v8

    .line 157
    goto :goto_5

    .line 158
    :cond_7
    move/from16 v10, p4

    .line 159
    .line 160
    move v15, v2

    .line 161
    move v7, v8

    .line 162
    goto :goto_5

    .line 163
    :cond_8
    move/from16 v10, p4

    .line 164
    .line 165
    move v14, v2

    .line 166
    move v6, v8

    .line 167
    goto :goto_5

    .line 168
    :cond_9
    move/from16 v10, p4

    .line 169
    .line 170
    move v13, v2

    .line 171
    move v5, v8

    .line 172
    goto :goto_5

    .line 173
    :cond_a
    move/from16 v10, p4

    .line 174
    .line 175
    move v12, v2

    .line 176
    move v4, v8

    .line 177
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 178
    .line 179
    const/4 v9, 0x1

    .line 180
    goto :goto_1

    .line 181
    :cond_b
    move/from16 p4, v10

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 184
    .line 185
    const/high16 v8, 0x40000000    # 2.0f

    .line 186
    .line 187
    if-eqz v3, :cond_e

    .line 188
    .line 189
    const/4 v2, 0x2

    .line 190
    new-array v9, v2, [F

    .line 191
    .line 192
    new-array v10, v2, [F

    .line 193
    .line 194
    move/from16 v11, p1

    .line 195
    .line 196
    float-to-double v14, v11

    .line 197
    invoke-virtual {v3, v14, v15, v9, v10}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    .line 198
    .line 199
    .line 200
    aget v3, v9, v16

    .line 201
    .line 202
    const/16 v17, 0x1

    .line 203
    .line 204
    aget v9, v9, v17

    .line 205
    .line 206
    aget v11, v10, v16

    .line 207
    .line 208
    aget v10, v10, v17

    .line 209
    .line 210
    float-to-double v14, v3

    .line 211
    float-to-double v3, v4

    .line 212
    move-wide/from16 v20, v3

    .line 213
    .line 214
    float-to-double v2, v5

    .line 215
    move-wide/from16 v18, v2

    .line 216
    .line 217
    move-wide/from16 v22, v14

    .line 218
    .line 219
    invoke-static/range {v18 .. v23}, Lai/onnxruntime/a;->a(DDD)D

    .line 220
    .line 221
    .line 222
    move-result-wide v2

    .line 223
    move-wide/from16 v4, v20

    .line 224
    .line 225
    div-float v14, v6, v8

    .line 226
    .line 227
    float-to-double v14, v14

    .line 228
    sub-double/2addr v2, v14

    .line 229
    double-to-float v2, v2

    .line 230
    float-to-double v14, v9

    .line 231
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 232
    .line 233
    .line 234
    move-result-wide v20

    .line 235
    mul-double v20, v20, v4

    .line 236
    .line 237
    sub-double v14, v14, v20

    .line 238
    .line 239
    div-float v3, v7, v8

    .line 240
    .line 241
    float-to-double v8, v3

    .line 242
    sub-double/2addr v14, v8

    .line 243
    double-to-float v3, v14

    .line 244
    float-to-double v8, v11

    .line 245
    float-to-double v11, v12

    .line 246
    move-wide/from16 v22, v8

    .line 247
    .line 248
    move-wide/from16 v20, v11

    .line 249
    .line 250
    invoke-static/range {v18 .. v23}, Lai/onnxruntime/a;->a(DDD)D

    .line 251
    .line 252
    .line 253
    move-result-wide v8

    .line 254
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 255
    .line 256
    .line 257
    move-result-wide v11

    .line 258
    mul-double/2addr v11, v4

    .line 259
    float-to-double v13, v13

    .line 260
    mul-double/2addr v11, v13

    .line 261
    add-double/2addr v11, v8

    .line 262
    double-to-float v8, v11

    .line 263
    float-to-double v9, v10

    .line 264
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    .line 265
    .line 266
    .line 267
    move-result-wide v11

    .line 268
    mul-double v11, v11, v20

    .line 269
    .line 270
    sub-double/2addr v9, v11

    .line 271
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    .line 272
    .line 273
    .line 274
    move-result-wide v11

    .line 275
    mul-double/2addr v11, v4

    .line 276
    mul-double/2addr v11, v13

    .line 277
    add-double/2addr v11, v9

    .line 278
    double-to-float v4, v11

    .line 279
    move-object/from16 v5, p5

    .line 280
    .line 281
    array-length v9, v5

    .line 282
    const/4 v10, 0x2

    .line 283
    if-lt v9, v10, :cond_c

    .line 284
    .line 285
    float-to-double v9, v8

    .line 286
    aput-wide v9, v5, v16

    .line 287
    .line 288
    float-to-double v9, v4

    .line 289
    const/16 v17, 0x1

    .line 290
    .line 291
    aput-wide v9, v5, v17

    .line 292
    .line 293
    :cond_c
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isNaN(F)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-nez v5, :cond_d

    .line 298
    .line 299
    move/from16 v10, p4

    .line 300
    .line 301
    float-to-double v9, v10

    .line 302
    float-to-double v4, v4

    .line 303
    float-to-double v11, v8

    .line 304
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 309
    .line 310
    .line 311
    move-result-wide v4

    .line 312
    add-double/2addr v4, v9

    .line 313
    double-to-float v4, v4

    .line 314
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    .line 315
    .line 316
    .line 317
    :cond_d
    move v4, v2

    .line 318
    move v5, v3

    .line 319
    goto :goto_6

    .line 320
    :cond_e
    move/from16 v10, p4

    .line 321
    .line 322
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-nez v2, :cond_f

    .line 327
    .line 328
    div-float/2addr v14, v8

    .line 329
    add-float/2addr v14, v12

    .line 330
    div-float/2addr v15, v8

    .line 331
    add-float/2addr v15, v13

    .line 332
    float-to-double v2, v10

    .line 333
    float-to-double v8, v15

    .line 334
    float-to-double v10, v14

    .line 335
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 336
    .line 337
    .line 338
    move-result-wide v8

    .line 339
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    .line 340
    .line 341
    .line 342
    move-result-wide v8

    .line 343
    add-double/2addr v8, v2

    .line 344
    double-to-float v2, v8

    .line 345
    add-float v2, v2, p3

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    .line 348
    .line 349
    .line 350
    :cond_f
    :goto_6
    const/high16 v2, 0x3f000000    # 0.5f

    .line 351
    .line 352
    add-float/2addr v4, v2

    .line 353
    float-to-int v3, v4

    .line 354
    add-float/2addr v5, v2

    .line 355
    float-to-int v2, v5

    .line 356
    add-float/2addr v4, v6

    .line 357
    float-to-int v4, v4

    .line 358
    add-float/2addr v5, v7

    .line 359
    float-to-int v5, v5

    .line 360
    invoke-virtual {v1, v3, v2, v4, v5}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    .line 361
    .line 362
    .line 363
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 4
    .line 5
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    add-float/2addr v1, v0

    .line 9
    iget v0, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 10
    .line 11
    sub-float/2addr v1, v0

    .line 12
    iget v0, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->mWidth:F

    .line 13
    .line 14
    div-float/2addr v0, v2

    .line 15
    sub-float/2addr v1, v0

    .line 16
    float-to-double v0, v1

    .line 17
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 18
    .line 19
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 20
    .line 21
    div-float/2addr v4, v2

    .line 22
    add-float/2addr v4, v3

    .line 23
    iget v3, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 24
    .line 25
    sub-float/2addr v4, v3

    .line 26
    iget p2, p2, Landroidx/constraintlayout/core/motion/MotionPaths;->mHeight:F

    .line 27
    .line 28
    div-float/2addr p2, v2

    .line 29
    sub-float/2addr v4, p2

    .line 30
    float-to-double v2, v4

    .line 31
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    .line 32
    .line 33
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    double-to-float p1, p1

    .line 38
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mX:F

    .line 39
    .line 40
    iget p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    add-double/2addr p1, v0

    .line 58
    double-to-float p1, p1

    .line 59
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeAngle:F

    .line 63
    .line 64
    float-to-double p1, p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    double-to-float p1, p1

    .line 70
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionPaths;->mY:F

    .line 71
    .line 72
    return-void
.end method
