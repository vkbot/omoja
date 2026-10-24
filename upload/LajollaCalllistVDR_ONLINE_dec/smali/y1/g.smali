.class public final Ly1/g;
.super Ly1/a;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    iput-object p1, p0, Ly1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-direct {p0, p1, p2}, Ly1/a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_show_motion_spec:I

    return v0
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ly1/a;->d:Landroidx/appcompat/view/menu/i;

    iput-object v0, v1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    iget-object v0, p0, Ly1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    return-void
.end method

.method public final f(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Ly1/a;->d:Landroidx/appcompat/view/menu/i;

    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, v0, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    iget-object p1, p0, Ly1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    iput v0, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ly1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public final i()Z
    .locals 4

    sget v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->H:I

    iget-object v0, p0, Ly1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:I

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method
