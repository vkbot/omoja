.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Ly1/y;


# static fields
.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:I


# instance fields
.field public final h:Lk1/c;

.field public final i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->l:[I

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->m:[I

    sget v0, Lcom/google/android/material/R$attr;->state_dragged:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->n:[I

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/card/MaterialCardView;->o:I

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
    sget v4, Lcom/google/android/material/card/MaterialCardView;->o:I

    invoke-static {p1, p2, p3, v4}, Lb2/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Z

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
    new-instance v1, Lk1/c;

    invoke-direct {v1, p0, p2, p3}, Lk1/c;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    .line 11
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 12
    iget-object p3, v1, Lk1/c;->c:Ly1/h;

    invoke-virtual {p3, p2}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

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

    move-result p0

    .line 17
    iget-object v4, v1, Lk1/c;->b:Landroid/graphics/Rect;

    invoke-virtual {v4, p2, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    invoke-virtual {v1}, Lk1/c;->h()V

    .line 19
    iget-object p0, v1, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    .line 20
    invoke-static {p2, v0, v2}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lk1/c;->m:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 21
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lk1/c;->m:Landroid/content/res/ColorStateList;

    .line 22
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v1, Lk1/c;->g:I

    .line 23
    sget p2, Lcom/google/android/material/R$styleable;->MaterialCardView_android_checkable:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Lk1/c;->r:Z

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconTint:I

    .line 26
    invoke-static {p2, v0, v2}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lk1/c;->k:Landroid/content/res/ColorStateList;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIcon:I

    .line 28
    invoke-static {p2, v0, v2}, Lv1/d;->d(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 29
    invoke-virtual {v1, p2}, Lk1/c;->e(Landroid/graphics/drawable/Drawable;)V

    .line 30
    sget p2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconSize:I

    .line 31
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 32
    iput p2, v1, Lk1/c;->f:I

    .line 33
    sget p2, Lcom/google/android/material/R$styleable;->MaterialCardView_checkedIconMargin:I

    .line 34
    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 35
    iput p2, v1, Lk1/c;->e:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_rippleColor:I

    .line 37
    invoke-static {p2, v0, v2}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lk1/c;->j:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_1

    .line 38
    sget p2, Lcom/google/android/material/R$attr;->colorControlHighlight:I

    .line 39
    invoke-static {p0, p2}, Ly1/l;->f0(Landroid/view/View;I)I

    move-result p2

    .line 40
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lk1/c;->j:Landroid/content/res/ColorStateList;

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/google/android/material/R$styleable;->MaterialCardView_cardForegroundColor:I

    .line 42
    invoke-static {p2, v0, v2}, Lv1/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 43
    iget-object v2, v1, Lk1/c;->d:Ly1/h;

    if-nez p2, :cond_2

    .line 44
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 45
    :cond_2
    invoke-virtual {v2, p2}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    .line 46
    iget-object p1, v1, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_3

    .line 47
    iget-object p2, v1, Lk1/c;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p1

    invoke-virtual {p3, p1}, Ly1/h;->m(F)V

    .line 49
    iget p1, v1, Lk1/c;->g:I

    int-to-float p1, p1

    iget-object p2, v1, Lk1/c;->m:Landroid/content/res/ColorStateList;

    .line 50
    iget-object v3, v2, Ly1/h;->a:Ly1/g;

    .line 51
    iput p1, v3, Ly1/g;->k:F

    .line 52
    invoke-virtual {v2}, Ly1/h;->invalidateSelf()V

    .line 53
    invoke-virtual {v2, p2}, Ly1/h;->s(Landroid/content/res/ColorStateList;)V

    .line 54
    invoke-virtual {v1, p3}, Lk1/c;->d(Landroid/graphics/drawable/Drawable;)Lk1/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lk1/c;->c()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    :cond_4
    iput-object v2, v1, Lk1/c;->h:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {v1, v2}, Lk1/c;->d(Landroid/graphics/drawable/Drawable;)Lk1/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 7

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object v0, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    iget-object p0, p0, Ly1/h;->a:Ly1/g;

    iget-object p0, p0, Ly1/g;->c:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->d:Ly1/h;

    iget-object p0, p0, Ly1/h;->a:Ly1/g;

    iget-object p0, p0, Ly1/g;->c:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCardViewRadius()F
    .locals 0

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p0

    return p0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCheckedIconMargin()I
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget p0, p0, Lk1/c;->e:I

    return p0
.end method

.method public getCheckedIconSize()I
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget p0, p0, Lk1/c;->f:I

    return p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->k:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getContentPaddingBottom()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getProgress()F
    .locals 0
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    iget-object p0, p0, Ly1/h;->a:Ly1/g;

    iget p0, p0, Ly1/g;->j:F

    return p0
.end method

.method public getRadius()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {p0}, Ly1/h;->j()F

    move-result p0

    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->j:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getShapeAppearanceModel()Ly1/n;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->l:Ly1/n;

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->m:Landroid/content/res/ColorStateList;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->m:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget p0, p0, Lk1/c;->g:I

    return p0
.end method

.method public final isChecked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object v0, v0, Lk1/c;->c:Ly1/h;

    invoke-static {p0, v0}, Ly1/l;->p1(Landroid/view/View;Ly1/h;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lk1/c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->l:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->m:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_2
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/android/material/card/MaterialCardView;->n:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_3
    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lk1/c;->r:Z

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

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object v0, p0, Lk1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lk1/c;->e:I

    sub-int/2addr p1, v0

    iget v1, p0, Lk1/c;->f:I

    sub-int/2addr p1, v1

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    iget-object v0, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lk1/c;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lk1/c;->a()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    sub-int/2addr p2, v1

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v1

    invoke-virtual {p0}, Lk1/c;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lk1/c;->a()F

    move-result v3

    :cond_1
    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr p1, v1

    :cond_2
    move v6, p2

    iget p2, p0, Lk1/c;->e:I

    sget-object v1, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lh0/a0;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    move v5, p1

    move v3, p2

    goto :goto_1

    :cond_3
    move v3, p1

    move v5, p2

    :goto_1
    iget-object v1, p0, Lk1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    iget v4, p0, Lk1/c;->e:I

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

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

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-boolean v1, v0, Lk1/c;->q:Z

    if-nez v1, :cond_0

    const-string v1, "MaterialCardView"

    const-string v2, "Setting a custom background is not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk1/c;->q:Z

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
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    .line 5
    invoke-virtual {p0, p1}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    .line 2
    invoke-virtual {p0, p1}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p1, p0, Lk1/c;->c:Ly1/h;

    iget-object p0, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p0

    invoke-virtual {p1, p0}, Ly1/h;->m(F)V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object p0, p0, Lk1/c;->d:Ly1/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ly1/h;->n(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput-boolean p1, p0, Lk1/c;->r:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    invoke-virtual {p0, p1}, Lk1/c;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput p1, p0, Lk1/c;->e:I

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

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput p1, p0, Lk1/c;->e:I

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

    invoke-static {v0, p1}, Ly1/l;->k0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    invoke-virtual {p0, p1}, Lk1/c;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconSize(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput p1, p0, Lk1/c;->f:I

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

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput p1, p0, Lk1/c;->f:I

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput-object p1, p0, Lk1/c;->k:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lk1/c;->h:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lk1/c;->c()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lk1/c;->d:Ly1/h;

    :goto_0
    iput-object v1, p0, Lk1/c;->h:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lk1/c;->d(Landroid/graphics/drawable/Drawable;)Lk1/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    invoke-virtual {p0}, Lk1/c;->i()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lk1/a;)V
    .locals 0
    .param p1    # Lk1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    invoke-virtual {p0}, Lk1/c;->i()V

    invoke-virtual {p0}, Lk1/c;->h()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object v0, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {v0, p1}, Ly1/h;->o(F)V

    iget-object v0, p0, Lk1/c;->d:Ly1/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/h;->o(F)V

    :cond_0
    iget-object p0, p0, Lk1/c;->p:Ly1/h;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ly1/h;->o(F)V

    :cond_1
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object v0, p0, Lk1/c;->l:Ly1/n;

    invoke-virtual {v0, p1}, Ly1/n;->f(F)Ly1/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk1/c;->f(Ly1/n;)V

    iget-object p1, p0, Lk1/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lk1/c;->g()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {p1}, Ly1/h;->l()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lk1/c;->h()V

    :cond_2
    invoke-virtual {p0}, Lk1/c;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lk1/c;->i()V

    :cond_3
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput-object p1, p0, Lk1/c;->j:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ly1/l;->g0(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iput-object p1, p0, Lk1/c;->j:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Ly1/n;)V
    .locals 1
    .param p1    # Ly1/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Ly1/n;->e(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    invoke-virtual {p0, p1}, Lk1/c;->f(Ly1/n;)V

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
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget-object v1, v0, Lk1/c;->m:Landroid/content/res/ColorStateList;

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, v0, Lk1/c;->m:Landroid/content/res/ColorStateList;

    .line 4
    iget-object v1, v0, Lk1/c;->d:Ly1/h;

    iget v0, v0, Lk1/c;->g:I

    int-to-float v0, v0

    .line 5
    iget-object v2, v1, Ly1/h;->a:Ly1/g;

    .line 6
    iput v0, v2, Ly1/g;->k:F

    .line 7
    invoke-virtual {v1}, Ly1/h;->invalidateSelf()V

    .line 8
    invoke-virtual {v1, p1}, Ly1/h;->s(Landroid/content/res/ColorStateList;)V

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

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    iget v1, v0, Lk1/c;->g:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lk1/c;->g:I

    iget-object v1, v0, Lk1/c;->d:Ly1/h;

    int-to-float p1, p1

    iget-object v0, v0, Lk1/c;->m:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Ly1/h;->a:Ly1/g;

    iput p1, v2, Ly1/g;->k:F

    invoke-virtual {v1}, Ly1/h;->invalidateSelf()V

    invoke-virtual {v1, v0}, Ly1/h;->s(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    invoke-virtual {p0}, Lk1/c;->i()V

    invoke-virtual {p0}, Lk1/c;->h()V

    return-void
.end method

.method public final toggle()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/card/MaterialCardView;->h:Lk1/c;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lk1/c;->r:Z

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

    iget-boolean v3, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->c()V

    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Z

    iget-object v0, v2, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    const/16 v1, 0xff

    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    return-void
.end method
