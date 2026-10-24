.class public final Lg0/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg0/v0;Landroidx/appcompat/app/f0;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg0/u0;->a:I

    .line 1
    iput-object p1, p0, Lg0/u0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg0/u0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg0/u0;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li2/f;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg0/u0;->a:I

    .line 2
    iput-object p1, p0, Lg0/u0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg0/u0;->b:Landroid/view/View;

    iput-object p3, p0, Lg0/u0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lg0/u0;->a:I

    iget-object v1, p0, Lg0/u0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/appcompat/app/f0;

    iget-object p1, v1, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/k0;

    iget-object p1, p1, Landroidx/appcompat/app/k0;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :goto_0
    iget-object v0, p0, Lg0/u0;->d:Ljava/lang/Object;

    check-cast v0, Li2/f;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sget v2, Li2/f;->f:I

    iget-object v2, p0, Lg0/u0;->b:Landroid/view/View;

    invoke-virtual {v0, v2, v1, p1}, Li2/f;->c(Landroid/view/View;Landroid/view/View;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
