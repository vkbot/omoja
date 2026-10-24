.class public abstract Lq1/o;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Lq1/p;


# direct methods
.method public constructor <init>(Lq1/r;)V
    .locals 0

    iput-object p1, p0, Lq1/o;->d:Lq1/p;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lq1/o;->c:F

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lq1/o;->d:Lq1/p;

    iget-object v0, v0, Lq1/p;->b:Ly1/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/h;->m(F)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lq1/o;->a:Z

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-boolean v0, p0, Lq1/o;->a:Z

    iget-object v1, p0, Lq1/o;->d:Lq1/p;

    if-nez v0, :cond_1

    iget-object v0, v1, Lq1/p;->b:Ly1/h;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ly1/h;->a:Ly1/g;

    iget v0, v0, Ly1/g;->n:F

    :goto_0
    iput v0, p0, Lq1/o;->b:F

    move-object v0, p0

    check-cast v0, Lq1/n;

    iget v3, v0, Lq1/n;->e:I

    iget-object v0, v0, Lq1/n;->f:Lq1/p;

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v2, v0, Lq1/p;->h:F

    iget v0, v0, Lq1/p;->j:F

    goto :goto_1

    :pswitch_1
    iget v2, v0, Lq1/p;->h:F

    iget v0, v0, Lq1/p;->i:F

    :goto_1
    add-float/2addr v2, v0

    goto :goto_3

    :goto_2
    iget v2, v0, Lq1/p;->h:F

    :goto_3
    :pswitch_2
    iput v2, p0, Lq1/o;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/o;->a:Z

    :cond_1
    iget v0, p0, Lq1/o;->b:F

    iget p0, p0, Lq1/o;->c:F

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    float-to-int p0, p1

    int-to-float p0, p0

    iget-object p1, v1, Lq1/p;->b:Ly1/h;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ly1/h;->m(F)V

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
