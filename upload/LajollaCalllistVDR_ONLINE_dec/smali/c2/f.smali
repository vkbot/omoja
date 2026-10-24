.class public final Lc2/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/g;


# direct methods
.method public synthetic constructor <init>(Lc2/g;I)V
    .locals 0

    iput p2, p0, Lc2/f;->a:I

    iput-object p1, p0, Lc2/f;->b:Lc2/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lc2/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc2/f;->b:Lc2/g;

    invoke-virtual {p1}, Lc2/g;->c()V

    iget-object p1, p1, Lc2/g;->k:Lx0/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lx0/a;->a()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lc2/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc2/f;->b:Lc2/g;

    iget v0, p1, Lc2/g;->h:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p1, Lc2/g;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v1, v1, Lc2/d;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p1, Lc2/g;->h:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
