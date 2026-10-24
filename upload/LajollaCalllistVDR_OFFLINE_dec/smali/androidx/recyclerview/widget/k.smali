.class public final Landroidx/recyclerview/widget/k;
.super Landroidx/recyclerview/widget/p0;
.source "SourceFile"


# static fields
.field public static s:Landroid/animation/TimeInterpolator;


# instance fields
.field public final g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/ArrayList;

.field public final q:Ljava/util/ArrayList;

.field public final r:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/p0;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/k;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->r:Ljava/util/ArrayList;

    return-void
.end method

.method public static h(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/i1;

    iget-object v1, v1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/i1;Landroidx/recyclerview/widget/i1;Landroidx/recyclerview/widget/o0;Landroidx/recyclerview/widget/o0;)Z
    .locals 8

    iget v3, p3, Landroidx/recyclerview/widget/o0;->a:I

    iget v4, p3, Landroidx/recyclerview/widget/o0;->b:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/i1;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Landroidx/recyclerview/widget/o0;->a:I

    iget p3, p3, Landroidx/recyclerview/widget/o0;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/o0;->a:I

    iget p4, p4, Landroidx/recyclerview/widget/o0;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    if-ne p1, p2, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/k;->g(Landroidx/recyclerview/widget/i1;IIII)Z

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p3, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->l(Landroidx/recyclerview/widget/i1;)V

    sub-int v2, v5, v3

    int-to-float v2, v2

    sub-float/2addr v2, p4

    float-to-int v2, v2

    sub-int v7, v6, v4

    int-to-float v7, v7

    sub-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/k;->l(Landroidx/recyclerview/widget/i1;)V

    neg-int p3, v2

    int-to-float p3, p3

    iget-object p4, p2, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->setTranslationX(F)V

    neg-int p3, v7

    int-to-float p3, p3

    invoke-virtual {p4, p3}, Landroid/view/View;->setTranslationY(F)V

    const/4 p3, 0x0

    invoke-virtual {p4, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    new-instance p3, Landroidx/recyclerview/widget/i;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/i1;Landroidx/recyclerview/widget/i1;IIII)V

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final d(Landroidx/recyclerview/widget/i1;)V
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/j;

    iget-object v4, v4, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/i1;

    if-ne v4, p1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/k;->j(Landroidx/recyclerview/widget/i1;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/k;->j(Landroidx/recyclerview/widget/i1;Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/j;

    iget-object v7, v7, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/i1;

    if-ne v7, p1, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    goto :goto_3

    :cond_7
    :goto_4
    goto :goto_2

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    goto :goto_5

    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->i()V

    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/j;

    iget-object v4, v3, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/i1;

    iget-object v4, v4, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, v3, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/i1;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/i1;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/i1;

    iget-object v5, v4, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/i;

    iget-object v5, v4, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/i1;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/k;->k(Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/i1;)Z

    :cond_3
    iget-object v5, v4, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/i1;

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/k;->k(Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/i1;)Z

    :cond_4
    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->f()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_5
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/j;

    iget-object v7, v6, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/i1;

    iget-object v7, v7, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, v6, Landroidx/recyclerview/widget/j;->a:Landroidx/recyclerview/widget/i1;

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    goto :goto_5

    :cond_8
    goto :goto_4

    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_7
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/i1;

    iget-object v6, v5, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    goto :goto_7

    :cond_b
    goto :goto_6

    :cond_c
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_9
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/i;

    iget-object v5, v4, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/i1;

    if-eqz v5, :cond_d

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/k;->k(Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/i1;)Z

    :cond_d
    iget-object v5, v4, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/i1;

    if-eqz v5, :cond_e

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/k;->k(Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/i1;)Z

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    goto :goto_9

    :cond_10
    goto :goto_8

    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/k;->q:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/recyclerview/widget/k;->h(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/recyclerview/widget/k;->h(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/recyclerview/widget/k;->h(Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->r:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/recyclerview/widget/k;->h(Ljava/util/ArrayList;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/p0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_12

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/k;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final g(Landroidx/recyclerview/widget/i1;IIII)Z
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    iget-object p2, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->l(Landroidx/recyclerview/widget/i1;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p3, :cond_2

    neg-int p2, p3

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/k;->j:Ljava/util/ArrayList;

    new-instance p2, Landroidx/recyclerview/widget/j;

    move-object v2, p2

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/j;-><init>(Landroidx/recyclerview/widget/i1;IIII)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final i()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/p0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/i1;Ljava/util/ArrayList;)V
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/i;

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/k;->k(Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/i1;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/i1;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/i1;

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/i;Landroidx/recyclerview/widget/i1;)Z
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/i1;

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    iput-object v1, p1, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/i1;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/i1;

    if-ne v0, p2, :cond_1

    iput-object v1, p1, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/i1;

    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/p0;->c(Landroidx/recyclerview/widget/i1;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final l(Landroidx/recyclerview/widget/i1;)V
    .locals 2

    sget-object v0, Landroidx/recyclerview/widget/k;->s:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/k;->s:Landroid/animation/TimeInterpolator;

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/i1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/k;->s:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/k;->d(Landroidx/recyclerview/widget/i1;)V

    return-void
.end method
