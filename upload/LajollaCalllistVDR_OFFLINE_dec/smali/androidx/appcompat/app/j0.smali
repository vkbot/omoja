.class public final Landroidx/appcompat/app/j0;
.super Lf/c;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroidx/appcompat/view/menu/p;

.field public e:Lf/b;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Landroidx/appcompat/app/k0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/k0;Landroid/content/Context;Landroidx/appcompat/app/s;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    invoke-direct {p0}, Lf/c;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/app/j0;->c:Landroid/content/Context;

    iput-object p3, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    new-instance p1, Landroidx/appcompat/view/menu/p;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Landroidx/appcompat/view/menu/p;->l:I

    iput-object p1, p0, Landroidx/appcompat/app/j0;->d:Landroidx/appcompat/view/menu/p;

    iput-object p0, p1, Landroidx/appcompat/view/menu/p;->e:Landroidx/appcompat/view/menu/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object v1, v0, Landroidx/appcompat/app/k0;->i:Landroidx/appcompat/app/j0;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroidx/appcompat/app/k0;->p:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iput-object p0, v0, Landroidx/appcompat/app/k0;->j:Landroidx/appcompat/app/j0;

    iget-object v1, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    iput-object v1, v0, Landroidx/appcompat/app/k0;->k:Lf/b;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    invoke-interface {v1, p0}, Lf/b;->c(Lf/c;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/k0;->a(Z)V

    iget-object p0, v0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    :cond_2
    iget-object p0, v0, Landroidx/appcompat/app/k0;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Landroidx/appcompat/app/k0;->u:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Landroidx/appcompat/app/k0;->i:Landroidx/appcompat/app/j0;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()Landroidx/appcompat/view/menu/p;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->d:Landroidx/appcompat/view/menu/p;

    return-object p0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Lf/k;

    iget-object p0, p0, Landroidx/appcompat/app/j0;->c:Landroid/content/Context;

    invoke-direct {v0, p0}, Lf/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object v0, v0, Landroidx/appcompat/app/k0;->i:Landroidx/appcompat/app/j0;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/j0;->d:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->z()V

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    invoke-interface {v1, p0, v0}, Lf/b;->a(Lf/c;Landroidx/appcompat/view/menu/p;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->y()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->y()V

    throw p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return p0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object v0, v0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/j0;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lf/b;->b(Lf/c;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object v0, v0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/j0;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object v0, v0, Landroidx/appcompat/app/k0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/j0;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lf/c;->b:Z

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final p(Landroidx/appcompat/view/menu/p;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/j0;->e:Lf/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/j0;->g()V

    iget-object p0, p0, Landroidx/appcompat/app/j0;->g:Landroidx/appcompat/app/k0;

    iget-object p0, p0, Landroidx/appcompat/app/k0;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/b;->d:Landroidx/appcompat/widget/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->p()Z

    :cond_1
    return-void
.end method
