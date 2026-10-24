.class public final Lq1/r;
.super Lq1/p;
.source "SourceFile"


# virtual methods
.method public final e()F
    .locals 0

    iget-object p0, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public final f(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lq1/p;->w:Landroidx/appcompat/view/menu/i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lq1/p;->f(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lq1/p;->f:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v3, p0, Lq1/p;->k:I

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget p0, p0, Lq1/p;->k:I

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 6

    invoke-virtual {p0}, Lq1/r;->t()Ly1/h;

    move-result-object v0

    iput-object v0, p0, Lq1/p;->b:Ly1/h;

    invoke-virtual {v0, p1}, Ly1/h;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lq1/p;->b:Ly1/h;

    invoke-virtual {v0, p2}, Ly1/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p2, p0, Lq1/p;->b:Ly1/h;

    iget-object v0, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Ly1/h;->k(Landroid/content/Context;)V

    const/4 p2, 0x0

    if-lez p4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lq1/b;

    iget-object v2, p0, Lq1/p;->a:Ly1/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lq1/b;-><init>(Ly1/n;)V

    sget v2, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    sget-object v3, Lx/f;->a:Ljava/lang/Object;

    invoke-static {v0, v2}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    invoke-static {v0, v3}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    invoke-static {v0, v4}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    invoke-static {v0, v5}, Lx/d;->a(Landroid/content/Context;I)I

    move-result v0

    iput v2, v1, Lq1/b;->i:I

    iput v3, v1, Lq1/b;->j:I

    iput v4, v1, Lq1/b;->k:I

    iput v0, v1, Lq1/b;->l:I

    int-to-float p4, p4

    iget v0, v1, Lq1/b;->h:F

    cmpl-float v0, v0, p4

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput p4, v1, Lq1/b;->h:F

    iget-object v0, v1, Lq1/b;->b:Landroid/graphics/Paint;

    const v3, 0x3faaa993    # 1.3333f

    mul-float/2addr p4, v3

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-boolean v2, v1, Lq1/b;->n:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p4

    iget v0, v1, Lq1/b;->m:I

    invoke-virtual {p1, p4, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p4

    iput p4, v1, Lq1/b;->m:I

    :cond_2
    iput-object p1, v1, Lq1/b;->p:Landroid/content/res/ColorStateList;

    iput-boolean v2, v1, Lq1/b;->n:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-object v1, p0, Lq1/p;->d:Lq1/b;

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lq1/p;->d:Lq1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    iget-object v0, p0, Lq1/p;->b:Ly1/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v0, p4, v2

    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lq1/p;->d:Lq1/b;

    iget-object p1, p0, Lq1/p;->b:Ly1/h;

    :goto_0
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Lw1/a;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p4, p0, Lq1/p;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lq1/p;->e:Landroid/graphics/drawable/LayerDrawable;

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    invoke-virtual {p0}, Lq1/p;->r()V

    return-void
.end method

.method public final j([I)V
    .locals 0

    return-void
.end method

.method public final k(FFF)V
    .locals 7

    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    invoke-virtual {p0, p1, p3}, Lq1/r;->s(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    sget-object v1, Lq1/p;->D:[I

    invoke-virtual {v0, v1, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, p1, p2}, Lq1/r;->s(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    sget-object v1, Lq1/p;->E:[I

    invoke-virtual {v0, v1, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, p1, p2}, Lq1/r;->s(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    sget-object v1, Lq1/p;->F:[I

    invoke-virtual {v0, v1, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, p1, p2}, Lq1/r;->s(FF)Landroid/animation/AnimatorSet;

    move-result-object p2

    sget-object p3, Lq1/p;->G:[I

    invoke-virtual {v0, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string p1, "elevation"

    iget-object v4, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v4, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    invoke-static {v4, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x64

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v3, [Landroid/animation/Animator;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object p1, Lq1/p;->C:Lp0/a;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Lq1/p;->H:[I

    invoke-virtual {v0, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, v2, v2}, Lq1/r;->s(FF)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lq1/p;->I:[I

    invoke-virtual {v0, p2, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p0}, Lq1/r;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lq1/p;->r()V

    :cond_0
    return-void
.end method

.method public final n(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lq1/p;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lw1/a;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lq1/p;->n(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public final p()Z
    .locals 3

    iget-object v0, p0, Lq1/p;->w:Landroidx/appcompat/view/menu/i;

    iget-object v0, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lq1/p;->f:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget p0, p0, Lq1/p;->k:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final s(FF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string p1, "elevation"

    iget-object p0, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v1, [F

    aput p2, v1, v3

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p0, Lq1/p;->C:Lp0/a;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public final t()Ly1/h;
    .locals 1

    iget-object p0, p0, Lq1/p;->a:Ly1/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lq1/q;

    invoke-direct {v0, p0}, Lq1/q;-><init>(Ly1/n;)V

    return-object v0
.end method
