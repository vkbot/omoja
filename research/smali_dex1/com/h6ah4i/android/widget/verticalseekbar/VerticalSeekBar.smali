.class public Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Z

.field public c:Ljava/lang/reflect/Method;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x5a

    .line 5
    .line 6
    iput v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_22

    .line 13
    .line 14
    sget-object v2, Lz6/a;->a:[I

    .line 15
    .line 16
    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eq p2, v0, :cond_1d

    .line 25
    .line 26
    const/16 v0, 0x10e

    .line 27
    .line 28
    if-ne p2, v0, :cond_1f

    .line 29
    .line 30
    :cond_1d
    iput p2, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 31
    .line 32
    :cond_1f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void
.end method

.method private getWrapper()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    .line 6
    .line 7
    if-eqz v1, :cond_b

    .line 8
    .line 9
    check-cast v0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    .line 3
    .line 4
    if-nez v0, :cond_1e

    .line 5
    .line 6
    :try_start_5
    const-class v0, Landroid/widget/ProgressBar;

    .line 7
    .line 8
    const-string v1, "setProgress"

    .line 9
    .line 10
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1e
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    .line 27
    .line 28
    goto :goto_1e

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    goto :goto_41

    .line 31
    :catch_1e
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c:Ljava/lang/reflect/Method;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_1c

    .line 32
    .line 33
    if-eqz v0, :cond_30

    .line 34
    .line 35
    :try_start_22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2f} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_2f} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_2f} :catch_33
    .catchall {:try_start_22 .. :try_end_2f} :catchall_1c

    .line 46
    .line 47
    .line 48
    goto :goto_33

    .line 49
    :cond_30
    :try_start_30
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 50
    .line 51
    .line 52
    :catch_33
    :goto_33
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_1c

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_1c

    .line 67
    throw p1
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .registers 8

    .line 1
    invoke-super {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v2, v0

    .line 14
    sub-int v1, v2, v1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    float-to-int p1, p1

    .line 21
    iget v3, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 22
    .line 23
    const/16 v4, 0x5a

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-eq v3, v4, :cond_24

    .line 27
    .line 28
    const/16 v0, 0x10e

    .line 29
    .line 30
    if-eq v3, v0, :cond_21

    .line 31
    .line 32
    move p1, v5

    .line 33
    goto :goto_26

    .line 34
    :cond_21
    sub-int/2addr v2, p1

    .line 35
    int-to-float p1, v2

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    sub-int/2addr p1, v0

    .line 38
    int-to-float p1, p1

    .line 39
    :goto_26
    cmpg-float v0, p1, v5

    .line 40
    .line 41
    if-ltz v0, :cond_37

    .line 42
    .line 43
    if-nez v1, :cond_2d

    .line 44
    .line 45
    goto :goto_37

    .line 46
    :cond_2d
    int-to-float v0, v1

    .line 47
    cmpl-float v1, p1, v0

    .line 48
    .line 49
    if-lez v1, :cond_35

    .line 50
    .line 51
    const/high16 v5, 0x3f800000    # 1.0f

    .line 52
    .line 53
    goto :goto_37

    .line 54
    :cond_35
    div-float v5, p1, v0

    .line 55
    .line 56
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    int-to-float p1, p1

    .line 61
    mul-float/2addr v5, p1

    .line 62
    float-to-int p1, v5

    .line 63
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->a(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public getRotationAngle()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_32

    .line 7
    .line 8
    iget v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 9
    .line 10
    const/16 v1, 0x5a

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_24

    .line 14
    .line 15
    const/16 v1, 0x10e

    .line 16
    .line 17
    if-eq v0, v1, :cond_13

    .line 18
    .line 19
    goto :goto_32

    .line 20
    :cond_13
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    neg-int v0, v0

    .line 30
    int-to-float v0, v0

    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    .line 33
    .line 34
    goto :goto_32

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_37

    .line 37
    :cond_24
    const/high16 v0, 0x42b40000    # 90.0f

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 40
    .line 41
    .line 42
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    neg-int v0, v0

    .line 47
    int-to-float v0, v0

    .line 48
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 49
    .line 50
    .line 51
    :cond_32
    :goto_32
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_22

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_22

    .line 57
    throw p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_37

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    packed-switch p1, :pswitch_data_3c

    .line 11
    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_1f

    .line 15
    :pswitch_e
    return v1

    .line 16
    :pswitch_f
    iget v1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 17
    .line 18
    const/16 v3, 0x5a

    .line 19
    .line 20
    if-ne v1, v3, :cond_16

    .line 21
    .line 22
    :goto_15
    move v0, v2

    .line 23
    :cond_16
    move v1, v2

    .line 24
    goto :goto_1f

    .line 25
    :pswitch_18
    iget v1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 26
    .line 27
    const/16 v3, 0x10e

    .line 28
    .line 29
    if-ne v1, v3, :cond_16

    .line 30
    .line 31
    goto :goto_15

    .line 32
    :goto_1f
    if-eqz v1, :cond_37

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    mul-int/2addr v0, p1

    .line 43
    add-int/2addr v0, p2

    .line 44
    if-ltz v0, :cond_36

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-gt v0, p1, :cond_36

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->a(I)V

    .line 53
    .line 54
    .line 55
    :cond_36
    return v2

    .line 56
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :pswitch_data_3c
    .packed-switch 0x13
        :pswitch_18
        :pswitch_f
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public final declared-synchronized onMeasure(II)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 9
    .line 10
    .line 11
    goto :goto_35

    .line 12
    :catchall_b
    move-exception p1

    .line 13
    goto :goto_37

    .line 14
    :cond_d
    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_2a

    .line 26
    .line 27
    if-eqz p1, :cond_2a

    .line 28
    .line 29
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    if-ltz p2, :cond_2a

    .line 32
    .line 33
    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_35

    .line 43
    :cond_2a
    invoke-super {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-super {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_b

    .line 52
    .line 53
    .line 54
    :goto_35
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_b

    .line 57
    throw p1
.end method

.method public final onSizeChanged(IIII)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    invoke-super {p0, p2, p1, p4, p3}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_2e

    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2d

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_24

    .line 21
    .line 22
    if-eq p1, v3, :cond_1a

    .line 23
    .line 24
    if-eq p1, v2, :cond_1a

    .line 25
    .line 26
    goto :goto_2d

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2d

    .line 32
    .line 33
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2d

    .line 42
    .line 43
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    :goto_2d
    return v0

    .line 47
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_35

    .line 52
    .line 53
    return v1

    .line 54
    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_79

    .line 59
    .line 60
    if-eq v0, v3, :cond_58

    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    if-eq v0, v4, :cond_50

    .line 64
    .line 65
    if-eq v0, v2, :cond_43

    .line 66
    .line 67
    goto :goto_57

    .line 68
    :cond_43
    iget-boolean p1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 69
    .line 70
    if-eqz p1, :cond_4c

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :cond_50
    iget-boolean v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 82
    .line 83
    if-eqz v0, :cond_57

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b(Landroid/view/MotionEvent;)V

    .line 86
    .line 87
    .line 88
    :cond_57
    :goto_57
    return v3

    .line 89
    :cond_58
    iget-boolean v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 90
    .line 91
    if-eqz v0, :cond_65

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b(Landroid/view/MotionEvent;)V

    .line 94
    .line 95
    .line 96
    iput-boolean v1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_75

    .line 102
    :cond_65
    iput-boolean v3, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b(Landroid/view/MotionEvent;)V

    .line 105
    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_75

    .line 114
    .line 115
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 116
    .line 117
    .line 118
    :cond_75
    :goto_75
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :cond_79
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 123
    .line 124
    .line 125
    iput-boolean v3, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b:Z

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->b(Landroid/view/MotionEvent;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_8a

    .line 135
    .line 136
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 137
    .line 138
    .line 139
    :cond_8a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 140
    .line 141
    .line 142
    return v3
.end method

.method public declared-synchronized setProgress(I)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_16

    .line 10
    .line 11
    invoke-super {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-super {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 21
    .line 22
    .line 23
    :cond_16
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    .line 27
    throw p1
.end method

.method public setRotationAngle(I)V
    .registers 4

    .line 1
    const/16 v0, 0x5a

    .line 2
    .line 3
    if-eq p1, v0, :cond_13

    .line 4
    .line 5
    const/16 v0, 0x10e

    .line 6
    .line 7
    if-ne p1, v0, :cond_9

    .line 8
    .line 9
    goto :goto_13

    .line 10
    :cond_9
    const-string v0, "Invalid angle specified :"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lai/onnxruntime/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    :goto_13
    iget v0, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 21
    .line 22
    if-ne v0, p1, :cond_18

    .line 23
    .line 24
    goto :goto_31

    .line 25
    :cond_18
    iput p1, p0, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->d:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->c()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_32

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;->getWrapper()Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_31

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;->a(II)V

    .line 48
    .line 49
    .line 50
    :cond_31
    :goto_31
    return-void

    .line 51
    :cond_32
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
