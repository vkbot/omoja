.class public abstract Ly1/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Ly1/q;


# direct methods
.method public constructor <init>(Ly1/s;)V
    .locals 0

    iput-object p1, p0, Ly1/p;->d:Ly1/q;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Ly1/p;->c:F

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Ly1/p;->d:Ly1/q;

    iget-object v0, v0, Ly1/q;->b:Lg2/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg2/h;->m(F)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ly1/p;->a:Z

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-boolean v0, p0, Ly1/p;->a:Z

    iget-object v1, p0, Ly1/p;->d:Ly1/q;

    if-nez v0, :cond_1

    iget-object v0, v1, Ly1/q;->b:Lg2/h;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lg2/h;->b:Lg2/g;

    iget v0, v0, Lg2/g;->n:F

    :goto_0
    iput v0, p0, Ly1/p;->b:F

    move-object v0, p0

    check-cast v0, Ly1/o;

    iget v3, v0, Ly1/o;->e:I

    iget-object v0, v0, Ly1/o;->f:Ly1/q;

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v2, v0, Ly1/q;->h:F

    iget v0, v0, Ly1/q;->j:F

    goto :goto_1

    :pswitch_1
    iget v2, v0, Ly1/q;->h:F

    iget v0, v0, Ly1/q;->i:F

    :goto_1
    add-float/2addr v2, v0

    goto :goto_3

    :goto_2
    iget v2, v0, Ly1/q;->h:F

    :goto_3
    :pswitch_2
    iput v2, p0, Ly1/p;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly1/p;->a:Z

    :cond_1
    iget v0, p0, Ly1/p;->b:F

    iget v2, p0, Ly1/p;->c:F

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, v1, Ly1/q;->b:Lg2/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lg2/h;->m(F)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
