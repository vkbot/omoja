.class public final Landroidx/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/c;->b:I

    iput-object p2, p0, Landroidx/activity/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Landroidx/activity/c;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Ld1/a;

    iget-object v2, v0, Ld1/a;->a:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v2}, Landroidx/appcompat/widget/v0;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroidx/appcompat/widget/v0;->b(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "com.mega.engineeringmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Ld1/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Ld1/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iput-object v3, v0, Ld1/a;->g:Ljava/lang/String;

    iput-object v2, v0, Ld1/a;->h:Ljava/lang/String;

    const-string v4, "Package Name: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppBehaviorMonitor"

    invoke-static {v5, v4}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Activity Name: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "callisto_vdr"

    const-string v5, "Get event:b010608"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Ld1/a;->f:Lcom/callisto/auto/gatherer/model/ConfigAppBean;

    invoke-virtual {v4, v3}, Lcom/callisto/auto/gatherer/model/ConfigAppBean;->setAppPackage(Ljava/lang/String;)V

    iget-object v3, v0, Ld1/a;->f:Lcom/callisto/auto/gatherer/model/ConfigAppBean;

    invoke-virtual {v3, v2}, Lcom/callisto/auto/gatherer/model/ConfigAppBean;->setAppActivity(Ljava/lang/String;)V

    iget-object v2, v0, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    const-string v3, "b010608"

    iget-object v4, v0, Ld1/a;->f:Lcom/callisto/auto/gatherer/model/ConfigAppBean;

    invoke-virtual {v2, v3, v4}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Ld1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    iget-object v3, v0, Ld1/a;->e:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v3}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    :cond_2
    :goto_0
    iget-object v0, v0, Ld1/a;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a0;

    iget v2, v0, Landroidx/lifecycle/a0;->c:I

    if-nez v2, :cond_3

    iput-boolean v4, v0, Landroidx/lifecycle/a0;->d:Z

    iget-object v2, v0, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/p;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_3
    iget v2, v0, Landroidx/lifecycle/a0;->b:I

    if-nez v2, :cond_4

    iget-boolean v2, v0, Landroidx/lifecycle/a0;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroidx/lifecycle/a0;->g:Landroidx/lifecycle/p;

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/p;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v4, v0, Landroidx/lifecycle/a0;->e:Z

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/t;

    iget-object v3, v0, Landroidx/lifecycle/t;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/t;

    iget-object v0, v0, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    iget-object v2, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/t;

    sget-object v4, Landroidx/lifecycle/t;->k:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/lifecycle/t;->f:Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/t;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/t;->h(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_5
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/activity/b;->i(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    throw v2

    :pswitch_6
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Lk0/e;

    iget-object v2, v0, Lk0/e;->y:Lj0/e;

    iget v2, v2, Lj0/e;->o:I

    iget v5, v0, Lk0/e;->x:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    move v5, v4

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    iget-object v7, v0, Lk0/e;->A:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v8, 0x5

    if-eqz v5, :cond_7

    invoke-virtual {v7, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    neg-int v10, v10

    goto :goto_2

    :cond_6
    move v10, v3

    :goto_2
    add-int/2addr v10, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v10, v2

    :goto_3
    if-eqz v9, :cond_d

    if-eqz v5, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v2, v10, :cond_9

    :cond_8
    if-nez v5, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v10, :cond_d

    :cond_9
    invoke-virtual {v7, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lk0/d;

    iget-object v5, v0, Lk0/e;->y:Lj0/e;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Lj0/e;->s(Landroid/view/View;II)Z

    iput-boolean v4, v2, Lk0/d;->c:Z

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    iget v2, v0, Lk0/e;->x:I

    if-ne v2, v6, :cond_a

    move v6, v8

    :cond_a
    iget-object v0, v0, Lk0/e;->A:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    :cond_b
    iget-boolean v0, v7, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v8, v10

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_4
    if-ge v3, v2, :cond_c

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v4, v7, Landroidx/drawerlayout/widget/DrawerLayout;->s:Z

    :cond_d
    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Lj0/e;

    invoke-virtual {v0, v3}, Lj0/e;->p(I)V

    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/core/widget/e;

    iget-boolean v2, v0, Landroidx/core/widget/e;->p:Z

    if-nez v2, :cond_e

    goto/16 :goto_7

    :cond_e
    iget-boolean v2, v0, Landroidx/core/widget/e;->n:Z

    if-eqz v2, :cond_f

    iput-boolean v3, v0, Landroidx/core/widget/e;->n:Z

    iget-object v2, v0, Landroidx/core/widget/e;->b:Landroidx/core/widget/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/core/widget/a;->e:J

    const-wide/16 v7, -0x1

    iput-wide v7, v2, Landroidx/core/widget/a;->g:J

    iput-wide v5, v2, Landroidx/core/widget/a;->f:J

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v2, Landroidx/core/widget/a;->h:F

    :cond_f
    iget-object v2, v0, Landroidx/core/widget/e;->b:Landroidx/core/widget/a;

    iget-wide v5, v2, Landroidx/core/widget/a;->g:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_10

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v9, v2, Landroidx/core/widget/a;->g:J

    iget v11, v2, Landroidx/core/widget/a;->i:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    cmp-long v5, v5, v9

    if-lez v5, :cond_10

    goto :goto_5

    :cond_10
    move v4, v3

    :goto_5
    if-nez v4, :cond_14

    invoke-virtual {v0}, Landroidx/core/widget/e;->f()Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_6

    :cond_11
    iget-boolean v4, v0, Landroidx/core/widget/e;->o:Z

    if-eqz v4, :cond_12

    iput-boolean v3, v0, Landroidx/core/widget/e;->o:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-object v4, v0, Landroidx/core/widget/e;->d:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    :cond_12
    iget-wide v3, v2, Landroidx/core/widget/a;->f:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_13

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

    iget-object v3, v0, Landroidx/core/widget/e;->r:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    iget-object v0, v0, Landroidx/core/widget/e;->d:Landroid/view/View;

    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Lg0/a0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_6
    iput-boolean v3, v0, Landroidx/core/widget/e;->p:Z

    :goto_7
    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Landroidx/constraintlayout/motion/widget/b;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/b;->a()V

    return-void

    :pswitch_a
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/constraintlayout/helper/widget/Carousel;

    iget-object v0, v0, Landroidx/constraintlayout/helper/widget/Carousel;->p:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    throw v2

    :pswitch_b
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_15

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->u:Landroidx/appcompat/widget/o;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/appcompat/widget/o;->p()Z

    :cond_15
    return-void

    :pswitch_c
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/g1;

    iput-object v2, v0, Landroidx/appcompat/widget/g1;->n:Landroidx/activity/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->drawableStateChanged()V

    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Lc/b;

    invoke-virtual {v0, v4}, Lc/b;->a(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_e
    :try_start_2
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Landroidx/activity/ComponentActivity;->h(Landroidx/activity/ComponentActivity;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not perform this action after onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_8
    return-void

    :cond_16
    throw v0

    :goto_9
    iget-object v0, v1, Landroidx/activity/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
