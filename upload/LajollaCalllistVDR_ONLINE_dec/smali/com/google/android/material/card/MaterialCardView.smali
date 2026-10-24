.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lg2/x;


# static fields
.field public static final m:[I

.field public static final n:[I

.field public static final o:[I

.field public static final p:I


# instance fields
.field public final i:Ls1/c;

.field public final j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->m:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->n:[I

    sget v0, Lcom/google/android/material/R$attr;->state_dragged:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->o:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/card/MaterialCardView;->p:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    sget v4, Lcom/google/android/material/card/MaterialCardView;->p:I

    invoke-static {p1, p2, p3, v4}, Lj2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCardView:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 10
    new-instance v1, Ls1/c;

    invoke-direct {v1, p0, p2, p3}, Ls1/c;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    .line 11
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 12
    iget-object p3, v1, Ls1/c;->c:Lg2/h;

    invoke-virtual {p3, p2}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    .line 13
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result p2

    .line 14
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v2

    .line 15
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v3

    .line 16
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v4

    .line 17
    iget-object v5, v1, Ls1/c;->b:Landroid/graphics/Rect;

    invoke-virtual {v5, p2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    invoke-virtual {v1}, Ls1/c;->h()V

    .line 19
    iget-object p2, v1, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    .line 20
    invoke-static {v2, v0, v3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Ls1/c;->m:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 21
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Ls1/c;->m:Landroid/content/res/ColorStateList;

    .line 22
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Ls1/c;->g:I

    .line 23
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_android_checkable:I

    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Ls1/c;->r:Z

    .line 24
    invoke-virtual {p2, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconTint:I

    .line 26
    invoke-static {v2, v0, v3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Ls1/c;->k:Landroid/content/res/ColorStateList;

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIcon:I

    .line 28
    invoke-static {v2, v0, v3}, Ld2/d;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ls1/c;->e(Landroid/graphics/drawable/Drawable;)V

    .line 30
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconSize:I

    .line 31
    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 32
    iput v2, v1, Ls1/c;->f:I

    .line 33
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconMargin:I

    .line 34
    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 35
    iput v2, v1, Ls1/c;->e:I

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCardView_rippleColor:I

    .line 37
    invoke-static {v2, v0, v3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Ls1/c;->j:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_1

    .line 38
    sget v2, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    .line 39
    invoke-static {p2, v2}, Lcom/google/android/material/slider/h;->c0(Landroid/view/View;I)I

    move-result v2

    .line 40
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Ls1/c;->j:Landroid/content/res/ColorStateList;

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$styleable;->MaterialCardView_cardForegroundColor:I

    .line 42
    invoke-static {v2, v0, v3}, Ld2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 43
    iget-object v3, v1, Ls1/c;->d:Lg2/h;

    if-nez v2, :cond_2

    .line 44
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 45
    :cond_2
    invoke-virtual {v3, v2}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    .line 46
    sget-object p1, Le2/a;->a:[I

    iget-object p1, v1, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_3

    .line 47
    iget-object v2, v1, Ls1/c;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_3
    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p1

    invoke-virtual {p3, p1}, Lg2/h;->m(F)V

    .line 49
    iget p1, v1, Ls1/c;->g:I

    int-to-float p1, p1

    iget-object v2, v1, Ls1/c;->m:Landroid/content/res/ColorStateList;

    .line 50
    iget-object v4, v3, Lg2/h;->b:Lg2/g;

    .line 51
    iput p1, v4, Lg2/g;->k:F

    .line 52
    invoke-virtual {v3}, Lg2/h;->invalidateSelf()V

    .line 53
    invoke-virtual {v3, v2}, Lg2/h;->s(Landroid/content/res/ColorStateList;)V

    .line 54
    invoke-virtual {v1, p3}, Ls1/c;->d(Landroid/graphics/drawable/Drawable;)Ls1/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ls1/c;->c()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    :cond_4
    iput-object v3, v1, Ls1/c;->h:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v1, v3}, Ls1/c;->d(Landroid/graphics/drawable/Drawable;)Ls1/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v1, v1, Ls1/c;->c:Lg2/h;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v1, v0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->c:Lg2/h;

    iget-object v0, v0, Lg2/h;->b:Lg2/g;

    iget-object v0, v0, Lg2/g;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->d:Lg2/h;

    iget-object v0, v0, Lg2/h;->b:Lg2/g;

    iget-object v0, v0, Lg2/g;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardViewRadius()F
    .locals 1

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckedIconMargin()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget v0, v0, Ls1/c;->e:I

    return v0
.end method

.method public getCheckedIconSize()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget v0, v0, Ls1/c;->f:I

    return v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->c:Lg2/h;

    iget-object v0, v0, Lg2/h;->b:Lg2/g;

    iget v0, v0, Lg2/g;->j:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->c:Lg2/h;

    invoke-virtual {v0}, Lg2/h;->j()F

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lg2/m;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->l:Lg2/m;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget v0, v0, Ls1/c;->g:I

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->c:Lg2/h;

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->m1(Landroid/view/View;Lg2/h;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ls1/c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->m:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->n:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->o:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_3
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ls1/c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v1, v0, Ls1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    iget v1, v0, Ls1/c;->e:I

    sub-int/2addr p1, v1

    iget v2, v0, Ls1/c;->f:I

    sub-int/2addr p1, v2

    sub-int/2addr p2, v1

    sub-int/2addr p2, v2

    iget-object v1, v0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Ls1/c;->g()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ls1/c;->a()F

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    sub-int/2addr p2, v2

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v2

    invoke-virtual {v0}, Ls1/c;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ls1/c;->a()F

    move-result v4

    :cond_1
    add-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr p1, v2

    :cond_2
    move v7, p2

    iget p2, v0, Ls1/c;->e:I

    sget-object v2, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move v6, p1

    move v4, p2

    goto :goto_1

    :cond_3
    move v4, p1

    move v6, p2

    :goto_1
    iget-object v2, v0, Ls1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    iget v5, v0, Ls1/c;->e:I

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_4
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-boolean v1, v0, Ls1/c;->q:Z

    if-nez v1, :cond_0

    const-string v1, "MaterialCardView"

    const-string v2, "Setting a custom background is not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls1/c;->q:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->c:Lg2/h;

    .line 5
    invoke-virtual {v0, p1}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->c:Lg2/h;

    .line 2
    invoke-virtual {v0, p1}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, p1, Ls1/c;->c:Lg2/h;

    iget-object p1, p1, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p1

    invoke-virtual {v0, p1}, Lg2/h;->m(F)V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v0, v0, Ls1/c;->d:Lg2/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lg2/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput-boolean p1, v0, Ls1/c;->r:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    invoke-virtual {v0, p1}, Ls1/c;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput p1, v0, Ls1/c;->e:I

    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput p1, v0, Ls1/c;->e:I

    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/slider/h;->h0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    invoke-virtual {v0, p1}, Ls1/c;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput p1, v0, Ls1/c;->f:I

    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput p1, v0, Ls1/c;->f:I

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput-object p1, v0, Ls1/c;->k:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    if-eqz p1, :cond_2

    iget-object v0, p1, Ls1/c;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ls1/c;->c()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Ls1/c;->d:Lg2/h;

    :goto_0
    iput-object v2, p1, Ls1/c;->h:Landroid/graphics/drawable/Drawable;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ls1/c;->d(Landroid/graphics/drawable/Drawable;)Ls1/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    invoke-virtual {p1}, Ls1/c;->i()V

    return-void
.end method

.method public setOnCheckedChangeListener(Ls1/a;)V
    .locals 0
    .param p1    # Ls1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    invoke-virtual {p1}, Ls1/c;->i()V

    invoke-virtual {p1}, Ls1/c;->h()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v1, v0, Ls1/c;->c:Lg2/h;

    invoke-virtual {v1, p1}, Lg2/h;->o(F)V

    iget-object v1, v0, Ls1/c;->d:Lg2/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lg2/h;->o(F)V

    :cond_0
    iget-object v0, v0, Ls1/c;->p:Lg2/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg2/h;->o(F)V

    :cond_1
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v1, v0, Ls1/c;->l:Lg2/m;

    invoke-virtual {v1, p1}, Lg2/m;->f(F)Lg2/m;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/c;->f(Lg2/m;)V

    iget-object p1, v0, Ls1/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v0}, Ls1/c;->g()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Ls1/c;->c:Lg2/h;

    invoke-virtual {p1}, Lg2/h;->l()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ls1/c;->h()V

    :cond_2
    invoke-virtual {v0}, Ls1/c;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ls1/c;->i()V

    :cond_3
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput-object p1, v0, Ls1/c;->j:Landroid/content/res/ColorStateList;

    sget-object v1, Le2/a;->a:[I

    iget-object v0, v0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/slider/h;->d0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iput-object p1, v0, Ls1/c;->j:Landroid/content/res/ColorStateList;

    sget-object v1, Le2/a;->a:[I

    iget-object v0, v0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lg2/m;)V
    .locals 1
    .param p1    # Lg2/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg2/m;->e(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    invoke-virtual {v0, p1}, Ls1/c;->f(Lg2/m;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget-object v1, v0, Ls1/c;->m:Landroid/content/res/ColorStateList;

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Ls1/c;->m:Landroid/content/res/ColorStateList;

    .line 4
    iget-object v1, v0, Ls1/c;->d:Lg2/h;

    iget v0, v0, Ls1/c;->g:I

    int-to-float v0, v0

    .line 5
    iget-object v2, v1, Lg2/h;->b:Lg2/g;

    .line 6
    iput v0, v2, Lg2/g;->k:F

    .line 7
    invoke-virtual {v1}, Lg2/h;->invalidateSelf()V

    .line 8
    invoke-virtual {v1, p1}, Lg2/h;->s(Landroid/content/res/ColorStateList;)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    iget v1, v0, Ls1/c;->g:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Ls1/c;->g:I

    iget-object v1, v0, Ls1/c;->d:Lg2/h;

    int-to-float p1, p1

    iget-object v0, v0, Ls1/c;->m:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Lg2/h;->b:Lg2/g;

    iput p1, v2, Lg2/g;->k:F

    invoke-virtual {v1}, Lg2/h;->invalidateSelf()V

    invoke-virtual {v1, v0}, Lg2/h;->s(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    invoke-virtual {p1}, Ls1/c;->i()V

    invoke-virtual {p1}, Ls1/c;->h()V

    return-void
.end method

.method public final toggle()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardView;->i:Ls1/c;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Ls1/c;->r:Z

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->c()V

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    iget-object v2, v2, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    return-void
.end method
