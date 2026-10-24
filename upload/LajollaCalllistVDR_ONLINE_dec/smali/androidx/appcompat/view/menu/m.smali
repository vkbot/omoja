.class public final Landroidx/appcompat/view/menu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/LayoutInflater;

.field public d:Landroidx/appcompat/view/menu/p;

.field public e:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public final f:I

.field public g:Landroidx/appcompat/view/menu/b0;

.field public h:Landroidx/appcompat/view/menu/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/appcompat/view/menu/m;->f:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->b(Landroidx/appcompat/view/menu/p;Z)V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Landroid/os/Parcelable;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/m;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->b:Landroid/content/Context;

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->c:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/p;

    iget-object p1, p0, Landroidx/appcompat/view/menu/m;->h:Landroidx/appcompat/view/menu/l;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final i(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public final k(Landroidx/appcompat/view/menu/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/b0;

    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final m(Landroidx/appcompat/view/menu/i0;)Z
    .locals 7

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/q;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/q;-><init>(Landroidx/appcompat/view/menu/p;)V

    new-instance v1, Landroidx/appcompat/app/j;

    iget-object v2, p1, Landroidx/appcompat/view/menu/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/j;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroidx/appcompat/view/menu/m;

    iget-object v4, v1, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/app/f;

    iget-object v5, v4, Landroidx/appcompat/app/f;->a:Landroid/content/Context;

    sget v6, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v3, v5, v6}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/m;

    iput-object v0, v3, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/b0;

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/view/menu/p;->b(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    iget-object v2, v0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/m;

    iget-object v3, v2, Landroidx/appcompat/view/menu/m;->h:Landroidx/appcompat/view/menu/l;

    if-nez v3, :cond_1

    new-instance v3, Landroidx/appcompat/view/menu/l;

    invoke-direct {v3, v2}, Landroidx/appcompat/view/menu/l;-><init>(Landroidx/appcompat/view/menu/m;)V

    iput-object v3, v2, Landroidx/appcompat/view/menu/m;->h:Landroidx/appcompat/view/menu/l;

    :cond_1
    iget-object v2, v2, Landroidx/appcompat/view/menu/m;->h:Landroidx/appcompat/view/menu/l;

    iput-object v2, v4, Landroidx/appcompat/app/f;->g:Landroid/widget/ListAdapter;

    iput-object v0, v4, Landroidx/appcompat/app/f;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Landroidx/appcompat/view/menu/p;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v4, Landroidx/appcompat/app/f;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroidx/appcompat/view/menu/p;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v4, Landroidx/appcompat/app/f;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/CharSequence;

    iput-object v2, v4, Landroidx/appcompat/app/f;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v4, Landroidx/appcompat/app/f;->f:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1}, Landroidx/appcompat/app/j;->a()Landroidx/appcompat/app/k;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/q;->c:Landroidx/appcompat/app/k;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Landroidx/appcompat/view/menu/q;->c:Landroidx/appcompat/app/k;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->c:Landroidx/appcompat/app/k;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/m;->g:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final n(Z)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/m;->h:Landroidx/appcompat/view/menu/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/l;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/m;->d:Landroidx/appcompat/view/menu/p;

    iget-object p2, p0, Landroidx/appcompat/view/menu/m;->h:Landroidx/appcompat/view/menu/l;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/l;->b(I)Landroidx/appcompat/view/menu/r;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/p;->q(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    return-void
.end method
