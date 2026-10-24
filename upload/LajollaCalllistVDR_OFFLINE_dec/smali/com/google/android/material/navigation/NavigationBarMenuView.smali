.class public abstract Lcom/google/android/material/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e0;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final C:[I

.field public static final D:[I


# instance fields
.field public A:Lcom/google/android/material/navigation/f;

.field public B:Landroidx/appcompat/view/menu/p;

.field public final a:Lw0/a;

.field public final b:Landroidx/appcompat/widget/v1;

.field public final c:Lg0/c;

.field public final d:Landroid/util/SparseArray;

.field public e:I

.field public f:[Lcom/google/android/material/navigation/NavigationBarItemView;

.field public g:I

.field public h:I

.field public i:Landroid/content/res/ColorStateList;

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public final l:Landroid/content/res/ColorStateList;

.field public m:I

.field public n:I

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public q:Landroid/util/SparseArray;

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:Ly1/n;

.field public y:Z

.field public z:Landroid/content/res/ColorStateList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->D:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lg0/c;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lg0/c;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->c:Lg0/c;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->d:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:I

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->r:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->s:I

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->y:Z

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->l:Landroid/content/res/ColorStateList;

    new-instance v0, Lw0/a;

    invoke-direct {v0}, Lw0/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->a:Lw0/a;

    invoke-virtual {v0, p1}, Lw0/u;->K(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {p1, v1}, Lv1/c;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    iget v2, p1, Landroid/util/TypedValue;->data:I

    :cond_0
    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lw0/u;->I(J)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v2, Le1/a;->b:Lp0/b;

    invoke-static {p1, v1, v2}, Ls1/a;->c(Landroid/content/Context;ILp0/b;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw0/u;->J(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/google/android/material/internal/v;

    invoke-direct {p1}, Lcom/google/android/material/internal/v;-><init>()V

    invoke-virtual {v0, p1}, Lw0/u;->H(Lw0/p;)V

    new-instance p1, Landroidx/appcompat/widget/v1;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Landroidx/appcompat/widget/v1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->b:Landroidx/appcompat/widget/v1;

    sget-object p1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lh0/z;->s(Landroid/view/View;I)V

    return-void
.end method

.method public static f(II)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    if-le p1, p0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->c:Lg0/c;

    invoke-virtual {v0}, Lg0/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->e(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 2
    .param p1    # Lcom/google/android/material/navigation/NavigationBarItemView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg1/a;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lg1/a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->c:Lg0/c;

    invoke-virtual {v7, v6}, Lg0/c;->b(Ljava/lang/Object;)Z

    iget-object v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lg1/a;

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v8, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lg1/a;

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lg1/a;->d()Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lg1/a;->d()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    iput-object v1, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->B:Lg1/a;

    :goto_3
    iput-object v1, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->p:Landroidx/appcompat/view/menu/r;

    const/4 v7, 0x0

    iput v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->v:F

    iput-boolean v2, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->a:Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v0

    if-nez v0, :cond_7

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:I

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    return-void

    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_4
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_5
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/navigation/NavigationBarItemView;

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->e:I

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/p;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->f(II)Z

    move-result v0

    move v1, v2

    :goto_6
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->A:Lcom/google/android/material/navigation/f;

    iput-boolean v3, v4, Lcom/google/android/material/navigation/f;->b:Z

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v4, v1}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->A:Lcom/google/android/material/navigation/f;

    iput-boolean v2, v4, Lcom/google/android/material/navigation/f;->b:Z

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aput-object v4, v5, v1

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->m:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->n:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->r:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    :cond_b
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->s:I

    if-eq v5, v6, :cond_c

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    :cond_c
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->u:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->v:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->d()Ly1/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->y:Z

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    iget-boolean v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->t:Z

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_d
    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->p:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    :goto_7
    invoke-virtual {v4, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->e:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v5, v1}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/r;

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->b(Landroidx/appcompat/view/menu/r;)V

    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPosition(I)V

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->d:Landroid/util/SparseArray;

    iget v5, v5, Landroidx/appcompat/view/menu/r;->a:I

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->b:Landroidx/appcompat/widget/v1;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:I

    if-eqz v6, :cond_e

    if-ne v5, v6, :cond_e

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    :cond_e
    invoke-direct {p0, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final b()Landroid/content/res/ColorStateList;
    .locals 7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010038

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {p0, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v4, v4, [[I

    sget-object v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->D:[I

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v6, Lcom/google/android/material/navigation/NavigationBarMenuView;->C:[I

    aput-object v6, v4, v3

    const/4 v3, 0x2

    sget-object v6, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    aput-object v6, v4, v3

    invoke-virtual {v1, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    invoke-direct {v2, v4, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public final c(Landroidx/appcompat/view/menu/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    return-void
.end method

.method public final d()Ly1/h;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->x:Ly1/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->z:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    new-instance v0, Ly1/h;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->x:Ly1/n;

    invoke-direct {v0, v1}, Ly1/h;-><init>(Ly1/n;)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p0}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract e(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lg1/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->z:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->t:Z

    return p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->v:I

    return p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:I

    return p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Ly1/n;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->x:Ly1/n;

    return-object p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->u:I

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getItemBackgroundRes()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->p:I

    return p0
.end method

.method public getItemIconSize()I
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:I

    return p0
.end method

.method public getItemPaddingBottom()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->s:I

    return p0
.end method

.method public getItemPaddingTop()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->r:I

    return p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->n:I

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->m:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->e:I

    return p0
.end method

.method public getMenu()Landroidx/appcompat/view/menu/p;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->g:I

    return p0
.end method

.method public getSelectedItemPosition()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->h:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->B:Landroidx/appcompat/view/menu/p;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/p;->l()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0, v0}, Landroidx/appcompat/app/f0;->c(III)Landroidx/appcompat/app/f0;

    move-result-object p0

    iget-object p0, p0, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lg1/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->q:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/a;

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lg1/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->i:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->z:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->d()Ly1/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->t:Z

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->v:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->w:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorResizeable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->y:Z

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Ly1/n;)V
    .locals 4
    .param p1    # Ly1/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->x:Ly1/n;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->d()Ly1/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->u:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->o:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->p:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->j:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->s:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->r:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->n:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->m:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->k:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->f:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->e:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/navigation/f;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->A:Lcom/google/android/material/navigation/f;

    return-void
.end method
