.class public final Lc2/e;
.super Lc2/l;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 0

    invoke-direct {p0, p1}, Lc2/l;-><init>(Lc2/d;)V

    const/4 p1, 0x1

    iput p1, p0, Lc2/e;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;F)V
    .locals 5

    iget-object v0, p0, Lc2/l;->a:Lc2/d;

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v3, v1

    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->i:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lc2/e;->c:I

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->a:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iput p1, p0, Lc2/e;->d:F

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iput p1, p0, Lc2/e;->e:F

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v3, Lc2/d;->a:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, p0, Lc2/e;->f:F

    iget-object p1, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {p1}, Lc2/k;->d()Z

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->e:I

    if-eq p1, v4, :cond_2

    :cond_1
    iget-object p1, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {p1}, Lc2/k;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->f:I

    if-ne p1, v1, :cond_3

    :cond_2
    iget p1, p0, Lc2/e;->f:F

    sub-float/2addr v3, p2

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p2, v0, Lc2/d;->a:I

    int-to-float p2, p2

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    add-float/2addr v3, p1

    iput v3, p0, Lc2/e;->f:F

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {p1}, Lc2/k;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->e:I

    if-eq p1, v1, :cond_5

    :cond_4
    iget-object p1, p0, Lc2/l;->b:Lc2/k;

    invoke-virtual {p1}, Lc2/k;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lc2/d;->f:I

    if-ne p1, v4, :cond_6

    :cond_5
    iget p1, p0, Lc2/e;->f:F

    sub-float/2addr v3, p2

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p2, v0, Lc2/d;->a:I

    int-to-float p2, p2

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    sub-float/2addr p1, v3

    iput p1, p0, Lc2/e;->f:F

    :cond_6
    :goto_1
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 8

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget p5, p0, Lc2/e;->d:F

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p5, 0x43b40000    # 360.0f

    mul-float v0, p3, p5

    iget v1, p0, Lc2/e;->c:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    cmpl-float v2, p4, p3

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p4, v2

    :goto_0
    sub-float/2addr p4, p3

    mul-float/2addr p4, p5

    mul-float/2addr p4, v1

    new-instance v3, Landroid/graphics/RectF;

    iget p3, p0, Lc2/e;->f:F

    neg-float v1, p3

    invoke-direct {v3, v1, v1, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v0

    move v5, p4

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget p3, p0, Lc2/e;->e:F

    const/4 v1, 0x0

    cmpl-float p3, p3, v1

    if-lez p3, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, p5

    if-gez p3, :cond_2

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p3, p0, Lc2/e;->d:F

    iget p5, p0, Lc2/e;->e:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lc2/e;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p3, v3

    sub-float v4, v2, p3

    add-float/2addr v2, p3

    neg-float p3, p5

    invoke-direct {v1, v4, p5, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget p3, p0, Lc2/e;->d:F

    iget p5, p0, Lc2/e;->e:F

    add-float/2addr v0, p4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    new-instance p4, Landroid/graphics/RectF;

    iget v0, p0, Lc2/e;->f:F

    div-float/2addr p3, v3

    sub-float v1, v0, p3

    add-float/2addr v0, p3

    neg-float p3, p5

    invoke-direct {p4, v1, p5, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, p4, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lc2/l;->a:Lc2/d;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lc2/d;->d:I

    iget-object v1, p0, Lc2/l;->b:Lc2/k;

    iget v1, v1, Lc2/k;->k:I

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lc2/e;->d:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v2, Landroid/graphics/RectF;

    iget v0, p0, Lc2/e;->f:F

    neg-float v1, v0

    neg-float v3, v0

    invoke-direct {v2, v1, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lc2/l;->a:Lc2/d;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lc2/l;->a:Lc2/d;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->g:I

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->h:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method
