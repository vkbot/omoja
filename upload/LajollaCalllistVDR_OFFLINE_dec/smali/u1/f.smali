.class public final Lu1/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu1/g;


# direct methods
.method public synthetic constructor <init>(Lu1/g;I)V
    .locals 0

    iput p2, p0, Lu1/f;->a:I

    iput-object p1, p0, Lu1/f;->b:Lu1/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lu1/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lu1/f;->b:Lu1/g;

    invoke-virtual {p0}, Lu1/g;->c()V

    iget-object p0, p0, Lu1/g;->k:Lx0/a;

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
    .locals 1

    iget v0, p0, Lu1/f;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p0, p0, Lu1/f;->b:Lu1/g;

    iget p1, p0, Lu1/g;->h:I

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lu1/g;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v0, v0, Lu1/d;->c:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lu1/g;->h:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
