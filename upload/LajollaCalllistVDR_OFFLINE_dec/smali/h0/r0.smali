.class public final Lh0/r0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lh0/r0;->a:I

    iput-object p1, p0, Lh0/r0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lh0/r0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lh0/r0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lh0/r0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lh0/r0;->b:Ljava/lang/Object;

    check-cast p1, Lh0/u0;

    iget-object p0, p0, Lh0/r0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0}, Lh0/u0;->e(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lh0/r0;->a:I

    iget-object p0, p0, Lh0/r0;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lh0/u0;

    invoke-interface {p0}, Lh0/u0;->b()V

    return-void

    :goto_0
    check-cast p0, Lm1/g;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lm1/g;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lh0/r0;->a:I

    iget-object v0, p0, Lh0/r0;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lh0/u0;

    invoke-interface {v0}, Lh0/u0;->f()V

    return-void

    :goto_0
    check-cast v0, Lm1/g;

    iget-object p0, p0, Lh0/r0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p0}, Lm1/g;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
