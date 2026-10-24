.class public final Ly1/e;
.super Ly1/a;
.source "SourceFile"


# instance fields
.field public final g:Ly1/h;

.field public final h:Z

.field public final synthetic i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;Ly1/c;Z)V
    .locals 0

    iput-object p1, p0, Ly1/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-direct {p0, p1, p2}, Ly1/a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V

    iput-object p3, p0, Ly1/e;->g:Ly1/h;

    iput-boolean p4, p0, Ly1/e;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/AnimatorSet;
    .locals 12

    iget-object v0, p0, Ly1/a;->f:Lm1/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1/a;->e:Lm1/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Ly1/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ly1/e;->c()I

    move-result v1

    invoke-static {v0, v1}, Lm1/f;->b(Landroid/content/Context;I)Lm1/f;

    move-result-object v0

    iput-object v0, p0, Ly1/a;->e:Lm1/f;

    :cond_1
    iget-object v0, p0, Ly1/a;->e:Lm1/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const-string v1, "width"

    invoke-virtual {v0, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Ly1/e;->g:Ly1/h;

    iget-object v4, p0, Ly1/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lm1/f;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aget-object v8, v2, v7

    new-array v9, v6, [F

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v7

    move-object v10, v3

    check-cast v10, Ly1/c;

    invoke-virtual {v10}, Ly1/c;->b()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v5

    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v0, v1, v2}, Lm1/f;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_2
    const-string v1, "height"

    invoke-virtual {v0, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lm1/f;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aget-object v8, v2, v7

    new-array v9, v6, [F

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v7

    move-object v10, v3

    check-cast v10, Ly1/c;

    iget v11, v10, Ly1/c;->a:I

    iget-object v10, v10, Ly1/c;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    goto :goto_2

    :goto_1
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedSize()I

    move-result v10

    :goto_2
    int-to-float v10, v10

    aput v10, v9, v5

    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v0, v1, v2}, Lm1/f;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_3
    const-string v1, "paddingStart"

    invoke-virtual {v0, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lm1/f;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aget-object v8, v2, v7

    new-array v9, v6, [F

    sget-object v10, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lg0/b0;->f(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v7

    move-object v10, v3

    check-cast v10, Ly1/c;

    iget v11, v10, Ly1/c;->a:I

    iget-object v10, v10, Ly1/c;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    packed-switch v11, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    iget v10, v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    goto :goto_4

    :goto_3
    invoke-virtual {v10}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    move-result v10

    :goto_4
    int-to-float v10, v10

    aput v10, v9, v5

    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v0, v1, v2}, Lm1/f;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_4
    const-string v1, "paddingEnd"

    invoke-virtual {v0, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Lm1/f;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aget-object v8, v2, v7

    new-array v9, v6, [F

    sget-object v10, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lg0/b0;->e(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    aput v4, v9, v7

    check-cast v3, Ly1/c;

    iget v4, v3, Ly1/c;->a:I

    iget-object v3, v3, Ly1/c;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    packed-switch v4, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    iget v3, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:I

    goto :goto_6

    :goto_5
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    move-result v3

    :goto_6
    int-to-float v3, v3

    aput v3, v9, v5

    invoke-virtual {v8, v9}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v0, v1, v2}, Lm1/f;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_5
    const-string v1, "labelOpacity"

    invoke-virtual {v0, v1}, Lm1/f;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lm1/f;->e(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v8, p0, Ly1/e;->h:Z

    if-eqz v8, :cond_6

    move v9, v3

    goto :goto_7

    :cond_6
    move v9, v4

    :goto_7
    if-eqz v8, :cond_7

    move v3, v4

    :cond_7
    aget-object v4, v2, v7

    new-array v6, v6, [F

    aput v9, v6, v7

    aput v3, v6, v5

    invoke-virtual {v4, v6}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v0, v1, v2}, Lm1/f;->h(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    :cond_8
    invoke-virtual {p0, v0}, Ly1/a;->b(Lm1/f;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Ly1/e;->h:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_expand_motion_spec:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_collapse_motion_spec:I

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ly1/a;->d:Landroidx/appcompat/view/menu/i;

    iput-object v0, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    iget-object v0, p0, Ly1/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ly1/e;->g:Ly1/h;

    check-cast v1, Ly1/c;

    invoke-virtual {v1}, Ly1/c;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Ly1/c;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final f(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Ly1/a;->d:Landroidx/appcompat/view/menu/i;

    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    iget-boolean p1, p0, Ly1/e;->h:Z

    iget-object v0, p0, Ly1/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->E:Z

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 6

    iget-boolean v0, p0, Ly1/e;->h:Z

    iget-object v1, p0, Ly1/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-boolean v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Ly1/e;->g:Ly1/h;

    check-cast v2, Ly1/c;

    invoke-virtual {v2}, Ly1/c;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Ly1/c;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, v2, Ly1/c;->a:I

    iget-object v3, v2, Ly1/c;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:I

    goto :goto_1

    :goto_0
    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v2, Ly1/c;->a:I

    iget-object v2, v2, Ly1/c;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    iget v2, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:I

    goto :goto_3

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    move-result v2

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sget-object v5, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0, v3, v2, v4}, Lg0/b0;->k(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Ly1/e;->i:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->D:Z

    iget-boolean v2, p0, Ly1/e;->h:Z

    if-eq v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
