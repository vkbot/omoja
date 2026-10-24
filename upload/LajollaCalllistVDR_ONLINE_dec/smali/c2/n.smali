.class public final Lc2/n;
.super Lc2/l;
.source "SourceFile"


# instance fields
.field public c:F

.field public d:F

.field public e:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 0

    invoke-direct {p0, p1}, Lc2/l;-><init>(Lc2/d;)V

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lc2/n;->c:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;F)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lc2/n;->c:F

    iget-object v1, p0, Lc2/l;->a:Lc2/d;

    move-object v2, v1

    check-cast v2, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v2, v2, Lc2/d;->a:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v6, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    move-object v3, v1

    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v3, v3, Lc2/d;->a:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v5

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v6

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, v1

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean v0, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->i:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v0, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {v0}, Lc2/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lc2/d;->e:I

    const/4 v7, 0x1

    if-eq v0, v7, :cond_2

    :cond_1
    iget-object v0, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {v0}, Lc2/k;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lc2/d;->f:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    :cond_2
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object v0, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {v0}, Lc2/k;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {v0}, Lc2/k;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lc2/d;->a:I

    int-to-float v0, v0

    sub-float v4, p2, v6

    mul-float/2addr v4, v0

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget v0, p0, Lc2/n;->c:F

    neg-float v3, v0

    div-float/2addr v3, v5

    neg-float v4, v2

    div-float/2addr v4, v5

    div-float/2addr v0, v5

    div-float/2addr v2, v5

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-object p1, v1

    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->a:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iput p1, p0, Lc2/n;->d:F

    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget p1, v1, Lc2/d;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iput p1, p0, Lc2/n;->e:F

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 4

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lc2/n;->c:F

    neg-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lc2/n;->e:F

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    mul-float/2addr v0, p4

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p4, Landroid/graphics/RectF;

    iget p5, p0, Lc2/n;->d:F

    neg-float v1, p5

    div-float/2addr v1, v2

    div-float/2addr p5, v2

    invoke-direct {p4, p3, v1, v0, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lc2/n;->e:F

    invoke-virtual {p1, p4, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Lc2/l;->a:Lc2/d;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lc2/d;->d:I

    iget-object v1, p0, Lc2/l;->b:Lc2/k;

    iget v1, v1, Lc2/k;->k:I

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lc2/n;->c:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lc2/n;->d:F

    neg-float v5, v4

    div-float/2addr v5, v3

    div-float/2addr v1, v3

    div-float/2addr v4, v3

    invoke-direct {v0, v2, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lc2/n;->e:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lc2/l;->a:Lc2/d;

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lc2/d;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
