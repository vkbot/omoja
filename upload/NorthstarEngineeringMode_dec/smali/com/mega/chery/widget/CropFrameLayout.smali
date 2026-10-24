.class public Lcom/mega/chery/widget/CropFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/chery/widget/CropFrameLayout$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:F

.field public c:F

.field public d:Z

.field public e:Z

.field public f:Z


# virtual methods
.method public final a(Ljava/lang/String;)F
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error path"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-boolean v4, p0, Lcom/mega/chery/widget/CropFrameLayout;->d:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/mega/chery/widget/CropFrameLayout;->b:F

    sub-float v4, v0, v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/mega/chery/widget/CropFrameLayout;->e:Z

    iget v5, p0, Lcom/mega/chery/widget/CropFrameLayout;->c:F

    sub-float v5, v0, v5

    iput v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->c:F

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v3, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    add-float/2addr v5, v0

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->e:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/mega/chery/widget/CropFrameLayout;->f:Z

    iget-object v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    iput-boolean v1, p0, Lcom/mega/chery/widget/CropFrameLayout;->e:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->c:F

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->e:Z

    if-eqz v0, :cond_7

    return v2

    :cond_7
    iget-boolean v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->f:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/mega/chery/widget/CropFrameLayout;->f:Z

    return v2

    :cond_8
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/mega/chery/widget/CropFrameLayout;->a:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lc1/a;

    invoke-direct {v1, p0}, Lc1/a;-><init>(Lcom/mega/chery/widget/CropFrameLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setClipPath(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/mega/chery/widget/CropFrameLayout;->a(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mega/chery/widget/CropFrameLayout;->a(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/mega/chery/widget/CropFrameLayout;->a(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/mega/chery/widget/CropFrameLayout;->a(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x4

    aget-object p1, p1, v4

    invoke-virtual {p0, p1}, Lcom/mega/chery/widget/CropFrameLayout;->a(Ljava/lang/String;)F

    cmpl-float p1, v0, v2

    if-eqz p1, :cond_3

    cmpl-float p1, v1, v3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEventListener(Lcom/mega/chery/widget/CropFrameLayout$a;)V
    .locals 0

    return-void
.end method
