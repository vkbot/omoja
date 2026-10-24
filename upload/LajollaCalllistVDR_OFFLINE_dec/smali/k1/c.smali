.class public final Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:D


# instance fields
.field public final a:Lcom/google/android/material/card/MaterialCardView;

.field public final b:Landroid/graphics/Rect;

.field public final c:Ly1/h;

.field public final d:Ly1/h;

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Ly1/n;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/graphics/drawable/RippleDrawable;

.field public o:Landroid/graphics/drawable/LayerDrawable;

.field public p:Ly1/h;

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

    sput-wide v0, Lk1/c;->s:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V
    .locals 3

    sget v0, Lcom/google/android/material/card/MaterialCardView;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lk1/c;->b:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lk1/c;->q:Z

    iput-object p1, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    new-instance v1, Ly1/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, v0}, Ly1/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Ly1/h;->k(Landroid/content/Context;)V

    invoke-virtual {v1}, Ly1/h;->q()V

    iget-object v0, v1, Ly1/h;->a:Ly1/g;

    iget-object v0, v0, Ly1/g;->a:Ly1/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly1/m;

    invoke-direct {v1, v0}, Ly1/m;-><init>(Ly1/n;)V

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

    invoke-virtual {v1, p2}, Ly1/m;->c(F)V

    :cond_0
    new-instance p2, Ly1/h;

    invoke-direct {p2}, Ly1/h;-><init>()V

    iput-object p2, p0, Lk1/c;->d:Ly1/h;

    new-instance p2, Ly1/n;

    invoke-direct {p2, v1}, Ly1/n;-><init>(Ly1/m;)V

    invoke-virtual {p0, p2}, Lk1/c;->f(Ly1/n;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static b(Ly1/l;F)F
    .locals 4

    instance-of v0, p0, Ly1/k;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lk1/c;->s:D

    sub-double/2addr v0, v2

    float-to-double p0, p1

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0

    :cond_0
    instance-of p0, p0, Ly1/d;

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

    iget-object v0, p0, Lk1/c;->l:Ly1/n;

    iget-object v0, v0, Ly1/n;->a:Ly1/l;

    iget-object v1, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {v1}, Ly1/h;->j()F

    move-result v2

    invoke-static {v0, v2}, Lk1/c;->b(Ly1/l;F)F

    move-result v0

    iget-object v2, p0, Lk1/c;->l:Ly1/n;

    iget-object v2, v2, Ly1/n;->b:Ly1/l;

    iget-object v3, v1, Ly1/h;->a:Ly1/g;

    iget-object v3, v3, Ly1/g;->a:Ly1/n;

    iget-object v3, v3, Ly1/n;->f:Ly1/c;

    invoke-virtual {v1}, Ly1/h;->h()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {v2, v3}, Lk1/c;->b(Ly1/l;F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lk1/c;->l:Ly1/n;

    iget-object v2, v2, Ly1/n;->c:Ly1/l;

    iget-object v3, v1, Ly1/h;->a:Ly1/g;

    iget-object v3, v3, Ly1/g;->a:Ly1/n;

    iget-object v3, v3, Ly1/n;->g:Ly1/c;

    invoke-virtual {v1}, Ly1/h;->h()Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v4}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {v2, v3}, Lk1/c;->b(Ly1/l;F)F

    move-result v2

    iget-object p0, p0, Lk1/c;->l:Ly1/n;

    iget-object p0, p0, Ly1/n;->d:Ly1/l;

    iget-object v3, v1, Ly1/h;->a:Ly1/g;

    iget-object v3, v3, Ly1/g;->a:Ly1/n;

    iget-object v3, v3, Ly1/n;->h:Ly1/c;

    invoke-virtual {v1}, Ly1/h;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v3, v1}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {p0, v1}, Lk1/c;->b(Ly1/l;F)F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final c()Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    iget-object v0, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    if-nez v0, :cond_0

    new-instance v0, Ly1/h;

    iget-object v1, p0, Lk1/c;->l:Ly1/n;

    invoke-direct {v0, v1}, Ly1/h;-><init>(Ly1/n;)V

    iput-object v0, p0, Lk1/c;->p:Ly1/h;

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lk1/c;->j:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lk1/c;->p:Ly1/h;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    :cond_0
    iget-object v0, p0, Lk1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lk1/c;->n:Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lk1/c;->d:Ly1/h;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lk1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    :cond_1
    iget-object p0, p0, Lk1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    return-object p0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)Lk1/b;
    .locals 8

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

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    invoke-virtual {p0}, Lk1/c;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lk1/c;->a()F

    move-result v3

    :cond_1
    add-float/2addr v0, v3

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    move v6, p0

    move v7, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v6, v1

    move v7, v6

    :goto_1
    new-instance p0, Lk1/b;

    move-object v2, p0

    move-object v3, p1

    move v4, v6

    move v5, v7

    invoke-direct/range {v2 .. v7}, Lk1/b;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p0
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lk1/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object p1, p0, Lk1/c;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_2

    sget v0, Lcom/google/android/material/R$id;->mtrl_card_checked_layer_id:I

    iget-object p0, p0, Lk1/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    return-void
.end method

.method public final f(Ly1/n;)V
    .locals 2

    iput-object p1, p0, Lk1/c;->l:Ly1/n;

    iget-object v0, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {v0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    invoke-virtual {v0}, Ly1/h;->l()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Ly1/h;->v:Z

    iget-object v0, p0, Lk1/c;->d:Ly1/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    :cond_0
    iget-object p0, p0, Lk1/c;->p:Ly1/h;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    :cond_1
    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {p0}, Ly1/h;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h()V
    .locals 8

    iget-object v0, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {v1}, Ly1/h;->l()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lk1/c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lk1/c;->a()F

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

    sget-wide v6, Lk1/c;->s:D

    sub-double/2addr v4, v6

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getCardViewRadius()F

    move-result v1

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-float v1, v4

    :cond_4
    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget-object p0, p0, Lk1/c;->b:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget-object v1, v0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v5, p0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, v0, Landroidx/cardview/widget/CardView;->e:Landroidx/appcompat/widget/d0;

    iget-object v0, p0, Landroidx/appcompat/widget/d0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3, v3, v3, v3}, Landroidx/appcompat/widget/d0;->i(IIII)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/d0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    check-cast v0, Lj/a;

    iget v1, v0, Lj/a;->e:F

    iget v0, v0, Lj/a;->a:F

    invoke-virtual {p0}, Landroidx/appcompat/widget/d0;->c()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lj/b;->a(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/d0;->c()Z

    move-result v3

    invoke-static {v1, v0, v3}, Lj/b;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v2, v0, v2, v0}, Landroidx/appcompat/widget/d0;->i(IIII)V

    :goto_3
    return-void
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Lk1/c;->q:Z

    iget-object v1, p0, Lk1/c;->a:Lcom/google/android/material/card/MaterialCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk1/c;->c:Ly1/h;

    invoke-virtual {p0, v0}, Lk1/c;->d(Landroid/graphics/drawable/Drawable;)Lk1/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lk1/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lk1/c;->d(Landroid/graphics/drawable/Drawable;)Lk1/b;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
