.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final f:[I

.field public static final g:Ly1/e;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroidx/appcompat/widget/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/cardview/widget/CardView;->f:[I

    new-instance v0, Ly1/e;

    invoke-direct {v0}, Ly1/e;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->g:Ly1/e;

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
    .locals 7
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

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    .line 6
    new-instance v1, Landroidx/appcompat/widget/d0;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/d0;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

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

    sget-object v2, Landroidx/cardview/widget/CardView;->f:[I

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

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->a:Z

    .line 21
    sget v5, Landroidx/cardview/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->b:Z

    .line 22
    sget p0, Landroidx/cardview/R$styleable;->CardView_contentPadding:I

    invoke-virtual {p1, p0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    .line 23
    sget v5, Landroidx/cardview/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {p1, v5, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 24
    sget v5, Landroidx/cardview/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {p1, v5, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 25
    sget v5, Landroidx/cardview/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {p1, v5, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 26
    sget v5, Landroidx/cardview/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {p1, v5, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float p0, v4, v3

    if-lez p0, :cond_2

    move v3, v4

    .line 27
    :cond_2
    sget p0, Landroidx/cardview/R$styleable;->CardView_android_minWidth:I

    invoke-virtual {p1, p0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 28
    sget p0, Landroidx/cardview/R$styleable;->CardView_android_minHeight:I

    invoke-virtual {p1, p0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    sget-object p0, Landroidx/cardview/widget/CardView;->g:Ly1/e;

    .line 31
    new-instance p1, Lj/a;

    invoke-direct {p1, v2, p2}, Lj/a;-><init>(FLandroid/content/res/ColorStateList;)V

    .line 32
    iput-object p1, v1, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 33
    iget-object p2, v1, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p1, v1, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 35
    invoke-virtual {p1, v6}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    invoke-virtual {p1, v4}, Landroid/view/View;->setElevation(F)V

    .line 37
    invoke-virtual {p0, v1, v3}, Ly1/e;->j(Landroidx/appcompat/widget/d0;F)V

    return-void
.end method

.method public static synthetic b(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Lj/a;

    iget-object p0, p0, Lj/a;->h:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getCardElevation()F
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public getContentPaddingBottom()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getMaxCardElevation()F
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Lj/a;

    iget p0, p0, Lj/a;->e:F

    return p0
.end method

.method public getPreventCornerOverlap()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->b:Z

    return p0
.end method

.method public getRadius()F
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Lj/a;

    iget p0, p0, Lj/a;->a:F

    return p0
.end method

.method public getUseCompatPadding()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->a:Z

    return p0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 2
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 3
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 4
    check-cast p0, Lj/a;

    .line 5
    invoke-virtual {p0, p1}, Lj/a;->b(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 9
    check-cast p0, Lj/a;

    .line 10
    invoke-virtual {p0, p1}, Lj/a;->b(Landroid/content/res/ColorStateList;)V

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    sget-object v0, Landroidx/cardview/widget/CardView;->g:Ly1/e;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, p0, p1}, Ly1/e;->j(Landroidx/appcompat/widget/d0;F)V

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
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->b:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->g:Ly1/e;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Lj/a;

    iget v0, v0, Lj/a;->e:F

    invoke-virtual {p1, p0, v0}, Ly1/e;->j(Landroidx/appcompat/widget/d0;F)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object p0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    check-cast p0, Lj/a;

    iget v0, p0, Lj/a;->a:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lj/a;->a:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lj/a;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->a:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->g:Ly1/e;

    iget-object p0, p0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Lj/a;

    iget v0, v0, Lj/a;->e:F

    invoke-virtual {p1, p0, v0}, Ly1/e;->j(Landroidx/appcompat/widget/d0;F)V

    :cond_0
    return-void
.end method
