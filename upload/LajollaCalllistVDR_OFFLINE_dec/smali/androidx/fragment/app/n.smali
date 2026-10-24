.class public final Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/x;
.implements Ld0/b;
.implements Landroidx/recyclerview/widget/t1;
.implements Landroidx/appcompat/view/menu/n;
.implements Lcom/google/android/material/internal/b0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/n;->a:I

    iput-object p2, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/n;->a:I

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Landroidx/fragment/app/t;

    iget-object v0, p0, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/r;->a:Landroid/view/View;

    :goto_0
    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/r;->a:Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->e()Landroidx/fragment/app/r;

    move-result-object v2

    iput-object v1, v2, Landroidx/fragment/app/r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/t;->e()Landroidx/fragment/app/r;

    move-result-object p0

    iput-object v1, p0, Landroidx/fragment/app/r;->b:Landroid/animation/Animator;

    return-void

    :goto_2
    check-cast p0, Landroidx/fragment/app/g1;

    invoke-virtual {p0}, Landroidx/fragment/app/g1;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/n;->a:I

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    check-cast p0, Landroidx/recyclerview/widget/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->I(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, p0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    check-cast p0, Landroidx/recyclerview/widget/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->u(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/n;->a:I

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    check-cast p0, Landroidx/recyclerview/widget/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->B(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    check-cast p0, Landroidx/recyclerview/widget/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->K(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()I
    .locals 1

    iget v0, p0, Landroidx/fragment/app/n;->a:I

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/s0;

    iget v0, p0, Landroidx/recyclerview/widget/s0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->E()I

    move-result p0

    :goto_0
    sub-int/2addr v0, p0

    return v0

    :goto_1
    check-cast p0, Landroidx/recyclerview/widget/s0;

    iget v0, p0, Landroidx/recyclerview/widget/s0;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s0;->C()I

    move-result p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/w;

    iget-object p0, p0, Landroidx/fragment/app/w;->x:Landroidx/fragment/app/l0;

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->O()V

    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 0

    iget p1, p0, Landroidx/fragment/app/n;->a:I

    const/4 p2, 0x0

    iget-object p0, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/navigation/NavigationBarView;

    sget p1, Lcom/google/android/material/navigation/NavigationBarView;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return p2

    :goto_0
    check-cast p0, Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroidx/lifecycle/n;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/n;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/p;

    iget-boolean v0, p1, Landroidx/fragment/app/p;->Z:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/t;->B()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/fragment/app/p;->d0:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/k0;->I(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DialogFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " setting the content view on "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroidx/fragment/app/p;->d0:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FragmentManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p1, Landroidx/fragment/app/p;->d0:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DialogFragment can not be attached to a container view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public p(Landroidx/appcompat/view/menu/p;)V
    .locals 0

    return-void
.end method

.method public q(Landroid/view/View;Lh0/f1;Landroidx/recyclerview/widget/o0;)Lh0/f1;
    .locals 3

    iget p0, p3, Landroidx/recyclerview/widget/o0;->b:I

    invoke-virtual {p2}, Lh0/f1;->d()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, p3, Landroidx/recyclerview/widget/o0;->b:I

    iget p0, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-virtual {p2}, Lh0/f1;->a()I

    move-result v0

    add-int/2addr v0, p0

    iput v0, p3, Landroidx/recyclerview/widget/o0;->d:I

    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->d(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lh0/f1;->b()I

    move-result p0

    invoke-virtual {p2}, Lh0/f1;->c()I

    move-result v1

    iget v2, p3, Landroidx/recyclerview/widget/o0;->a:I

    if-eqz v0, :cond_1

    move p0, v1

    :cond_1
    add-int/2addr v2, p0

    iput v2, p3, Landroidx/recyclerview/widget/o0;->a:I

    iget p0, p3, Landroidx/recyclerview/widget/o0;->b:I

    iget v0, p3, Landroidx/recyclerview/widget/o0;->c:I

    iget p3, p3, Landroidx/recyclerview/widget/o0;->d:I

    invoke-static {p1, v2, p0, v0, p3}, Lh0/a0;->k(Landroid/view/View;IIII)V

    return-object p2
.end method
