.class public abstract Lcom/google/android/material/navigation/NavigationBarItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/d0;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final D:[I

.field public static final E:Lcom/google/android/material/navigation/b;

.field public static final F:Lcom/google/android/material/navigation/c;


# instance fields
.field public A:Z

.field public B:I

.field public C:Lo1/a;

.field public b:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F

.field public h:I

.field public i:Z

.field public final j:Landroid/widget/FrameLayout;

.field public final k:Landroid/view/View;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/view/ViewGroup;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/TextView;

.field public p:I

.field public q:Landroidx/appcompat/view/menu/r;

.field public r:Landroid/content/res/ColorStateList;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/animation/ValueAnimator;

.field public v:Lcom/google/android/material/navigation/b;

.field public w:F

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->D:[I

    new-instance v0, Lcom/google/android/material/navigation/b;

    invoke-direct {v0}, Lcom/google/android/material/navigation/b;-><init>()V

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->E:Lcom/google/android/material/navigation/b;

    new-instance v0, Lcom/google/android/material/navigation/c;

    invoke-direct {v0}, Lcom/google/android/material/navigation/c;-><init>()V

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->F:Lcom/google/android/material/navigation/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:I

    sget-object v1, Lcom/google/android/material/navigation/NavigationBarItemView;->E:Lcom/google/android/material/navigation/b;

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:Lcom/google/android/material/navigation/b;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->w:F

    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->x:Z

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->y:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:I

    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:Z

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_container:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/widget/FrameLayout;

    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_active_indicator_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/view/View;

    sget p1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    sget v0, Lcom/google/android/material/R$id;->navigation_bar_item_labels_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/view/ViewGroup;

    sget v2, Lcom/google/android/material/R$id;->navigation_bar_item_small_label_view:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    sget v3, Lcom/google/android/material/R$id;->navigation_bar_item_large_label_view:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemBackgroundResId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemDefaultMarginResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lg0/a0;->s(Landroid/view/View;I)V

    invoke-static {v3, v0}, Lg0/a0;->s(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    sub-float v3, v0, v2

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, v2, v3

    div-float/2addr v4, v0

    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:F

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/e2;

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/e2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public static c(FFILandroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p3, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static d(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private getIconOrContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    :goto_0
    return-object v0
.end method

.method private getItemVisiblePosition()I
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getSuggestedIconHeight()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method private getSuggestedIconWidth()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    iget-object v1, v1, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v1, v1, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->l:I

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:Lcom/google/android/material/navigation/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lm1/a;->a:Landroid/view/animation/LinearInterpolator;

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, p1

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p1, p2}, Lcom/google/android/material/navigation/b;->a(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    const p2, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-static {v1, v3, v2, p2, p1}, Lm1/a;->a(FFFFF)F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->w:F

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/r;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p1, Landroidx/appcompat/view/menu/r;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/r;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/r;->r:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:Z

    return-void
.end method

.method public final e(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->y:I

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:I

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadge()Lo1/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    return-object v0
.end method

.method public getItemBackgroundResId()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_navigation_bar_item_background:I

    return v0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/r;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    return-object v0
.end method

.method public getItemDefaultMarginResId()I
    .locals 1
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_bar_item_default_margin:I

    return v0
.end method

.method public abstract getItemLayoutResId()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method public getItemPosition()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getSuggestedIconHeight()I

    move-result v2

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getSuggestedIconWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/navigation/NavigationBarItemView;->D:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    iget-object v1, v0, Landroidx/appcompat/view/menu/r;->e:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    iget-object v1, v0, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    invoke-virtual {v1}, Lo1/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v3, v1}, Landroidx/appcompat/app/f0;->d(IIIIZ)Landroidx/appcompat/app/f0;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/app/f0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object v0, Lh0/b;->g:Lh0/b;

    iget-object v0, v0, Lh0/b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->item_view_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p2, Lx/j;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p3, p0}, Lx/j;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->x:Z

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(I)V

    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->B:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(I)V

    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:Z

    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(I)V

    return-void
.end method

.method public setBadge(Lo1/a;)V
    .locals 2
    .param p1    # Lo1/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->C:Lo1/a;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {p1}, Lo1/a;->d()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lo1/a;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->x:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->b:Z

    if-eqz v5, :cond_4

    sget-object v5, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lg0/d0;->b(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Landroid/animation/ValueAnimator;

    :cond_2
    new-array v5, v2, [F

    iget v8, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->w:F

    aput v8, v5, v7

    aput v4, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/google/android/material/navigation/a;

    invoke-direct {v8, p0, v4}, Lcom/google/android/material/navigation/a;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView;F)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v9, Lm1/a;->b:Lo0/b;

    invoke-static {v5, v8, v9}, La2/a;->c(Landroid/content/Context;ILo0/b;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v5, v8}, Ld2/c;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v8, v5, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x10

    if-ne v8, v10, :cond_3

    iget v9, v5, Landroid/util/TypedValue;->data:I

    :cond_3
    int-to-long v8, v9

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->u:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v4, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->a(FF)V

    :goto_2
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:I

    const/4 v5, -0x1

    const/16 v8, 0x11

    const/16 v9, 0x31

    iget-object v10, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->m:Landroid/view/ViewGroup;

    const/4 v11, 0x4

    if-eq v4, v5, :cond_a

    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_6

    if-eq v4, v2, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v3, v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_6
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    invoke-static {v10, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(Landroid/view/ViewGroup;I)V

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    invoke-static {v3, v3, v7, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    invoke-static {v0, v0, v11, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:F

    invoke-static {v2, v2, v11, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    invoke-static {v3, v3, v7, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v3, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    invoke-static {v10, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v3, v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    invoke-static {v10, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->i:Z

    if-eqz v2, :cond_c

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v3, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    invoke-static {v10, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v3, v8}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    invoke-static {v10, v7}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    invoke-static {v10, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->f(Landroid/view/ViewGroup;I)V

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    invoke-static {v3, v3, v7, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    invoke-static {v0, v0, v11, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    goto :goto_5

    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getIconOrContainer()Landroid/view/View;

    move-result-object v2

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    invoke-static {v2, v4, v9}, Lcom/google/android/material/navigation/NavigationBarItemView;->d(Landroid/view/View;II)V

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:F

    invoke-static {v2, v2, v11, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    invoke-static {v3, v3, v7, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->c(FFILandroid/widget/TextView;)V

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, p1}, Lg0/i0;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lg0/i0;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->s:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->s:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->r:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->r:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lw/f;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v0, p1}, Lw/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    :cond_0
    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {p0, p1}, Lg0/a0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->d:I

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->c:I

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->p:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->h:I

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/material/navigation/NavigationBarItemView;->F:Lcom/google/android/material/navigation/c;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:Lcom/google/android/material/navigation/b;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/google/android/material/navigation/NavigationBarItemView;->E:Lcom/google/android/material/navigation/b;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->v:Lcom/google/android/material/navigation/b;

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->e(I)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->i:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->i:Z

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    sub-float v1, p1, v0

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v0, v1

    div-float/2addr v2, p1

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:F

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    sub-float v1, p1, v0

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v0, v1

    div-float/2addr v2, p1

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->f:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->g:F

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/appcompat/view/menu/r;->r:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->q:Landroidx/appcompat/view/menu/r;

    iget-object p1, p1, Landroidx/appcompat/view/menu/r;->r:Ljava/lang/CharSequence;

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method
