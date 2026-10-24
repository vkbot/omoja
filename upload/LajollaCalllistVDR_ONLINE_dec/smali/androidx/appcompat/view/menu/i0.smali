.class public Landroidx/appcompat/view/menu/i0;
.super Landroidx/appcompat/view/menu/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final A:Landroidx/appcompat/view/menu/r;

.field public final z:Landroidx/appcompat/view/menu/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    iput-object p3, p0, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    return-void
.end method


# virtual methods
.method public final d(Landroidx/appcompat/view/menu/r;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->d(Landroidx/appcompat/view/menu/r;)Z

    move-result p1

    return p1
.end method

.method public final e(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/p;->e(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/p;->e(Landroidx/appcompat/view/menu/p;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final f(Landroidx/appcompat/view/menu/r;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->f(Landroidx/appcompat/view/menu/r;)Z

    move-result p1

    return p1
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/appcompat/view/menu/r;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "android:menu:actionviewstates:"

    invoke-static {v1, v0}, Landroidx/activity/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroidx/appcompat/view/menu/p;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->k()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->m()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->n()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->o()Z

    move-result v0

    return v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/p;->w(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/p;->w(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/p;->w(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/p;->w(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/p;->w(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/r;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/r;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->setQwertyMode(Z)V

    return-void
.end method
