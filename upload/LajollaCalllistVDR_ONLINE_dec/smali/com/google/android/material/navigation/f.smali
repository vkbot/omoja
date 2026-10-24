.class public final Lcom/google/android/material/navigation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/c0;


# instance fields
.field public b:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/navigation/f;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/f;->d:I

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
    .locals 6

    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->b:I

    iget-object v1, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v2}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo1/a;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->c:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iput-object p2, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    return-void
.end method

.method public final i(Landroid/os/Parcelable;)V
    .locals 13

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->b:I

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    iget-object v6, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v6, v4}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-ne v1, v7, :cond_0

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    iput v4, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:I

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->c:Lcom/google/android/material/internal/ParcelableSparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    if-eqz v6, :cond_5

    new-instance v7, Lo1/a;

    invoke-direct {v7, v0}, Lo1/a;-><init>(Landroid/content/Context;)V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->f:I

    invoke-virtual {v7, v8}, Lo1/a;->h(I)V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->e:I

    const/4 v9, -0x1

    iget-object v10, v7, Lo1/a;->d:Lcom/google/android/material/internal/u;

    iget-object v11, v7, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    if-eq v8, v9, :cond_2

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->e:I

    if-eq v9, v8, :cond_2

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->e:I

    iput-boolean v5, v10, Lcom/google/android/material/internal/u;->d:Z

    invoke-virtual {v7}, Lo1/a;->j()V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->b:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->b:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iget-object v9, v7, Lo1/a;->c:Lg2/h;

    iget-object v12, v9, Lg2/h;->b:Lg2/g;

    iget-object v12, v12, Lg2/g;->c:Landroid/content/res/ColorStateList;

    if-eq v12, v8, :cond_3

    invoke-virtual {v9, v8}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->c:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->c:I

    iget-object v9, v10, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    if-eq v9, v8, :cond_4

    iget-object v9, v10, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->j:I

    invoke-virtual {v7, v8}, Lo1/a;->g(I)V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->l:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->l:I

    invoke-virtual {v7}, Lo1/a;->j()V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->m:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->m:I

    invoke-virtual {v7}, Lo1/a;->j()V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->n:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->n:I

    invoke-virtual {v7}, Lo1/a;->j()V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->o:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->o:I

    invoke-virtual {v7}, Lo1/a;->j()V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->p:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->p:I

    invoke-virtual {v7}, Lo1/a;->j()V

    iget v8, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->q:I

    iput v8, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->q:I

    invoke-virtual {v7}, Lo1/a;->j()V

    iget-boolean v6, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->k:Z

    invoke-virtual {v7, v6, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-boolean v6, v11, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->k:Z

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_7
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
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/material/navigation/f;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->a()V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/f;->b:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object v0, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:[Lcom/google/android/material/navigation/NavigationBarItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->a()V

    goto :goto_2

    :cond_3
    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    iput v3, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v3, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    if-eq v1, v3, :cond_6

    iget-object v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->b:Lw0/a;

    invoke-static {p1, v1}, Lw0/s;->a(Landroid/view/ViewGroup;Lw0/p;)V

    :cond_6
    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:I

    iget-object v3, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/p;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->f(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_7

    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Lcom/google/android/material/navigation/f;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/material/navigation/f;->c:Z

    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    iget v5, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v4, v4, v3

    iget-object v5, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/r;

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->b(Landroidx/appcompat/view/menu/r;)V

    iget-object v4, p1, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Lcom/google/android/material/navigation/f;

    iput-boolean v2, v4, Lcom/google/android/material/navigation/f;->c:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method
