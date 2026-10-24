.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final g:[I

.field public static final h:Lg2/e;


# instance fields
.field public b:Z

.field public c:Z

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Landroidx/appcompat/widget/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/cardview/widget/CardView;->g:[I

    new-instance v0, Lg2/e;

    invoke-direct {v0}, Lg2/e;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->h:Lg2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Landroidx/cardview/R$attr;->cardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->e:Landroid/graphics/Rect;

    .line 6
    new-instance v1, Landroidx/appcompat/widget/d0;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/d0;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    .line 7
    sget-object v2, Landroidx/cardview/R$styleable;->CardView:[I

    sget v3, Landroidx/cardview/R$style;->CardView:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 9
    sget p2, Landroidx/cardview/R$styleable;->CardView_cardBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v2, Landroidx/cardview/widget/CardView;->g:[I

    invoke-virtual {p2, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 12
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 13
    invoke-static {v2, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x2

    aget p2, p2, v2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v2

    if-lez p2, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroidx/cardview/R$color;->cardview_light_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroidx/cardview/R$color;->cardview_dark_background:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 16
    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 17
    :goto_1
    sget v2, Landroidx/cardview/R$styleable;->CardView_cardCornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 18
    sget v4, Landroidx/cardview/R$styleable;->CardView_cardElevation:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 19
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 20
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->b:Z

    .line 21
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->c:Z

    .line 22
    sget v5, Landroidx/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 23
    sget v7, Landroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 24
    sget v7, Landroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 25
    sget v7, Landroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 26
    sget v7, Landroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v4, v3

    if-lez v0, :cond_2

    move v3, v4

    .line 27
    :cond_2
    sget v0, Landroidx/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 28
    sget v0, Landroidx/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    sget-object p1, Landroidx/cardview/widget/CardView;->h:Lg2/e;

    .line 31
    new-instance p3, Li/a;

    invoke-direct {p3, v2, p2}, Li/a;-><init>(FLandroid/content/res/ColorStateList;)V

    .line 32
    iput-object p3, v1, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 33
    iget-object p2, v1, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast p2, Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p2, v1, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast p2, Landroidx/cardview/widget/CardView;

    .line 35
    invoke-virtual {p2, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    invoke-virtual {p2, v4}, Landroid/view/View;->setElevation(F)V

    .line 37
    invoke-virtual {p1, v1, v3}, Lg2/e;->j(Landroidx/appcompat/widget/d0;F)V

    return-void
.end method

.method public static synthetic b(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Li/a;

    iget-object v0, v0, Li/a;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardElevation()F
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Li/a;

    iget v0, v0, Li/a;->e:F

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->c:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Li/a;

    iget v0, v0, Li/a;->a:F

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 4
    check-cast v0, Li/a;

    .line 5
    invoke-virtual {v0, p1}, Li/a;->b(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 9
    check-cast v0, Li/a;

    .line 10
    invoke-virtual {v0, p1}, Li/a;->b(Landroid/content/res/ColorStateList;)V

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->h:Lg2/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, v1, p1}, Lg2/e;->j(Landroidx/appcompat/widget/d0;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->c:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->h:Lg2/e;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v1, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    check-cast v1, Li/a;

    iget v1, v1, Li/a;->e:F

    invoke-virtual {p1, v0, v1}, Lg2/e;->j(Landroidx/appcompat/widget/d0;F)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v0, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Li/a;

    iget v1, v0, Li/a;->a:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Li/a;->a:F

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Li/a;->c(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->b:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->h:Lg2/e;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v1, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    check-cast v1, Li/a;

    iget v1, v1, Li/a;->e:F

    invoke-virtual {p1, v0, v1}, Lg2/e;->j(Landroidx/appcompat/widget/d0;F)V

    :cond_0
    return-void
.end method
