.class public final Landroidx/appcompat/widget/o;
.super Landroidx/appcompat/view/menu/d;
.source "SourceFile"

# interfaces
.implements Lg0/c;


# instance fields
.field public k:Landroidx/appcompat/widget/m;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public final t:Landroid/util/SparseBooleanArray;

.field public u:Landroidx/appcompat/widget/i;

.field public v:Landroidx/appcompat/widget/i;

.field public w:Landroidx/appcompat/widget/k;

.field public x:Landroidx/appcompat/widget/j;

.field public final y:Landroidx/appcompat/view/menu/i;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/d;-><init>(Landroid/content/Context;II)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/o;->t:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/appcompat/view/menu/i;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Landroidx/appcompat/view/menu/i;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/appcompat/widget/o;->y:Landroidx/appcompat/view/menu/i;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/p;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->e()Z

    iget-object v0, p0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/b0;->b(Landroidx/appcompat/view/menu/p;Z)V

    :cond_1
    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    instance-of v0, p2, Landroidx/appcompat/view/menu/d0;

    if-eqz v0, :cond_1

    check-cast p2, Landroidx/appcompat/view/menu/d0;

    goto :goto_0

    :cond_1
    iget p2, p0, Landroidx/appcompat/view/menu/d;->h:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->e:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/d0;

    :goto_0
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/d0;->b(Landroidx/appcompat/view/menu/r;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/o;)V

    iget-object v0, p0, Landroidx/appcompat/widget/o;->x:Landroidx/appcompat/widget/j;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/appcompat/widget/j;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/j;-><init>(Landroidx/appcompat/widget/o;)V

    iput-object v0, p0, Landroidx/appcompat/widget/o;->x:Landroidx/appcompat/widget/j;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/o;->x:Landroidx/appcompat/widget/j;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/c;)V

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    :cond_3
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/r;->C:Z

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->l(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object v0
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/k;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/k;

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/g0;->dismiss()V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    const/4 v1, 0x0

    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/o;->r:I

    iget v6, v0, Landroidx/appcompat/widget/o;->q:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v9, v4, :cond_6

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/r;

    iget v3, v15, Landroidx/appcompat/view/menu/r;->y:I

    and-int/lit8 v2, v3, 0x2

    if-ne v2, v13, :cond_1

    move v2, v14

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    and-int/lit8 v2, v3, 0x1

    if-ne v2, v14, :cond_3

    move v2, v14

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    move v10, v14

    :goto_4
    iget-boolean v2, v0, Landroidx/appcompat/widget/o;->s:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v15, Landroidx/appcompat/view/menu/r;->C:Z

    if-eqz v2, :cond_5

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    iget-boolean v2, v0, Landroidx/appcompat/widget/o;->n:Z

    if-eqz v2, :cond_8

    if-nez v10, :cond_7

    add-int/2addr v12, v11

    if-le v12, v5, :cond_8

    :cond_7
    add-int/lit8 v5, v5, -0x1

    :cond_8
    sub-int/2addr v5, v11

    iget-object v2, v0, Landroidx/appcompat/widget/o;->t:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v3, v4, :cond_19

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/r;

    iget v11, v10, Landroidx/appcompat/view/menu/r;->y:I

    and-int/lit8 v12, v11, 0x2

    if-ne v12, v13, :cond_9

    move v12, v14

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    iget v15, v10, Landroidx/appcompat/view/menu/r;->b:I

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v8}, Landroidx/appcompat/widget/o;->c(Landroidx/appcompat/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v6, v11

    if-nez v9, :cond_a

    move v9, v11

    :cond_a
    if-eqz v15, :cond_b

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    invoke-virtual {v10, v14}, Landroidx/appcompat/view/menu/r;->h(Z)V

    :goto_7
    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_c
    and-int/lit8 v11, v11, 0x1

    if-ne v11, v14, :cond_d

    move v11, v14

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_18

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-gtz v5, :cond_e

    if-eqz v11, :cond_f

    :cond_e
    if-lez v6, :cond_f

    move v12, v14

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    :goto_9
    const/4 v13, 0x0

    if-eqz v12, :cond_12

    invoke-virtual {v0, v10, v13, v8}, Landroidx/appcompat/widget/o;->c(Landroidx/appcompat/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v6, v14

    if-nez v9, :cond_10

    move v9, v14

    :cond_10
    add-int v14, v6, v9

    if-lez v14, :cond_11

    const/4 v14, 0x1

    goto :goto_a

    :cond_11
    const/4 v14, 0x0

    :goto_a
    and-int/2addr v12, v14

    :cond_12
    if-eqz v12, :cond_13

    if-eqz v15, :cond_13

    const/4 v14, 0x1

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_c

    :cond_13
    if-eqz v11, :cond_16

    const/4 v11, 0x0

    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v3, :cond_16

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/r;

    iget v13, v14, Landroidx/appcompat/view/menu/r;->b:I

    if-ne v13, v15, :cond_15

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/r;->f()Z

    move-result v13

    if-eqz v13, :cond_14

    add-int/lit8 v5, v5, 0x1

    :cond_14
    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Landroidx/appcompat/view/menu/r;->h(Z)V

    :cond_15
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    goto :goto_b

    :cond_16
    :goto_c
    if-eqz v12, :cond_17

    add-int/lit8 v5, v5, -0x1

    :cond_17
    invoke-virtual {v10, v12}, Landroidx/appcompat/view/menu/r;->h(Z)V

    goto :goto_7

    :cond_18
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/r;->h(Z)V

    :goto_d
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_19
    move v3, v14

    return v3
.end method

.method public final g()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, Landroidx/appcompat/widget/o;->z:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->b:I

    return-object v0
.end method

.method public final h(Landroid/content/Context;Landroidx/appcompat/view/menu/p;)V
    .locals 4

    iput-object p1, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/o;->n:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/o;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt p1, v3, :cond_6

    if-gt v0, v3, :cond_6

    const/16 p1, 0x2d0

    const/16 v3, 0x3c0

    if-le v0, v3, :cond_1

    if-gt v2, p1, :cond_6

    :cond_1
    if-le v0, p1, :cond_2

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_5

    const/16 p1, 0x1e0

    const/16 v3, 0x280

    if-le v0, v3, :cond_3

    if-gt v2, p1, :cond_5

    :cond_3
    if-le v0, p1, :cond_4

    if-le v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x168

    if-lt v0, p1, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x5

    :cond_7
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/o;->r:I

    iget p1, p0, Landroidx/appcompat/widget/o;->p:I

    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    if-nez v0, :cond_9

    new-instance v0, Landroidx/appcompat/widget/m;

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/m;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    iget-boolean v2, p0, Landroidx/appcompat/widget/o;->m:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroidx/appcompat/widget/o;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroidx/appcompat/widget/o;->l:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Landroidx/appcompat/widget/o;->m:Z

    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_3

    :cond_a
    iput-object v1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/o;->q:I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final i(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->b:I

    if-lez p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/p;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i0;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o;->m(Landroidx/appcompat/view/menu/i0;)Z

    :cond_1
    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(Landroidx/appcompat/view/menu/i0;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v2, v0, Landroidx/appcompat/view/menu/i0;->z:Landroidx/appcompat/view/menu/p;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eq v2, v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroidx/appcompat/view/menu/i0;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroidx/appcompat/view/menu/d0;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Landroidx/appcompat/view/menu/d0;

    invoke-interface {v6}, Landroidx/appcompat/view/menu/d0;->getItemData()Landroidx/appcompat/view/menu/r;

    move-result-object v6

    iget-object v7, v0, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    if-ne v6, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_5

    return v1

    :cond_5
    iget-object v0, p1, Landroidx/appcompat/view/menu/i0;->A:Landroidx/appcompat/view/menu/r;

    iget v0, v0, Landroidx/appcompat/view/menu/r;->a:I

    iput v0, p0, Landroidx/appcompat/widget/o;->z:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v0

    move v2, v1

    :goto_4
    const/4 v3, 0x1

    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    move v0, v3

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_5
    new-instance v2, Landroidx/appcompat/widget/i;

    iget-object v4, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v4, p1, v5}, Landroidx/appcompat/widget/i;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/i0;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/i;

    iput-boolean v0, v2, Landroidx/appcompat/view/menu/a0;->h:Z

    iget-object v2, v2, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/y;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/y;->r(Z)V

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/a0;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_6
    move v1, v3

    goto :goto_7

    :cond_9
    iget-object v2, v0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/view/menu/a0;->d(IIZZ)V

    goto :goto_6

    :goto_7
    if-eqz v1, :cond_c

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/b0;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    :cond_b
    return v3

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Z)V
    .locals 11

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/p;->i()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/p;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/r;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/r;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroidx/appcompat/view/menu/d0;

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Landroidx/appcompat/view/menu/d0;

    invoke-interface {v9}, Landroidx/appcompat/view/menu/d0;->getItemData()Landroidx/appcompat/view/menu/r;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    invoke-virtual {p0, v7, v8, p1}, Landroidx/appcompat/widget/o;->c(Landroidx/appcompat/view/menu/r;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    if-eq v7, v9, :cond_2

    invoke-virtual {v10, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v10, v8, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v6, v1

    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_9

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    if-ne v3, v4, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move v3, v2

    :goto_3
    if-nez v3, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->i()V

    iget-object p1, p1, Landroidx/appcompat/view/menu/p;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_5
    if-ge v4, v3, :cond_b

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/r;

    iget-object v5, v5, Landroidx/appcompat/view/menu/r;->A:Lg0/d;

    if-eqz v5, :cond_a

    iput-object p0, v5, Lg0/d;->a:Lg0/c;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/p;->i()V

    iget-object v0, p1, Landroidx/appcompat/view/menu/p;->j:Ljava/util/ArrayList;

    :cond_c
    iget-boolean p1, p0, Landroidx/appcompat/widget/o;->n:Z

    if-eqz p1, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/r;

    iget-boolean p1, p1, Landroidx/appcompat/view/menu/r;->C:Z

    xor-int/lit8 v1, p1, 0x1

    goto :goto_6

    :cond_d
    if-lez p1, :cond_e

    move v1, v2

    :cond_e
    :goto_6
    if-eqz v1, :cond_11

    iget-object p1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    if-nez p1, :cond_f

    new-instance p1, Landroidx/appcompat/widget/m;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/m;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    if-eq p1, v0, :cond_12

    if-eqz p1, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/appcompat/widget/r;

    invoke-direct {v1}, Landroidx/appcompat/widget/r;-><init>()V

    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput-boolean v2, v1, Landroidx/appcompat/widget/r;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_11
    iget-object p1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    if-ne p1, v0, :cond_12

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    :goto_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->n:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public final o(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->f:Landroidx/appcompat/view/menu/b0;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/b0;->o(Landroidx/appcompat/view/menu/p;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/p;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/widget/o;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/o;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/k;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->i()V

    iget-object v0, v0, Landroidx/appcompat/view/menu/p;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/i;

    iget-object v2, p0, Landroidx/appcompat/view/menu/d;->c:Landroid/content/Context;

    iget-object v3, p0, Landroidx/appcompat/view/menu/d;->d:Landroidx/appcompat/view/menu/p;

    iget-object v4, p0, Landroidx/appcompat/widget/o;->k:Landroidx/appcompat/widget/m;

    invoke-direct {v0, p0, v2, v3, v4}, Landroidx/appcompat/widget/i;-><init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/p;Landroidx/appcompat/widget/m;)V

    new-instance v2, Landroidx/appcompat/widget/k;

    invoke-direct {v2, v1, p0, v0}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/appcompat/widget/o;->w:Landroidx/appcompat/widget/k;

    iget-object v0, p0, Landroidx/appcompat/view/menu/d;->i:Landroidx/appcompat/view/menu/e0;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
