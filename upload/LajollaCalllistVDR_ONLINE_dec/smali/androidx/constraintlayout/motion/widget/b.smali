.class public final Landroidx/constraintlayout/motion/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field public d:I

.field public final synthetic e:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/b;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroidx/constraintlayout/motion/widget/b;->a:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/b;->b:F

    const/4 p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/b;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v3, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    if-eq v3, v2, :cond_5

    :cond_0
    if-ne v0, v2, :cond_3

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v3, :cond_1

    new-instance v3, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v3, v1}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_1
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iput v0, v3, Landroidx/constraintlayout/motion/widget/b;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G(II)V

    goto :goto_0

    :cond_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    if-ne v3, v2, :cond_4

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->D(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E(II)V

    :goto_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:F

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/b;->b:F

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    if-nez v4, :cond_8

    new-instance v4, Landroidx/constraintlayout/motion/widget/b;

    invoke-direct {v4, v1}, Landroidx/constraintlayout/motion/widget/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    :cond_8
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    iput v0, v1, Landroidx/constraintlayout/motion/widget/b;->a:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/b;->b:F

    goto :goto_1

    :cond_9
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_b

    if-lez v3, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    goto :goto_1

    :cond_b
    cmpl-float v3, v0, v4

    if-eqz v3, :cond_d

    cmpl-float v3, v0, v5

    if-eqz v3, :cond_d

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r(F)V

    :cond_d
    :goto_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->a:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/b;->b:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/b;->c:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/b;->d:I

    return-void
.end method
