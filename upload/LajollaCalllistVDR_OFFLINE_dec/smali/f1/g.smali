.class public abstract Lf1/g;
.super Lf1/i;
.source "SourceFile"


# instance fields
.field public c:Le0/a;

.field public d:Landroid/widget/OverScroller;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf1/i;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf1/g;->f:I

    .line 3
    iput v0, p0, Lf1/g;->h:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lf1/i;-><init>(I)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lf1/g;->f:I

    .line 6
    iput p1, p0, Lf1/g;->h:I

    return-void
.end method


# virtual methods
.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Lf1/g;->h:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lf1/g;->h:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lf1/g;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lf1/g;->f:I

    if-ne v0, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v4

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lf1/g;->g:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lf1/g;->h:I

    if-le v1, v5, :cond_3

    iput v0, p0, Lf1/g;->g:I

    return v2

    :cond_3
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_8

    iput v3, p0, Lf1/g;->f:I

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    move-object v5, p0

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    move-object v6, p2

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v5, v5, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v4

    :goto_2
    iput-boolean p1, p0, Lf1/g;->e:Z

    if-eqz p1, :cond_8

    iput v1, p0, Lf1/g;->g:I

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lf1/g;->f:I

    iget-object p1, p0, Lf1/g;->i:Landroid/view/VelocityTracker;

    if-nez p1, :cond_7

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lf1/g;->i:Landroid/view/VelocityTracker;

    :cond_7
    iget-object p1, p0, Lf1/g;->d:Landroid/widget/OverScroller;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lf1/g;->d:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    return v2

    :cond_8
    iget-object p0, p0, Lf1/g;->i:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    return v4
.end method

.method public final r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v0, v8, :cond_4

    const/4 v10, 0x2

    if-eq v0, v10, :cond_2

    if-eq v0, v5, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v9

    :goto_0
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Lf1/g;->f:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Lf1/g;->g:I

    goto :goto_1

    :cond_2
    iget v0, v6, Lf1/g;->f:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    return v9

    :cond_3
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v3, v6, Lf1/g;->g:I

    sub-int/2addr v3, v0

    iput v0, v6, Lf1/g;->g:I

    move-object v0, v2

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lf1/g;->u()I

    move-result v0

    sub-int v3, v0, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lf1/g;->v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    :goto_1
    move v0, v9

    goto/16 :goto_4

    :cond_4
    iget-object v0, v6, Lf1/g;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Lf1/g;->i:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, v6, Lf1/g;->i:Landroid/view/VelocityTracker;

    iget v10, v6, Lf1/g;->f:I

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v10}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v11

    neg-int v11, v11

    const/16 v20, 0x0

    iget-object v12, v6, Lf1/g;->c:Le0/a;

    if-eqz v12, :cond_5

    invoke-virtual {v2, v12}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v3, v6, Lf1/g;->c:Le0/a;

    :cond_5
    iget-object v12, v6, Lf1/g;->d:Landroid/widget/OverScroller;

    if-nez v12, :cond_6

    new-instance v12, Landroid/widget/OverScroller;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v12, v6, Lf1/g;->d:Landroid/widget/OverScroller;

    :cond_6
    iget-object v12, v6, Lf1/g;->d:Landroid/widget/OverScroller;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lf1/i;->s()I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v20}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, v6, Lf1/g;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Le0/a;

    invoke-direct {v0, v6, v1, v2, v5}, Le0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, v6, Lf1/g;->c:Le0/a;

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, v0}, Lh0/z;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    move-object v0, v6

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {v0, v1, v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    iget-boolean v0, v10, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-eqz v0, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/android/material/appbar/AppBarLayout;->e(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/android/material/appbar/AppBarLayout;->d(Z)Z

    :cond_8
    :goto_2
    move v0, v8

    goto :goto_3

    :cond_9
    move v0, v9

    :goto_3
    iput-boolean v9, v6, Lf1/g;->e:Z

    iput v4, v6, Lf1/g;->f:I

    iget-object v1, v6, Lf1/g;->i:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, v6, Lf1/g;->i:Landroid/view/VelocityTracker;

    :cond_a
    :goto_4
    iget-object v1, v6, Lf1/g;->i:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    iget-boolean v1, v6, Lf1/g;->e:Z

    if-nez v1, :cond_d

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    move v8, v9

    :cond_d
    :goto_5
    return v8
.end method

.method public abstract u()I
.end method

.method public abstract v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
.end method

.method public final w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 6

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lf1/g;->v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    return-void
.end method
