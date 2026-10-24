.class public final Ls1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:D


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/graphics/Rect;

.field public final c:Lg2/h;

.field public final d:Lg2/h;

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Lg2/m;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/drawable/RippleDrawable;

.field public o:Landroid/graphics/drawable/LayerDrawable;

.field public p:Lg2/h;

.field public q:Z

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Ls1/c;->s:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V
    .locals 3

    sget v0, Lcom/google/android/material/card/MaterialCardView;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ls1/c;->b:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ls1/c;->q:Z

    iput-object p1, p0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    new-instance v1, Lg2/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, v0}, Lg2/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Ls1/c;->c:Lg2/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg2/h;->k(Landroid/content/Context;)V

    invoke-virtual {v1}, Lg2/h;->q()V

    iget-object v0, v1, Lg2/h;->b:Lg2/g;

    iget-object v0, v0, Lg2/g;->a:Lg2/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lg2/l;

    invoke-direct {v1, v0}, Lg2/l;-><init>(Lg2/m;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/R$styleable;->CardView:[I

    sget v2, Lcom/google/android/material/R$style;->CardView:I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/google/android/material/R$styleable;->CardView_cardCornerRadius:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {v1, p2}, Lg2/l;->c(F)V

    :cond_0
    new-instance p2, Lg2/h;

    invoke-direct {p2}, Lg2/h;-><init>()V

    iput-object p2, p0, Ls1/c;->d:Lg2/h;

    new-instance p2, Lg2/m;

    invoke-direct {p2, v1}, Lg2/m;-><init>(Lg2/l;)V

    invoke-virtual {p0, p2}, Ls1/c;->f(Lg2/m;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static b(Lcom/google/android/material/slider/h;F)F
    .locals 4

    instance-of v0, p0, Lg2/k;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Ls1/c;->s:D

    sub-double/2addr v0, v2

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0

    :cond_0
    instance-of p0, p0, Lg2/d;

    if-eqz p0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()F
    .locals 5

    iget-object v0, p0, Ls1/c;->l:Lg2/m;

    iget-object v0, v0, Lg2/m;->a:Lcom/google/android/material/slider/h;

    iget-object v1, p0, Ls1/c;->c:Lg2/h;

    invoke-virtual {v1}, Lg2/h;->j()F

    move-result v2

    invoke-static {v0, v2}, Ls1/c;->b(Lcom/google/android/material/slider/h;F)F

    move-result v0

    iget-object v2, p0, Ls1/c;->l:Lg2/m;

    iget-object v2, v2, Lg2/m;->b:Lcom/google/android/material/slider/h;

    iget-object v3, v1, Lg2/h;->b:Lg2/g;

    iget-object v3, v3, Lg2/g;->a:Lg2/m;

    iget-object v3, v3, Lg2/m;->f:Lg2/c;

    invoke-virtual {v1}, Lg2/h;->h()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {v2, v3}, Ls1/c;->b(Lcom/google/android/material/slider/h;F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Ls1/c;->l:Lg2/m;

    iget-object v2, v2, Lg2/m;->c:Lcom/google/android/material/slider/h;

    iget-object v3, v1, Lg2/h;->b:Lg2/g;

    iget-object v3, v3, Lg2/g;->a:Lg2/m;

    iget-object v3, v3, Lg2/m;->g:Lg2/c;

    invoke-virtual {v1}, Lg2/h;->h()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {v2, v3}, Ls1/c;->b(Lcom/google/android/material/slider/h;F)F

    move-result v2

    iget-object v3, p0, Ls1/c;->l:Lg2/m;

    iget-object v3, v3, Lg2/m;->d:Lcom/google/android/material/slider/h;

    iget-object v4, v1, Lg2/h;->b:Lg2/g;

    iget-object v4, v4, Lg2/g;->a:Lg2/m;

    iget-object v4, v4, Lg2/m;->h:Lg2/c;

    invoke-virtual {v1}, Lg2/h;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v4, v1}, Lg2/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {v3, v1}, Ls1/c;->b(Lcom/google/android/material/slider/h;F)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final c()Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    iget-object v0, p0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    sget-object v0, Le2/a;->a:[I

    new-instance v0, Lg2/h;

    iget-object v1, p0, Ls1/c;->l:Lg2/m;

    invoke-direct {v0, v1}, Lg2/h;-><init>(Lg2/m;)V

    iput-object v0, p0, Ls1/c;->p:Lg2/h;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Ls1/c;->j:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Ls1/c;->p:Lg2/h;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    :cond_0
    iget-object v0, p0, Ls1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Ls1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ls1/c;->d:Lg2/h;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Ls1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_1
    iget-object v0, p0, Ls1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Ls1/b;
    .locals 8

    iget-object v0, p0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ls1/c;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ls1/c;->a()F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    invoke-virtual {p0}, Ls1/c;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ls1/c;->a()F

    move-result v3

    :cond_1
    add-float/2addr v0, v3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v6, v0

    move v7, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v6, v1

    move v7, v6

    :goto_1
    new-instance v0, Ls1/b;

    move-object v2, v0

    move-object v3, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v2 .. v7}, Ls1/b;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Ls1/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result p1

    iget-object v0, p0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object p1, p0, Ls1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    sget v0, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    iget-object v1, p0, Ls1/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    return-void
.end method

.method public final f(Lg2/m;)V
    .locals 2

    iput-object p1, p0, Ls1/c;->l:Lg2/m;

    iget-object v0, p0, Ls1/c;->c:Lg2/h;

    invoke-virtual {v0, p1}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    invoke-virtual {v0}, Lg2/h;->l()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lg2/h;->w:Z

    iget-object v0, p0, Ls1/c;->d:Lg2/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    :cond_0
    iget-object v0, p0, Ls1/c;->p:Lg2/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls1/c;->c:Lg2/h;

    invoke-virtual {v1}, Lg2/h;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 8

    iget-object v0, p0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls1/c;->c:Lg2/h;

    invoke-virtual {v1}, Lg2/h;->l()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Ls1/c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ls1/c;->a()F

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sget-wide v6, Ls1/c;->s:D

    sub-double/2addr v4, v6

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-float v1, v4

    :cond_4
    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Ls1/c;->b:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iget-object v1, v0, Landroidx/cardview/widget/CardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->f:Landroidx/appcompat/widget/d0;

    iget-object v1, v0, Landroidx/appcompat/widget/d0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/cardview/widget/CardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v3, v3, v3, v3}, Landroidx/appcompat/widget/d0;->h(IIII)V

    goto :goto_3

    :cond_5
    iget-object v1, v0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    check-cast v1, Li/a;

    iget v2, v1, Li/a;->e:F

    iget v1, v1, Li/a;->a:F

    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->b()Z

    move-result v3

    invoke-static {v2, v1, v3}, Li/b;->a(FFZ)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v0}, Landroidx/appcompat/widget/d0;->b()Z

    move-result v4

    invoke-static {v2, v1, v4}, Li/b;->b(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v1}, Landroidx/appcompat/widget/d0;->h(IIII)V

    :goto_3
    return-void
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Ls1/c;->q:Z

    iget-object v1, p0, Ls1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Ls1/c;->c:Lg2/h;

    invoke-virtual {p0, v0}, Ls1/c;->d(Landroid/graphics/drawable/Drawable;)Ls1/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Ls1/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Ls1/c;->d(Landroid/graphics/drawable/Drawable;)Ls1/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
