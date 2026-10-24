.class public final Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/b;->a:I

    iput-object p2, p0, Landroidx/activity/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/activity/b;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    return-void

    :pswitch_2
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a0;

    iget v1, v0, Landroidx/lifecycle/a0;->b:I

    if-nez v1, :cond_0

    iput-boolean v4, v0, Landroidx/lifecycle/a0;->c:Z

    iget-object v1, v0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    iget v1, v0, Landroidx/lifecycle/a0;->a:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroidx/lifecycle/a0;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/p;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v4, v0, Landroidx/lifecycle/a0;->d:Z

    :cond_1
    return-void

    :pswitch_3
    iget-object v1, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/t;

    iget-object v1, v1, Landroidx/lifecycle/t;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/t;

    iget-object v2, v2, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/t;

    sget-object v4, Landroidx/lifecycle/t;->k:Ljava/lang/Object;

    iput-object v4, v3, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/t;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/t;->h(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_4
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    invoke-static {v0}, La/a;->i(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    throw v2

    :pswitch_5
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Ll0/e;

    iget-object v1, v0, Ll0/e;->v:Lk0/e;

    iget v1, v1, Lk0/e;->o:I

    iget v2, v0, Ll0/e;->u:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object v6, v0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v7, 0x5

    if-eqz v2, :cond_4

    invoke-virtual {v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    add-int/2addr v9, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v1

    :goto_2
    if-eqz v8, :cond_a

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v1, v9, :cond_6

    :cond_5
    if-nez v2, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v9, :cond_a

    :cond_6
    invoke-virtual {v6, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ll0/d;

    iget-object v2, v0, Ll0/e;->v:Lk0/e;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lk0/e;->s(Landroid/view/View;II)Z

    iput-boolean v4, v1, Ll0/d;->c:Z

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    iget v1, v0, Ll0/e;->u:I

    if-ne v1, v5, :cond_7

    move v5, v7

    :cond_7
    iget-object v0, v0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    :cond_8
    iget-boolean v0, v6, Landroidx/drawerlayout/widget/DrawerLayout;->q:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v7, v9

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_9

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v4, v6, Landroidx/drawerlayout/widget/DrawerLayout;->q:Z

    :cond_a
    return-void

    :pswitch_6
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Lk0/e;

    invoke-virtual {v0, v3}, Lk0/e;->p(I)V

    return-void

    :pswitch_7
    iget-object v1, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/core/widget/d;

    iget-boolean v2, v1, Landroidx/core/widget/d;->o:Z

    if-nez v2, :cond_b

    goto/16 :goto_6

    :cond_b
    iget-boolean v2, v1, Landroidx/core/widget/d;->m:Z

    if-eqz v2, :cond_c

    iput-boolean v3, v1, Landroidx/core/widget/d;->m:Z

    iget-object v2, v1, Landroidx/core/widget/d;->a:Landroidx/core/widget/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/core/widget/a;->e:J

    const-wide/16 v7, -0x1

    iput-wide v7, v2, Landroidx/core/widget/a;->g:J

    iput-wide v5, v2, Landroidx/core/widget/a;->f:J

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v2, Landroidx/core/widget/a;->h:F

    :cond_c
    iget-object v2, v1, Landroidx/core/widget/d;->a:Landroidx/core/widget/a;

    iget-wide v5, v2, Landroidx/core/widget/a;->g:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v2, Landroidx/core/widget/a;->g:J

    iget v11, v2, Landroidx/core/widget/a;->i:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    cmp-long v5, v5, v9

    if-lez v5, :cond_d

    goto :goto_4

    :cond_d
    move v4, v3

    :goto_4
    if-nez v4, :cond_11

    invoke-virtual {v1}, Landroidx/core/widget/d;->f()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    iget-boolean v4, v1, Landroidx/core/widget/d;->n:Z

    if-eqz v4, :cond_f

    iput-boolean v3, v1, Landroidx/core/widget/d;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, v1, Landroidx/core/widget/d;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_f
    iget-wide v3, v2, Landroidx/core/widget/a;->f:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_10

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/widget/a;->a(J)F

    move-result v5

    const/high16 v6, -0x3f800000    # -4.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    iget-wide v6, v2, Landroidx/core/widget/a;->f:J

    sub-long v6, v3, v6

    iput-wide v3, v2, Landroidx/core/widget/a;->f:J

    long-to-float v3, v6

    mul-float/2addr v3, v5

    iget v2, v2, Landroidx/core/widget/a;->d:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, v1, Landroidx/core/widget/d;->q:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    iget-object v1, v1, Landroidx/core/widget/d;->c:Landroid/view/View;

    sget-object v2, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Lh0/z;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_5
    iput-boolean v3, v1, Landroidx/core/widget/d;->o:Z

    :goto_6
    return-void

    :pswitch_8
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/b;->a()V

    return-void

    :pswitch_9
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/helper/widget/Carousel;

    iget-object v0, v0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    throw v2

    :pswitch_a
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_12

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->p()Z

    :cond_12
    return-void

    :pswitch_b
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/d1;

    iput-object v2, v0, Landroidx/appcompat/widget/d1;->m:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/appcompat/widget/d1;->drawableStateChanged()V

    return-void

    :pswitch_c
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Ld/b;

    invoke-virtual {v0, v4}, Ld/b;->a(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_d
    :try_start_2
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->h(Landroidx/activity/ComponentActivity;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_7
    return-void

    :cond_13
    throw v0

    :goto_8
    iget-object v0, v0, Landroidx/activity/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
