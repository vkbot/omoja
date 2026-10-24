.class public final Lu1/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu1/q;


# direct methods
.method public synthetic constructor <init>(Lu1/q;I)V
    .locals 0

    iput p2, p0, Lu1/p;->a:I

    iput-object p1, p0, Lu1/p;->b:Lu1/q;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lu1/p;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lu1/p;->b:Lu1/q;

    invoke-virtual {p0}, Lu1/q;->c()V

    iget-object p0, p0, Lu1/q;->k:Lx0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lx0/a;->a()V

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

    iget v0, p0, Lu1/p;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p0, p0, Lu1/p;->b:Lu1/q;

    iget p1, p0, Lu1/q;->h:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lu1/q;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v1, v1, Lu1/d;->c:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, p0, Lu1/q;->h:I

    iput-boolean v0, p0, Lu1/q;->i:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
