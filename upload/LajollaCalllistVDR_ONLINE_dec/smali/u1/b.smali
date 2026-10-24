.class public final Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu1/a;

.field public final b:Landroid/view/View;

.field public final c:Landroid/graphics/Paint;

.field public d:Lu1/f;

.field public e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lu1/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/b;->a:Lu1/a;

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lu1/b;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lu1/b;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lu1/b;->d:Lu1/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lu1/f;->c:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    xor-int/2addr v0, v2

    iget-object v8, p0, Lu1/b;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lu1/b;->a:Lu1/a;

    iget-object v4, p0, Lu1/b;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-interface {v3, p1}, Lu1/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_4
    invoke-interface {v3, p1}, Lu1/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_5
    iget-object v0, p0, Lu1/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lu1/b;->d:Lu1/f;

    if-eqz v3, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lu1/b;->d:Lu1/f;

    iget v1, v1, Lu1/f;->a:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lu1/b;->d:Lu1/f;

    iget v2, v2, Lu1/f;->b:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lu1/b;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lu1/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final c()Lu1/f;
    .locals 5

    iget-object v0, p0, Lu1/b;->d:Lu1/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lu1/f;

    invoke-direct {v1, v0}, Lu1/f;-><init>(Lu1/f;)V

    iget v0, v1, Lu1/f;->c:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, v1, Lu1/f;->a:F

    iget v2, v1, Lu1/f;->b:F

    iget-object v3, p0, Lu1/b;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/material/slider/h;->V(FFFF)F

    move-result v0

    iput v0, v1, Lu1/f;->c:F

    :cond_2
    return-object v1
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lu1/b;->a:Lu1/a;

    invoke-interface {v0}, Lu1/a;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu1/b;->d:Lu1/f;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v0, Lu1/f;->c:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    xor-int/2addr v0, v2

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lu1/b;->e:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lu1/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lu1/b;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lu1/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(Lu1/f;)V
    .locals 5

    iget-object v0, p0, Lu1/b;->b:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lu1/b;->d:Lu1/f;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lu1/b;->d:Lu1/f;

    if-nez v1, :cond_1

    new-instance v1, Lu1/f;

    invoke-direct {v1, p1}, Lu1/f;-><init>(Lu1/f;)V

    iput-object v1, p0, Lu1/b;->d:Lu1/f;

    goto :goto_0

    :cond_1
    iget v2, p1, Lu1/f;->a:F

    iget v3, p1, Lu1/f;->b:F

    iget v4, p1, Lu1/f;->c:F

    iput v2, v1, Lu1/f;->a:F

    iput v3, v1, Lu1/f;->b:F

    iput v4, v1, Lu1/f;->c:F

    :goto_0
    iget v1, p1, Lu1/f;->c:F

    iget v2, p1, Lu1/f;->a:F

    iget p1, p1, Lu1/f;->b:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, p1, v3, v4}, Lcom/google/android/material/slider/h;->V(FFFF)F

    move-result p1

    const v2, 0x38d1b717    # 1.0E-4f

    add-float/2addr v1, v2

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lu1/b;->d:Lu1/f;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p1, Lu1/f;->c:F

    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
