.class public final Ll0/e;
.super Ly1/l;
.source "SourceFile"


# instance fields
.field public final u:I

.field public v:Lk0/e;

.field public final w:Landroidx/activity/b;

.field public final synthetic x:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .locals 1

    iput-object p1, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Ly1/l;-><init>()V

    new-instance p1, Landroidx/activity/b;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Landroidx/activity/b;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ll0/e;->w:Landroidx/activity/b;

    iput p2, p0, Ll0/e;->u:I

    return-void
.end method


# virtual methods
.method public final C0(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E(Landroid/view/View;I)I
    .locals 1

    iget-object p0, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    neg-int p0, p0

    const/4 p1, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final F(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public final F1(Landroid/view/View;I)Z
    .locals 1

    iget-object p2, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Ll0/e;->u:I

    invoke-virtual {p2, p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final U0(II)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    iget-object v1, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Ll0/e;->v:Lk0/e;

    invoke-virtual {p0, p1, p2}, Lk0/e;->b(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public final V0()V
    .locals 3

    const-wide/16 v0, 0xa0

    iget-object v2, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p0, p0, Ll0/e;->w:Landroidx/activity/b;

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final d1(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ll0/d;

    const/4 p2, 0x0

    iput-boolean p2, p1, Ll0/d;->c:Z

    iget p1, p0, Ll0/e;->u:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p2, 0x5

    :cond_0
    iget-object p0, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final e1(I)V
    .locals 7

    iget-object v0, p0, Ll0/e;->v:Lk0/e;

    iget-object v0, v0, Lk0/e;->t:Landroid/view/View;

    iget-object p0, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Lk0/e;

    iget v1, v1, Lk0/e;->a:I

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:Lk0/e;

    iget v2, v2, Lk0/e;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :cond_3
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ll0/d;

    iget p1, p1, Ll0/d;->b:F

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    const/16 v6, 0x20

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ll0/d;

    iget v2, p1, Ll0/d;->d:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    iput v3, p1, Ll0/d;->d:I

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    throw v1

    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->p(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Ll0/d;

    iget v2, p1, Ll0/d;->d:I

    and-int/2addr v2, v4

    if-nez v2, :cond_9

    iput v4, p1, Ll0/d;->d:I

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-gez p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    throw v1

    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->p(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->o(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_9
    :goto_4
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:I

    if-eq v5, p1, :cond_b

    iput v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:I

    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-gez p1, :cond_a

    goto :goto_5

    :cond_a
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, La/a;->i(Ljava/lang/Object;)V

    throw v1

    :cond_b
    :goto_5
    return-void
.end method

.method public final f1(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p0, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float p2, v0

    :goto_0
    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->n(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g1(Landroid/view/View;FF)V
    .locals 6

    iget-object p3, p0, Ll0/e;->x:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ll0/d;

    iget v0, v0, Ll0/d;->b:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p3, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_1

    if-nez p2, :cond_0

    cmpl-float p2, v0, v3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    cmpg-float v5, p2, v4

    if-ltz v5, :cond_3

    cmpl-float p2, p2, v4

    if-nez p2, :cond_4

    cmpl-float p2, v0, v3

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v2, v1

    :cond_4
    move p2, v2

    :goto_1
    iget-object p0, p0, Ll0/e;->v:Lk0/e;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lk0/e;->q(II)Z

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    return-void
.end method
