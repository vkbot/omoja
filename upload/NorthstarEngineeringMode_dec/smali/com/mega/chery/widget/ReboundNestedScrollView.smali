.class public Lcom/mega/chery/widget/ReboundNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/view/VelocityTracker;

.field public d:Z


# direct methods
.method public static a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    instance-of v2, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    move v0, v4

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v1, :cond_1

    invoke-static {p0, v2}, Lcom/mega/chery/widget/ReboundNestedScrollView;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, p0, v4

    int-to-float v5, v2

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    aget p0, p0, v3

    int-to-float v0, p0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v4

    :cond_4
    :goto_3
    return v4
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->a:F

    sub-float v2, v1, v2

    iget v5, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->b:F

    sub-float/2addr v0, v5

    iput v1, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->a:F

    iget-object v1, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget-object v5, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v4

    cmpl-float v0, v6, v0

    if-lez v0, :cond_a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v4

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v0, v1

    if-ne v4, v0, :cond_a

    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    :cond_7
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mega/chery/widget/ReboundNestedScrollView;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->b:F

    iget-object v0, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDisableScrollWhenChildFits(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/chery/widget/ReboundNestedScrollView;->d:Z

    return-void
.end method
