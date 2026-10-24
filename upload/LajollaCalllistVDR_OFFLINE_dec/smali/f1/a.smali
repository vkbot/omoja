.class public final Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf1/a;->a:I

    iput-object p2, p0, Lf1/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lf1/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lf1/a;->a:I

    iget-object v1, p0, Lf1/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v1, Ly1/h;

    invoke-virtual {v1, p1}, Ly1/h;->m(F)V

    iget-object p0, p0, Lf1/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->r:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Ly1/h;

    if-eqz v1, :cond_0

    check-cast v0, Ly1/h;

    invoke-virtual {v0, p1}, Ly1/h;->m(F)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :goto_0
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
