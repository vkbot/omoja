.class public final Lcom/google/android/material/bottomappbar/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/bottomappbar/a;->a:I

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/a;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/bottomappbar/a;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    sget p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iput-boolean p0, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0:Z

    iput-object v1, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    return-void

    :pswitch_1
    sget p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->R:Landroid/animation/Animator;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/bottomappbar/a;->a:I

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/a;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1
    sget p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_2
    iget-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->d0:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->T:I

    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->e0:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->B(IZ)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j0:Lcom/google/android/material/bottomappbar/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->x()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s(Lcom/google/android/material/bottomappbar/BottomAppBar;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
