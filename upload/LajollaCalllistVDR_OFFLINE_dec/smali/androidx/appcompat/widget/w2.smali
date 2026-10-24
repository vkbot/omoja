.class public final Landroidx/appcompat/widget/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;


# instance fields
.field public a:Landroidx/appcompat/view/menu/p;

.field public b:Landroidx/appcompat/view/menu/r;

.field public final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/w2;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 0

    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/r;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/w2;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    instance-of v2, v1, Lf/d;

    if-eqz v2, :cond_0

    check-cast v1, Lf/d;

    invoke-interface {v1}, Lf/d;->e()V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/appcompat/view/menu/r;->C:Z

    iget-object p1, p1, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/widget/w2;->a:Landroidx/appcompat/view/menu/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->d(Landroidx/appcompat/view/menu/r;)Z

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/w2;->a:Landroidx/appcompat/view/menu/p;

    return-void
.end method

.method public final i(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/r;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/w2;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->c()V

    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance p0, Landroidx/appcompat/widget/x2;

    invoke-direct {p0}, Landroidx/appcompat/widget/x2;-><init>()V

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    const v3, 0x800003

    or-int/2addr v2, v3

    iput v2, p0, Landroidx/appcompat/app/a;->a:I

    iput v1, p0, Landroidx/appcompat/widget/x2;->b:I

    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    :cond_4
    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/x2;

    iget v3, v3, Landroidx/appcompat/widget/x2;->b:I

    if-eq v3, v1, :cond_4

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v2, v3, :cond_4

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/appcompat/view/menu/r;->C:Z

    iget-object p1, p1, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/p;->p(Z)V

    iget-object p1, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    instance-of v0, p1, Lf/d;

    if-eqz v0, :cond_6

    check-cast p1, Lf/d;

    invoke-interface {p1}, Lf/d;->d()V

    :cond_6
    return p0
.end method

.method public final m(Landroidx/appcompat/view/menu/i0;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n(Z)V
    .locals 4

    iget-object p1, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/w2;->a:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroidx/appcompat/widget/w2;->a:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/w2;->b:Landroidx/appcompat/view/menu/r;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/w2;->d(Landroidx/appcompat/view/menu/r;)Z

    :cond_2
    return-void
.end method
