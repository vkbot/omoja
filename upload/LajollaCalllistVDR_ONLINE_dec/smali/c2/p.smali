.class public final Lc2/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc2/q;


# direct methods
.method public synthetic constructor <init>(Lc2/q;I)V
    .locals 0

    iput p2, p0, Lc2/p;->a:I

    iput-object p1, p0, Lc2/p;->b:Lc2/q;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lc2/p;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc2/p;->b:Lc2/q;

    invoke-virtual {p1}, Lc2/q;->c()V

    iget-object p1, p1, Lc2/q;->k:Lx0/a;

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
    .locals 3

    iget v0, p0, Lc2/p;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc2/p;->b:Lc2/q;

    iget v0, p1, Lc2/q;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p1, Lc2/q;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v2, v2, Lc2/d;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p1, Lc2/q;->h:I

    iput-boolean v1, p1, Lc2/q;->i:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
