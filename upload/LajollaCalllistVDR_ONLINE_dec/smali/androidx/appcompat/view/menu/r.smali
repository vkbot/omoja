.class public final Landroidx/appcompat/view/menu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/b;


# instance fields
.field public A:Lg0/d;

.field public B:Landroid/view/MenuItem$OnActionExpandListener;

.field public C:Z

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:C

.field public i:I

.field public j:C

.field public k:I

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:I

.field public final n:Landroidx/appcompat/view/menu/p;

.field public o:Landroidx/appcompat/view/menu/i0;

.field public p:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/lang/CharSequence;

.field public s:Landroid/content/res/ColorStateList;

.field public t:Landroid/graphics/PorterDuff$Mode;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/p;IIIILjava/lang/CharSequence;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Landroidx/appcompat/view/menu/r;->i:I

    iput v0, p0, Landroidx/appcompat/view/menu/r;->k:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/r;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->u:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->v:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->w:Z

    const/16 v1, 0x10

    iput v1, p0, Landroidx/appcompat/view/menu/r;->x:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->C:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    iput p3, p0, Landroidx/appcompat/view/menu/r;->a:I

    iput p2, p0, Landroidx/appcompat/view/menu/r;->b:I

    iput p4, p0, Landroidx/appcompat/view/menu/r;->c:I

    iput p5, p0, Landroidx/appcompat/view/menu/r;->d:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    iput p7, p0, Landroidx/appcompat/view/menu/r;->y:I

    return-void
.end method

.method public static c(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lg0/d;)La0/b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lg0/d;->a:Lg0/c;

    :cond_0
    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    if-eqz p1, :cond_1

    new-instance v1, Landroidx/appcompat/view/menu/i;

    invoke-direct {v1, v0, p0}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lg0/d;->d(Landroidx/appcompat/view/menu/i;)V

    :cond_1
    return-object p0
.end method

.method public final b()Lg0/d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    return-object v0
.end method

.method public final collapseActionView()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/r;->y:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/p;->d(Landroidx/appcompat/view/menu/r;)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->w:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->v:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->t:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/r;->w:Z

    :cond_3
    return-object p1
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/r;->y:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lg0/d;->b(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final expandActionView()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->B:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/p;->f(Landroidx/appcompat/view/menu/r;)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    return-void
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lg0/d;->b(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->k:I

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/r;->j:C

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/r;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/r;->m:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    iget-object v1, v1, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/material/slider/h;->h0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/r;->m:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/r;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->t:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->i:I

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    iget-char v0, p0, Landroidx/appcompat/view/menu/r;->h:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->c:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/i0;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    :goto_0
    return-void
.end method

.method public final hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/i0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/r;->C:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isChecked()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVisible()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg0/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    invoke-virtual {v0}, Lg0/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 4

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    iget-object v1, v0, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 9
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/appcompat/view/menu/r;->a:I

    if-lez v1, :cond_0

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    :cond_0
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, v0, Landroidx/appcompat/view/menu/p;->k:Z

    .line 15
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->z:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/r;->a:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/view/menu/p;->k:Z

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/r;->j:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->j:C

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-char v0, p0, Landroidx/appcompat/view/menu/r;->j:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/r;->k:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->j:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->k:I

    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    :cond_0
    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 9

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Landroidx/appcompat/view/menu/p;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/p;->y()V

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/r;

    iget v6, v5, Landroidx/appcompat/view/menu/r;->b:I

    iget v7, p0, Landroidx/appcompat/view/menu/r;->b:I

    if-ne v6, v7, :cond_5

    iget v6, v5, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/r;->isCheckable()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_4

    :cond_2
    if-ne v5, p0, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    iget v6, v5, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v8, v6, -0x3

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    or-int/2addr v7, v8

    iput v7, v5, Landroidx/appcompat/view/menu/r;->x:I

    if-eq v6, v7, :cond_5

    iget-object v5, v5, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/p;->p(Z)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/p;->x()V

    goto :goto_6

    :cond_7
    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    or-int p1, v3, v1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    if-eq v0, p1, :cond_9

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/p;->p(Z)V

    :cond_9
    :goto_6
    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)La0/b;
    .locals 1

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final bridge synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r;->setContentDescription(Ljava/lang/CharSequence;)La0/b;

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p1, p0, Landroidx/appcompat/view/menu/r;->m:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->w:Z

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/appcompat/view/menu/r;->m:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->w:Z

    .line 4
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->s:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->u:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->w:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->t:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->v:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/r;->w:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Landroidx/appcompat/view/menu/r;->h:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->h:C

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-char v0, p0, Landroidx/appcompat/view/menu/r;->h:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/r;->i:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->h:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->i:I

    .line 7
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->B:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->h:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->j:C

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 4
    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->h:C

    .line 5
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->i:I

    .line 6
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/r;->j:C

    .line 7
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->k:I

    .line 8
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/appcompat/view/menu/r;->y:I

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    iput-boolean v1, p1, Landroidx/appcompat/view/menu/p;->k:Z

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r;->setShowAsAction(I)V

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    iget-object v0, v0, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/p;->p(Z)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->o:Landroidx/appcompat/view/menu/i0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)La0/b;
    .locals 1

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/r;->r:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->p(Z)V

    return-object p0
.end method

.method public final bridge synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/r;->setTooltipText(Ljava/lang/CharSequence;)La0/b;

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/r;->x:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/r;->x:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    iget-object p1, p0, Landroidx/appcompat/view/menu/r;->n:Landroidx/appcompat/view/menu/p;

    iput-boolean v1, p1, Landroidx/appcompat/view/menu/p;->h:Z

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/p;->p(Z)V

    :cond_2
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
