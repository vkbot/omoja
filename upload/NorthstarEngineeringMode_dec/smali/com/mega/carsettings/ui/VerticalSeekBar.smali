.class public Lcom/mega/carsettings/ui/VerticalSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public b:Z


# virtual methods
.method public final changeProgress(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMin()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/ui/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/mega/carsettings/ui/VerticalSeekBar;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->b:Z

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/ui/VerticalSeekBar;->changeProgress(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->b:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/ui/VerticalSeekBar;->changeProgress(Landroid/view/MotionEvent;)V

    :cond_3
    iput-boolean v1, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->b:Z

    iget-object p1, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->b:Z

    iget-object p1, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_5
    :goto_0
    return v2
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/mega/carsettings/ui/VerticalSeekBar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/mega/carsettings/ui/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
