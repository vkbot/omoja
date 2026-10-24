.class public final Landroidx/appcompat/widget/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/e;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/appcompat/widget/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/e;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    check-cast v2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    iput-object v1, v2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->b:Landroid/animation/AnimatorSet;

    return-void

    :pswitch_2
    check-cast v2, Lcom/google/android/material/textfield/l;

    iget-object p1, v2, Lcom/google/android/material/textfield/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v0, v2, Lcom/google/android/material/textfield/l;->k:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, v2, Lcom/google/android/material/textfield/l;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_3
    check-cast v2, Lcom/google/android/material/internal/r;

    iget-object v0, v2, Lcom/google/android/material/internal/r;->b:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    iput-object v1, v2, Lcom/google/android/material/internal/r;->b:Landroid/animation/ValueAnimator;

    :cond_0
    return-void

    :pswitch_4
    check-cast v2, Lu1/g;

    invoke-interface {v2}, Lu1/g;->g()V

    return-void

    :pswitch_5
    check-cast v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    iput-object v1, v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->d:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_6
    check-cast v2, Lw0/p;

    invoke-virtual {v2}, Lw0/p;->m()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_7
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->x:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Landroidx/appcompat/widget/e;->b:Ljava/lang/Object;

    check-cast p1, Lc2/o;

    iget v0, p1, Lc2/o;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p1, Lc2/o;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v2, v2, Lc2/d;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p1, Lc2/o;->g:I

    iput-boolean v1, p1, Lc2/o;->h:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/appcompat/widget/e;->b:Ljava/lang/Object;

    check-cast p1, Lu1/g;

    invoke-interface {p1}, Lu1/g;->d()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
