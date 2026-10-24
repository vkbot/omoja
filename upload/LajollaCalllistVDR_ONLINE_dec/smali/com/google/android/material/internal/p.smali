.class public final Lcom/google/android/material/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;


# instance fields
.field public final A:Landroidx/appcompat/widget/y1;

.field public b:Lcom/google/android/material/internal/NavigationMenuView;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroidx/appcompat/view/menu/p;

.field public e:I

.field public f:Lcom/google/android/material/internal/h;

.field public g:Landroid/view/LayoutInflater;

.field public h:I

.field public i:Landroid/content/res/ColorStateList;

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/p;->h:I

    iput v0, p0, Lcom/google/android/material/internal/p;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/p;->v:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/internal/p;->z:I

    new-instance v0, Landroidx/appcompat/widget/y1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/y1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/p;->A:Landroidx/appcompat/widget/y1;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/p;->e:I

    return v0
.end method

.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 0

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
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/google/android/material/internal/h;->d:Landroidx/appcompat/view/menu/r;

    if-eqz v3, :cond_1

    iget v3, v3, Landroidx/appcompat/view/menu/r;->a:I

    const-string v4, "android:menu:checked"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v1, Lcom/google/android/material/internal/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/j;

    instance-of v7, v6, Lcom/google/android/material/internal/l;

    if-eqz v7, :cond_3

    check-cast v6, Lcom/google/android/material/internal/l;

    iget-object v6, v6, Lcom/google/android/material/internal/l;->a:Landroidx/appcompat/view/menu/r;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/r;->getActionView()Landroid/view/View;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    new-instance v8, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v8}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget v6, v6, Landroidx/appcompat/view/menu/r;->a:I

    invoke-virtual {v3, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "android:menu:action_views"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v1, "android:menu:adapter"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_6
    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/p;->g:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/google/android/material/internal/p;->d:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/p;->y:I

    return-void
.end method

.method public final i(Landroid/os/Parcelable;)V
    .locals 9

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/p;->b:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "android:menu:checked"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, v1, Lcom/google/android/material/internal/h;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/material/internal/h;->e:Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/internal/j;

    instance-of v8, v7, Lcom/google/android/material/internal/l;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/google/android/material/internal/l;

    iget-object v7, v7, Lcom/google/android/material/internal/l;->a:Landroidx/appcompat/view/menu/r;

    if-eqz v7, :cond_1

    iget v8, v7, Landroidx/appcompat/view/menu/r;->a:I

    if-ne v8, v2, :cond_1

    invoke-virtual {v1, v7}, Lcom/google/android/material/internal/h;->h(Landroidx/appcompat/view/menu/r;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v3, v1, Lcom/google/android/material/internal/h;->e:Z

    invoke-virtual {v1}, Lcom/google/android/material/internal/h;->g()V

    :cond_3
    const-string v1, "android:menu:action_views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/j;

    instance-of v5, v2, Lcom/google/android/material/internal/l;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    check-cast v2, Lcom/google/android/material/internal/l;

    iget-object v2, v2, Lcom/google/android/material/internal/l;->a:Landroidx/appcompat/view/menu/r;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/r;->getActionView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    iget v2, v2, Landroidx/appcompat/view/menu/r;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v5, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_9
    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final m(Landroidx/appcompat/view/menu/i0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final n(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/internal/h;->g()V

    iget-object p1, p1, Landroidx/recyclerview/widget/j0;->a:Landroidx/recyclerview/widget/k0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->b()V

    :cond_0
    return-void
.end method
