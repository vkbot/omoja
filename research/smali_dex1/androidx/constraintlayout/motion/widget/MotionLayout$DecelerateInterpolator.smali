.class Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field mCurrentP:F

.field mInitialV:F

.field mMaxA:F

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 8
    .line 9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public config(FFF)V
    .registers 4

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 4
    .line 5
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 6
    .line 7
    return-void
.end method

.method public getInterpolation(F)F
    .registers 7

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mInitialV:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mMaxA:F

    .line 7
    .line 8
    const/high16 v3, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-lez v1, :cond_24

    .line 11
    .line 12
    div-float v1, v0, v2

    .line 13
    .line 14
    cmpg-float v1, v1, p1

    .line 15
    .line 16
    if-gez v1, :cond_13

    .line 17
    .line 18
    div-float p1, v0, v2

    .line 19
    .line 20
    :cond_13
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 21
    .line 22
    mul-float v4, v2, p1

    .line 23
    .line 24
    sub-float v4, v0, v4

    .line 25
    .line 26
    iput v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 27
    .line 28
    mul-float/2addr v0, p1

    .line 29
    mul-float/2addr v2, p1

    .line 30
    mul-float/2addr v2, p1

    .line 31
    div-float/2addr v2, v3

    .line 32
    sub-float/2addr v0, v2

    .line 33
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 34
    .line 35
    add-float/2addr v0, p1

    .line 36
    return v0

    .line 37
    :cond_24
    neg-float v1, v0

    .line 38
    div-float/2addr v1, v2

    .line 39
    cmpg-float v1, v1, p1

    .line 40
    .line 41
    if-gez v1, :cond_2c

    .line 42
    .line 43
    neg-float p1, v0

    .line 44
    div-float/2addr p1, v2

    .line 45
    :cond_2c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 46
    .line 47
    mul-float v4, v2, p1

    .line 48
    .line 49
    add-float/2addr v4, v0

    .line 50
    iput v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 51
    .line 52
    mul-float/2addr v0, p1

    .line 53
    mul-float/2addr v2, p1

    .line 54
    mul-float/2addr v2, p1

    .line 55
    div-float/2addr v2, v3

    .line 56
    add-float/2addr v2, v0

    .line 57
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->mCurrentP:F

    .line 58
    .line 59
    add-float/2addr v2, p1

    .line 60
    return v2
.end method

.method public getVelocity()F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 4
    .line 5
    return v0
.end method
