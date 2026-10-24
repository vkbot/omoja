.class public Lcom/mega/carsettings/ui/TextThumbnailSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# virtual methods
.method public final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    const/4 p0, 0x0

    throw p0
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    iget-object p1, p0, Lcom/mega/carsettings/ui/TextThumbnailSeekBar;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/ui/TextThumbnailSeekBar;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/ui/TextThumbnailSeekBar;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/ui/TextThumbnailSeekBar;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/carsettings/ui/TextThumbnailSeekBar;->b:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setTextFormatter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/carsettings/ui/TextThumbnailSeekBar;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
