.class public final Landroidx/appcompat/view/menu/t;
.super Landroidx/appcompat/view/menu/s;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public d:Landroidx/appcompat/view/menu/i;


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public final d(Landroidx/appcompat/view/menu/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/t;->d:Landroidx/appcompat/view/menu/i;

    iget-object p1, p0, Landroidx/appcompat/view/menu/s;->b:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/t;->d:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/view/menu/i;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/r;

    iget-object p1, p1, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/p;->h:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    :cond_0
    return-void
.end method
