.class public final Lc2/a;
.super Ly1/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/t;


# static fields
.field public static final synthetic N:I


# instance fields
.field public final A:Lcom/google/android/material/internal/u;

.field public final B:Landroidx/appcompat/widget/b2;

.field public final C:Landroid/graphics/Rect;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:F

.field public K:F

.field public L:F

.field public M:F

.field public x:Ljava/lang/CharSequence;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Ly1/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lc2/a;->z:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Lcom/google/android/material/internal/u;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/u;-><init>(Lcom/google/android/material/internal/t;)V

    iput-object p2, p0, Lc2/a;->A:Lcom/google/android/material/internal/u;

    new-instance v0, Landroidx/appcompat/widget/b2;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/b2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lc2/a;->B:Landroidx/appcompat/widget/b2;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc2/a;->C:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc2/a;->J:F

    iput v0, p0, Lc2/a;->K:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lc2/a;->L:F

    iput v0, p0, Lc2/a;->M:F

    iput-object p1, p0, Lc2/a;->y:Landroid/content/Context;

    iget-object p0, p2, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/text/TextPaint;->density:F

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lc2/a;->w()F

    move-result v0

    iget v1, p0, Lc2/a;->H:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    iget v1, p0, Lc2/a;->H:I

    int-to-double v1, v1

    sub-double/2addr v3, v1

    neg-double v1, v3

    double-to-float v1, v1

    iget v2, p0, Lc2/a;->J:F

    iget v3, p0, Lc2/a;->K:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lc2/a;->L:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Ly1/h;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lc2/a;->x:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lc2/a;->A:Lcom/google/android/material/internal/u;

    iget-object v3, v2, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    iget-object v4, p0, Lc2/a;->z:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget v3, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, v2, Lcom/google/android/material/internal/u;->f:Lv1/g;

    iget-object v10, v2, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v10, Landroid/text/TextPaint;->drawableState:[I

    iget-object v3, v2, Lcom/google/android/material/internal/u;->f:Lv1/g;

    iget-object v2, v2, Lcom/google/android/material/internal/u;->b:Ll1/a;

    iget-object v4, p0, Lc2/a;->y:Landroid/content/Context;

    invoke-virtual {v3, v4, v10, v2}, Lv1/g;->e(Landroid/content/Context;Landroid/text/TextPaint;Lv1/h;)V

    iget v2, p0, Lc2/a;->M:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    iget-object v5, p0, Lc2/a;->x:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float v8, p0

    int-to-float v9, v1

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lc2/a;->A:Lcom/google/android/material/internal/u;

    iget-object v0, v0, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget p0, p0, Lc2/a;->F:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    iget v0, p0, Lc2/a;->D:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lc2/a;->x:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc2/a;->A:Lcom/google/android/material/internal/u;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/u;->a(Ljava/lang/String;)F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    iget p0, p0, Lc2/a;->E:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Ly1/h;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object p1, p0, Ly1/h;->a:Ly1/g;

    iget-object p1, p1, Ly1/g;->a:Ly1/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ly1/m;

    invoke-direct {v0, p1}, Ly1/m;-><init>(Ly1/n;)V

    invoke-virtual {p0}, Lc2/a;->x()Ly1/i;

    move-result-object p1

    iput-object p1, v0, Ly1/m;->k:Ly1/e;

    new-instance p1, Ly1/n;

    invoke-direct {p1, v0}, Ly1/n;-><init>(Ly1/m;)V

    invoke-virtual {p0, p1}, Ly1/h;->setShapeAppearanceModel(Ly1/n;)V

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Ly1/h;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public final w()F
    .locals 3

    iget-object v0, p0, Lc2/a;->C:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lc2/a;->I:I

    sub-int/2addr v1, v2

    iget v2, p0, Lc2/a;->G:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc2/a;->I:I

    sub-int/2addr v0, v1

    iget p0, p0, Lc2/a;->G:I

    sub-int/2addr v0, p0

    :goto_0
    int-to-float p0, v0

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lc2/a;->I:I

    sub-int/2addr v1, v2

    iget v2, p0, Lc2/a;->G:I

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc2/a;->I:I

    sub-int/2addr v0, v1

    iget p0, p0, Lc2/a;->G:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final x()Ly1/i;
    .locals 7

    invoke-virtual {p0}, Lc2/a;->w()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lc2/a;->H:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    sub-double/2addr v1, v5

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Ly1/i;

    new-instance v2, Ly1/f;

    iget p0, p0, Lc2/a;->H:I

    int-to-float p0, p0

    invoke-direct {v2, p0}, Ly1/f;-><init>(F)V

    invoke-direct {v1, v2, v0}, Ly1/i;-><init>(Ly1/f;F)V

    return-object v1
.end method
