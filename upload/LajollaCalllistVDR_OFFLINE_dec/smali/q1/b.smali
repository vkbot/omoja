.class public final Lq1/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Ly1/p;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/RectF;

.field public final g:Lx0/c;

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Ly1/n;

.field public p:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Ly1/n;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Ly1/o;->a:Ly1/p;

    iput-object v0, p0, Lq1/b;->a:Ly1/p;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lq1/b;->c:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lq1/b;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lq1/b;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lq1/b;->f:Landroid/graphics/RectF;

    new-instance v0, Lx0/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lx0/c;-><init>(Lq1/b;I)V

    iput-object v0, p0, Lq1/b;->g:Lx0/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/b;->n:Z

    iput-object p1, p0, Lq1/b;->o:Ly1/n;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lq1/b;->b:Landroid/graphics/Paint;

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-boolean v0, p0, Lq1/b;->n:Z

    iget-object v1, p0, Lq1/b;->b:Landroid/graphics/Paint;

    iget-object v2, p0, Lq1/b;->d:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lq1/b;->h:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x6

    new-array v9, v3, [I

    iget v4, p0, Lq1/b;->i:I

    iget v5, p0, Lq1/b;->m:I

    invoke-static {v4, v5}, Lz/a;->b(II)I

    move-result v4

    const/4 v12, 0x0

    aput v4, v9, v12

    iget v4, p0, Lq1/b;->j:I

    iget v5, p0, Lq1/b;->m:I

    invoke-static {v4, v5}, Lz/a;->b(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v9, v5

    iget v4, p0, Lq1/b;->j:I

    invoke-static {v4, v12}, Lz/a;->c(II)I

    move-result v4

    iget v6, p0, Lq1/b;->m:I

    invoke-static {v4, v6}, Lz/a;->b(II)I

    move-result v4

    const/4 v6, 0x2

    aput v4, v9, v6

    iget v4, p0, Lq1/b;->l:I

    invoke-static {v4, v12}, Lz/a;->c(II)I

    move-result v4

    iget v7, p0, Lq1/b;->m:I

    invoke-static {v4, v7}, Lz/a;->b(II)I

    move-result v4

    const/4 v7, 0x3

    aput v4, v9, v7

    iget v4, p0, Lq1/b;->l:I

    iget v8, p0, Lq1/b;->m:I

    invoke-static {v4, v8}, Lz/a;->b(II)I

    move-result v4

    const/4 v8, 0x4

    aput v4, v9, v8

    iget v4, p0, Lq1/b;->k:I

    iget v10, p0, Lq1/b;->m:I

    invoke-static {v4, v10}, Lz/a;->b(II)I

    move-result v4

    const/4 v10, 0x5

    aput v4, v9, v10

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v12

    aput v0, v3, v5

    const/high16 v4, 0x3f000000    # 0.5f

    aput v4, v3, v6

    aput v4, v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v0

    aput v0, v3, v8

    aput v4, v3, v10

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v4

    const/4 v7, 0x0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v4

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    move-object v10, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-boolean v12, p0, Lq1/b;->n:Z

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lq1/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lq1/b;->o:Ly1/n;

    iget-object v2, v2, Ly1/n;->e:Ly1/c;

    iget-object v5, p0, Lq1/b;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-interface {v2, v5}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lq1/b;->o:Ly1/n;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5}, Ly1/n;->e(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v4, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1, v4, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lq1/b;->g:Lx0/c;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 1

    iget p0, p0, Lq1/b;->h:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 7

    iget-object v0, p0, Lq1/b;->o:Ly1/n;

    iget-object v1, p0, Lq1/b;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ly1/n;->e(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq1/b;->o:Ly1/n;

    iget-object v0, v0, Ly1/n;->e:Ly1/c;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lq1/b;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lq1/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lq1/b;->o:Ly1/n;

    iget-object v0, p0, Lq1/b;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lq1/b;->a:Ly1/p;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Ly1/p;->a(Ly1/n;FLandroid/graphics/RectF;Landroidx/fragment/app/n;Landroid/graphics/Path;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lq1/b;->o:Ly1/n;

    iget-object v1, p0, Lq1/b;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ly1/n;->e(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lq1/b;->h:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Lq1/b;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1/b;->n:Z

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lq1/b;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v1, p0, Lq1/b;->m:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Lq1/b;->m:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/b;->n:Z

    iput p1, p0, Lq1/b;->m:I

    :cond_0
    iget-boolean p1, p0, Lq1/b;->n:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    iget-boolean p0, p0, Lq1/b;->n:Z

    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lq1/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lq1/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
