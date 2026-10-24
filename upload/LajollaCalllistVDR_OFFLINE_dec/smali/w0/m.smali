.class public final Lw0/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw0/m;->a:I

    iput-object p2, p0, Lw0/m;->c:Ljava/lang/Object;

    iput-object p3, p0, Lw0/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Lw0/m;->a:I

    iget-object v1, p0, Lw0/m;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lk/b;

    invoke-virtual {v1, p1}, Lk/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast p0, Lw0/p;

    iget-object p0, p0, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_0
    check-cast v1, Lm1/g;

    invoke-interface {v1}, Lm1/g;->getRevealInfo()Lm1/f;

    move-result-object p0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lm1/f;->c:F

    invoke-interface {v1, p0}, Lm1/g;->setRevealInfo(Lm1/f;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lw0/m;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lw0/m;->c:Ljava/lang/Object;

    check-cast p0, Lw0/p;

    iget-object p0, p0, Lw0/p;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
