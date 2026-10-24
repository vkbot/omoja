.class public final Lq1/g;
.super Lq1/a;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    iput-object p1, p0, Lq1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-direct {p0, p1, p2}, Lq1/a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/appcompat/view/menu/i;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 0

    sget p0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_show_motion_spec:I

    return p0
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lq1/a;->d:Landroidx/appcompat/view/menu/i;

    iput-object v0, v1, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    iget-object p0, p0, Lq1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    return-void
.end method

.method public final f(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lq1/a;->d:Landroidx/appcompat/view/menu/i;

    iget-object v1, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, v0, Landroidx/appcompat/view/menu/i;->b:Ljava/lang/Object;

    iget-object p0, p0, Lq1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lq1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public final i()Z
    .locals 3

    sget v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->G:I

    iget-object p0, p0, Lq1/g;->g:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:I

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
