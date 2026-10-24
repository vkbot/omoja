.class public final Landroidx/recyclerview/widget/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/n;->a:I

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/n;->b:Z

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/n;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/p;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/n;->a:I

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/n;->b:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/n;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/n;->b:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget p1, p0, Landroidx/recyclerview/widget/n;->a:I

    iget-object v0, p0, Landroidx/recyclerview/widget/n;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Landroidx/recyclerview/widget/n;->b:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/n;->b:Z

    goto :goto_0

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/p;

    iget-object p1, v0, Landroidx/recyclerview/widget/p;->z:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-nez p1, :cond_1

    iput v1, v0, Landroidx/recyclerview/widget/p;->A:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/p;->e(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, v0, Landroidx/recyclerview/widget/p;->A:I

    iget-object p1, v0, Landroidx/recyclerview/widget/p;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void

    :goto_1
    check-cast v0, Landroid/view/View;

    sget-object p1, Lw0/y;->a:Lw0/c0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Lw0/z;->n(Landroid/view/View;F)V

    iget-boolean p1, p0, Landroidx/recyclerview/widget/n;->b:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/n;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/a0;->h(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/n;->b:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
