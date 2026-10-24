.class public final Lcom/google/android/material/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ld2/b;

.field public B:Ld2/b;

.field public C:Ljava/lang/CharSequence;

.field public D:Ljava/lang/CharSequence;

.field public E:Z

.field public F:Z

.field public G:Landroid/graphics/Bitmap;

.field public H:F

.field public I:F

.field public J:[I

.field public K:Z

.field public final L:Landroid/text/TextPaint;

.field public final M:Landroid/text/TextPaint;

.field public N:Landroid/animation/TimeInterpolator;

.field public O:Landroid/animation/TimeInterpolator;

.field public P:F

.field public Q:F

.field public R:F

.field public S:Landroid/content/res/ColorStateList;

.field public T:F

.field public U:F

.field public V:F

.field public W:Landroid/content/res/ColorStateList;

.field public X:F

.field public Y:F

.field public Z:Landroid/text/StaticLayout;

.field public final a:Landroid/view/View;

.field public a0:F

.field public b:Z

.field public b0:F

.field public c:F

.field public c0:F

.field public d:Z

.field public d0:F

.field public e:F

.field public e0:Ljava/lang/CharSequence;

.field public f:F

.field public f0:I

.field public g:I

.field public g0:F

.field public final h:Landroid/graphics/Rect;

.field public h0:F

.field public final i:Landroid/graphics/Rect;

.field public i0:I

.field public final j:Landroid/graphics/RectF;

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Landroid/content/res/ColorStateList;

.field public p:Landroid/content/res/ColorStateList;

.field public q:I

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/material/internal/c;->k:I

    iput v0, p0, Lcom/google/android/material/internal/c;->l:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/material/internal/c;->m:F

    iput v0, p0, Lcom/google/android/material/internal/c;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/c;->F:Z

    iput v0, p0, Lcom/google/android/material/internal/c;->f0:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/internal/c;->g0:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/material/internal/c;->h0:F

    iput v0, p0, Lcom/google/android/material/internal/c;->i0:I

    iput-object p1, p0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/c;->L:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/google/android/material/internal/c;->M:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/c;->h:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/c;->j:Landroid/graphics/RectF;

    iget p1, p0, Lcom/google/android/material/internal/c;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v1, p1, v0, p1}, Landroidx/activity/b;->a(FFFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/c;->f:F

    return-void
.end method

.method public static a(IFI)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    add-float/2addr p2, p0

    float-to-int p0, v2

    float-to-int p1, v3

    float-to-int v0, v4

    float-to-int p2, p2

    invoke-static {p0, p1, v0, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static g(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    sget-object p3, Lm1/a;->a:Landroid/view/animation/LinearInterpolator;

    invoke-static {p1, p0, p2, p0}, Landroidx/activity/b;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 2

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    invoke-static {v0}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/c;->F:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Le0/i;->d:Le0/h;

    goto :goto_1

    :cond_1
    sget-object v0, Le0/i;->c:Le0/h;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Le0/g;->c(Ljava/lang/CharSequence;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final c(FZ)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/internal/c;->C:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/c;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/internal/c;->n:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    iget p1, p0, Lcom/google/android/material/internal/c;->n:F

    iput v6, p0, Lcom/google/android/material/internal/c;->H:F

    iget-object p2, p0, Lcom/google/android/material/internal/c;->z:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    if-eq p2, v1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/internal/c;->z:Landroid/graphics/Typeface;

    move v7, v4

    goto :goto_6

    :cond_2
    move v7, v5

    goto :goto_6

    :cond_3
    iget v2, p0, Lcom/google/android/material/internal/c;->m:F

    iget-object v7, p0, Lcom/google/android/material/internal/c;->z:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/google/android/material/internal/c;->y:Landroid/graphics/Typeface;

    if-eq v7, v8, :cond_4

    iput-object v8, p0, Lcom/google/android/material/internal/c;->z:Landroid/graphics/Typeface;

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    sub-float v8, p1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v3, v8, v3

    if-gez v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    if-eqz v3, :cond_6

    iput v6, p0, Lcom/google/android/material/internal/c;->H:F

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/google/android/material/internal/c;->m:F

    div-float/2addr p1, v3

    iput p1, p0, Lcom/google/android/material/internal/c;->H:F

    :goto_3
    iget p1, p0, Lcom/google/android/material/internal/c;->n:F

    iget v3, p0, Lcom/google/android/material/internal/c;->m:F

    div-float/2addr p1, v3

    mul-float v3, v1, p1

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    cmpl-float p2, v3, v0

    if-lez p2, :cond_8

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v1

    :goto_5
    move p1, v2

    :goto_6
    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_b

    iget p2, p0, Lcom/google/android/material/internal/c;->I:F

    cmpl-float p2, p2, p1

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/google/android/material/internal/c;->K:Z

    if-nez p2, :cond_a

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    move v7, v5

    goto :goto_8

    :cond_a
    :goto_7
    move v7, v4

    :goto_8
    iput p1, p0, Lcom/google/android/material/internal/c;->I:F

    iput-boolean v5, p0, Lcom/google/android/material/internal/c;->K:Z

    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/c;->D:Ljava/lang/CharSequence;

    if-eqz p1, :cond_c

    if-eqz v7, :cond_11

    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/c;->L:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/c;->I:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/google/android/material/internal/c;->z:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p2, p0, Lcom/google/android/material/internal/c;->H:F

    cmpl-float p2, p2, v6

    if-eqz p2, :cond_d

    move p2, v4

    goto :goto_9

    :cond_d
    move p2, v5

    :goto_9
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLinearText(Z)V

    iget-object p2, p0, Lcom/google/android/material/internal/c;->C:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/c;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/internal/c;->E:Z

    iget v1, p0, Lcom/google/android/material/internal/c;->f0:I

    if-le v1, v4, :cond_f

    if-eqz p2, :cond_e

    iget-boolean v2, p0, Lcom/google/android/material/internal/c;->d:Z

    if-eqz v2, :cond_f

    :cond_e
    move v2, v4

    goto :goto_a

    :cond_f
    move v2, v5

    :goto_a
    if-eqz v2, :cond_10

    move v4, v1

    :cond_10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/material/internal/c;->C:Ljava/lang/CharSequence;

    float-to-int v0, v0

    new-instance v2, Lcom/google/android/material/internal/s;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/android/material/internal/s;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, v2, Lcom/google/android/material/internal/s;->l:Landroid/text/TextUtils$TruncateAt;

    iput-boolean p2, v2, Lcom/google/android/material/internal/s;->k:Z

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, v2, Lcom/google/android/material/internal/s;->e:Landroid/text/Layout$Alignment;

    iput-boolean v5, v2, Lcom/google/android/material/internal/s;->j:Z

    iput v4, v2, Lcom/google/android/material/internal/s;->f:I

    iget p1, p0, Lcom/google/android/material/internal/c;->g0:F

    iget p2, p0, Lcom/google/android/material/internal/c;->h0:F

    iput p1, v2, Lcom/google/android/material/internal/s;->g:F

    iput p2, v2, Lcom/google/android/material/internal/s;->h:F

    iget p1, p0, Lcom/google/android/material/internal/c;->i0:I

    iput p1, v2, Lcom/google/android/material/internal/s;->i:I

    invoke-virtual {v2}, Lcom/google/android/material/internal/s;->a()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CollapsingTextHelper"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/c;->D:Ljava/lang/CharSequence;

    :cond_11
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/c;->D:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/material/internal/c;->b:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/material/internal/c;->f0:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    :goto_0
    iget v4, p0, Lcom/google/android/material/internal/c;->v:F

    add-float/2addr v4, v1

    iget v1, p0, Lcom/google/android/material/internal/c;->d0:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    sub-float/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/material/internal/c;->L:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/material/internal/c;->I:F

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v5, p0, Lcom/google/android/material/internal/c;->v:F

    iget v6, p0, Lcom/google/android/material/internal/c;->w:F

    iget v7, p0, Lcom/google/android/material/internal/c;->H:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/google/android/material/internal/c;->d:Z

    if-nez v8, :cond_1

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget v7, p0, Lcom/google/android/material/internal/c;->f0:I

    if-le v7, v3, :cond_2

    iget-boolean v7, p0, Lcom/google/android/material/internal/c;->E:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/google/android/material/internal/c;->d:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :cond_3
    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/material/internal/c;->d:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/android/material/internal/c;->c:F

    iget v7, p0, Lcom/google/android/material/internal/c;->f:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, p0, Lcom/google/android/material/internal/c;->c0:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/google/android/material/internal/c;->b0:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    iget-object v6, p0, Lcom/google/android/material/internal/c;->e0:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    int-to-float v4, v4

    move-object v5, p1

    move v10, v4

    move-object v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-boolean v5, p0, Lcom/google/android/material/internal/c;->d:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/material/internal/c;->e0:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u2026"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v6, v5

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    move v10, v4

    move-object v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    return-void
.end method

.method public final e()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/c;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/c;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/google/android/material/internal/c;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, p0, Lcom/google/android/material/internal/c;->X:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public final f(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/c;->J:[I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/c;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/c;->b:Z

    return-void
.end method

.method public final i(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz v1, :cond_1b

    :cond_1
    iget v3, v0, Lcom/google/android/material/internal/c;->I:F

    iget v4, v0, Lcom/google/android/material/internal/c;->n:F

    invoke-virtual {v0, v4, v1}, Lcom/google/android/material/internal/c;->c(FZ)V

    iget-object v4, v0, Lcom/google/android/material/internal/c;->D:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/material/internal/c;->L:Landroid/text/TextPaint;

    if-eqz v4, :cond_2

    iget-object v6, v0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/internal/c;->e0:Ljava/lang/CharSequence;

    :cond_2
    iget-object v4, v0, Lcom/google/android/material/internal/c;->e0:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iget v8, v0, Lcom/google/android/material/internal/c;->X:F

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    iget-object v8, v0, Lcom/google/android/material/internal/c;->e0:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v4, v8, v6, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/internal/c;->a0:F

    goto :goto_0

    :cond_3
    iput v7, v0, Lcom/google/android/material/internal/c;->a0:F

    :goto_0
    iget v4, v0, Lcom/google/android/material/internal/c;->l:I

    iget-boolean v8, v0, Lcom/google/android/material/internal/c;->E:Z

    invoke-static {v4, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v8, v4, 0x70

    iget-object v9, v0, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    const/16 v10, 0x50

    const/16 v11, 0x30

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_4

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v8, v13

    div-float/2addr v8, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v8

    iput v13, v0, Lcom/google/android/material/internal/c;->s:F

    goto :goto_1

    :cond_4
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    add-float/2addr v13, v8

    iput v13, v0, Lcom/google/android/material/internal/c;->s:F

    goto :goto_1

    :cond_5
    iget v8, v9, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iput v8, v0, Lcom/google/android/material/internal/c;->s:F

    :goto_1
    const v8, 0x800007

    and-int/2addr v4, v8

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-eq v4, v14, :cond_7

    if-eq v4, v13, :cond_6

    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iput v4, v0, Lcom/google/android/material/internal/c;->u:F

    goto :goto_2

    :cond_6
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v15, v0, Lcom/google/android/material/internal/c;->a0:F

    sub-float/2addr v4, v15

    iput v4, v0, Lcom/google/android/material/internal/c;->u:F

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v15, v0, Lcom/google/android/material/internal/c;->a0:F

    div-float/2addr v15, v12

    sub-float/2addr v4, v15

    iput v4, v0, Lcom/google/android/material/internal/c;->u:F

    :goto_2
    iget v4, v0, Lcom/google/android/material/internal/c;->m:F

    invoke-virtual {v0, v4, v1}, Lcom/google/android/material/internal/c;->c(FZ)V

    iget-object v1, v0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_8
    move v1, v7

    :goto_3
    iget-object v4, v0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    goto :goto_4

    :cond_9
    move v4, v6

    :goto_4
    iput v4, v0, Lcom/google/android/material/internal/c;->q:I

    iget-object v4, v0, Lcom/google/android/material/internal/c;->D:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v5, v4, v6, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_5

    :cond_a
    move v4, v7

    :goto_5
    iget-object v15, v0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    if-eqz v15, :cond_b

    iget v7, v0, Lcom/google/android/material/internal/c;->f0:I

    if-le v7, v14, :cond_b

    invoke-virtual {v15}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    :cond_b
    iget-object v7, v0, Lcom/google/android/material/internal/c;->Z:Landroid/text/StaticLayout;

    if-eqz v7, :cond_d

    iget v15, v0, Lcom/google/android/material/internal/c;->f0:I

    if-le v15, v14, :cond_c

    invoke-virtual {v7, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    int-to-float v7, v7

    goto :goto_6

    :cond_c
    invoke-virtual {v7, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    goto :goto_6

    :cond_d
    const/4 v7, 0x0

    :goto_6
    iput v7, v0, Lcom/google/android/material/internal/c;->d0:F

    iget v7, v0, Lcom/google/android/material/internal/c;->k:I

    iget-boolean v15, v0, Lcom/google/android/material/internal/c;->E:Z

    invoke-static {v7, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v15, v7, 0x70

    iget-object v6, v0, Lcom/google/android/material/internal/c;->h:Landroid/graphics/Rect;

    if-eq v15, v11, :cond_f

    if-eq v15, v10, :cond_e

    div-float/2addr v1, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v1

    iput v10, v0, Lcom/google/android/material/internal/c;->r:F

    goto :goto_7

    :cond_e
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v10

    iput v1, v0, Lcom/google/android/material/internal/c;->r:F

    goto :goto_7

    :cond_f
    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Lcom/google/android/material/internal/c;->r:F

    :goto_7
    and-int v1, v7, v8

    if-eq v1, v14, :cond_11

    if-eq v1, v13, :cond_10

    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Lcom/google/android/material/internal/c;->t:F

    goto :goto_8

    :cond_10
    iget v1, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/internal/c;->t:F

    goto :goto_8

    :cond_11
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v12

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/internal/c;->t:F

    :goto_8
    iget-object v1, v0, Lcom/google/android/material/internal/c;->G:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, v0, Lcom/google/android/material/internal/c;->G:Landroid/graphics/Bitmap;

    :cond_12
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/c;->o(F)V

    iget v1, v0, Lcom/google/android/material/internal/c;->c:F

    iget-boolean v3, v0, Lcom/google/android/material/internal/c;->d:Z

    iget-object v7, v0, Lcom/google/android/material/internal/c;->j:Landroid/graphics/RectF;

    if-eqz v3, :cond_14

    iget v3, v0, Lcom/google/android/material/internal/c;->f:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_13

    move-object v9, v6

    :cond_13
    invoke-virtual {v7, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_14
    iget v3, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v8, v9, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v10, v0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v8, v1, v10}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/google/android/material/internal/c;->r:F

    iget v8, v0, Lcom/google/android/material/internal/c;->s:F

    iget-object v10, v0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v8, v1, v10}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->top:F

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v8, v9, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v10, v0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v8, v1, v10}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->right:F

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget-object v8, v0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v6, v1, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    :goto_9
    iget-boolean v3, v0, Lcom/google/android/material/internal/c;->d:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_16

    iget v3, v0, Lcom/google/android/material/internal/c;->f:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_15

    iget v3, v0, Lcom/google/android/material/internal/c;->t:F

    iput v3, v0, Lcom/google/android/material/internal/c;->v:F

    iget v3, v0, Lcom/google/android/material/internal/c;->r:F

    iput v3, v0, Lcom/google/android/material/internal/c;->w:F

    iget v3, v0, Lcom/google/android/material/internal/c;->m:F

    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/c;->o(F)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_15
    iget v3, v0, Lcom/google/android/material/internal/c;->u:F

    iput v3, v0, Lcom/google/android/material/internal/c;->v:F

    iget v3, v0, Lcom/google/android/material/internal/c;->s:F

    iget v7, v0, Lcom/google/android/material/internal/c;->g:I

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v3, v7

    iput v3, v0, Lcom/google/android/material/internal/c;->w:F

    iget v3, v0, Lcom/google/android/material/internal/c;->n:F

    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/c;->o(F)V

    move v3, v6

    goto :goto_a

    :cond_16
    iget v3, v0, Lcom/google/android/material/internal/c;->t:F

    iget v7, v0, Lcom/google/android/material/internal/c;->u:F

    iget-object v8, v0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v1, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v0, Lcom/google/android/material/internal/c;->v:F

    iget v3, v0, Lcom/google/android/material/internal/c;->r:F

    iget v7, v0, Lcom/google/android/material/internal/c;->s:F

    iget-object v8, v0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v1, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iput v3, v0, Lcom/google/android/material/internal/c;->w:F

    iget v3, v0, Lcom/google/android/material/internal/c;->m:F

    iget v7, v0, Lcom/google/android/material/internal/c;->n:F

    iget-object v8, v0, Lcom/google/android/material/internal/c;->O:Landroid/animation/TimeInterpolator;

    invoke-static {v3, v7, v1, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/c;->o(F)V

    move v3, v1

    :goto_a
    sub-float v7, v6, v1

    sget-object v8, Lm1/a;->b:Lo0/b;

    const/4 v9, 0x0

    invoke-static {v9, v6, v7, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    sub-float v7, v6, v7

    iput v7, v0, Lcom/google/android/material/internal/c;->b0:F

    sget-object v7, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lg0/a0;->k(Landroid/view/View;)V

    invoke-static {v6, v9, v1, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    iput v7, v0, Lcom/google/android/material/internal/c;->c0:F

    invoke-static {v2}, Lg0/a0;->k(Landroid/view/View;)V

    iget-object v7, v0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    iget-object v9, v0, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    if-eq v7, v9, :cond_17

    invoke-virtual {v0, v9}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v7

    iget-object v9, v0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v9}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v9

    invoke-static {v7, v3, v9}, Lcom/google/android/material/internal/c;->a(IFI)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_17
    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_b
    iget v3, v0, Lcom/google/android/material/internal/c;->X:F

    iget v7, v0, Lcom/google/android/material/internal/c;->Y:F

    cmpl-float v9, v3, v7

    if-eqz v9, :cond_18

    invoke-static {v7, v3, v1, v8}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_c

    :cond_18
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :goto_c
    iget v3, v0, Lcom/google/android/material/internal/c;->T:F

    iget v7, v0, Lcom/google/android/material/internal/c;->P:F

    invoke-static {v3, v7, v1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v7, v0, Lcom/google/android/material/internal/c;->U:F

    iget v8, v0, Lcom/google/android/material/internal/c;->Q:F

    invoke-static {v7, v8, v1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    iget v8, v0, Lcom/google/android/material/internal/c;->V:F

    iget v9, v0, Lcom/google/android/material/internal/c;->R:F

    invoke-static {v8, v9, v1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget-object v8, v0, Lcom/google/android/material/internal/c;->W:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/material/internal/c;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v9}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v9

    invoke-static {v8, v1, v9}, Lcom/google/android/material/internal/c;->a(IFI)I

    move-result v8

    invoke-virtual {v5, v3, v7, v4, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-boolean v3, v0, Lcom/google/android/material/internal/c;->d:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    iget v4, v0, Lcom/google/android/material/internal/c;->f:F

    cmpg-float v7, v1, v4

    if-gtz v7, :cond_19

    iget v7, v0, Lcom/google/android/material/internal/c;->e:F

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v4, v1}, Lm1/a;->a(FFFFF)F

    move-result v1

    goto :goto_d

    :cond_19
    const/4 v8, 0x0

    invoke-static {v8, v6, v4, v6, v1}, Lm1/a;->a(FFFFF)F

    move-result v1

    :goto_d
    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1a
    invoke-static {v2}, Lg0/a0;->k(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method public final j(I)V
    .locals 5

    new-instance v0, Ld2/g;

    iget-object v1, p0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ld2/g;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Ld2/g;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Ld2/g;->k:F

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    iput p1, p0, Lcom/google/android/material/internal/c;->n:F

    :cond_1
    iget-object p1, v0, Ld2/g;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/internal/c;->S:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Ld2/g;->e:F

    iput p1, p0, Lcom/google/android/material/internal/c;->Q:F

    iget p1, v0, Ld2/g;->f:F

    iput p1, p0, Lcom/google/android/material/internal/c;->R:F

    iget p1, v0, Ld2/g;->g:F

    iput p1, p0, Lcom/google/android/material/internal/c;->P:F

    iget p1, v0, Ld2/g;->i:F

    iput p1, p0, Lcom/google/android/material/internal/c;->X:F

    iget-object p1, p0, Lcom/google/android/material/internal/c;->B:Ld2/b;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p1, Ld2/b;->c:Z

    :cond_3
    new-instance p1, Ld2/b;

    new-instance v2, Lcom/google/android/material/internal/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/internal/b;-><init>(Lcom/google/android/material/internal/c;I)V

    invoke-virtual {v0}, Ld2/g;->a()V

    iget-object v4, v0, Ld2/g;->n:Landroid/graphics/Typeface;

    invoke-direct {p1, v2, v4}, Ld2/b;-><init>(Lcom/google/android/material/internal/b;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/c;->B:Ld2/b;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/c;->B:Ld2/b;

    invoke-virtual {v0, p1, v1}, Ld2/g;->c(Landroid/content/Context;Ld2/h;)V

    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/c;->i(Z)V

    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/c;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/c;->l:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/c;->i(Z)V

    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 4

    new-instance v0, Ld2/g;

    iget-object v1, p0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ld2/g;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Ld2/g;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Ld2/g;->k:F

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    iput p1, p0, Lcom/google/android/material/internal/c;->m:F

    :cond_1
    iget-object p1, v0, Ld2/g;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/internal/c;->W:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Ld2/g;->e:F

    iput p1, p0, Lcom/google/android/material/internal/c;->U:F

    iget p1, v0, Ld2/g;->f:F

    iput p1, p0, Lcom/google/android/material/internal/c;->V:F

    iget p1, v0, Ld2/g;->g:F

    iput p1, p0, Lcom/google/android/material/internal/c;->T:F

    iget p1, v0, Ld2/g;->i:F

    iput p1, p0, Lcom/google/android/material/internal/c;->Y:F

    iget-object p1, p0, Lcom/google/android/material/internal/c;->A:Ld2/b;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iput-boolean v2, p1, Ld2/b;->c:Z

    :cond_3
    new-instance p1, Ld2/b;

    new-instance v3, Lcom/google/android/material/internal/b;

    invoke-direct {v3, p0, v2}, Lcom/google/android/material/internal/b;-><init>(Lcom/google/android/material/internal/c;I)V

    invoke-virtual {v0}, Ld2/g;->a()V

    iget-object v2, v0, Ld2/g;->n:Landroid/graphics/Typeface;

    invoke-direct {p1, v3, v2}, Ld2/b;-><init>(Lcom/google/android/material/internal/b;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/c;->A:Ld2/b;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/c;->A:Ld2/b;

    invoke-virtual {v0, p1, v1}, Ld2/g;->c(Landroid/content/Context;Ld2/h;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/c;->i(Z)V

    return-void
.end method

.method public final n(F)V
    .locals 9

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/internal/c;->c:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_a

    iput p1, p0, Lcom/google/android/material/internal/c;->c:F

    iget-boolean v1, p0, Lcom/google/android/material/internal/c;->d:Z

    iget-object v3, p0, Lcom/google/android/material/internal/c;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/internal/c;->i:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/material/internal/c;->h:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/google/android/material/internal/c;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    move-object v4, v5

    :cond_2
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v6, p1, v7}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/internal/c;->r:F

    iget v6, p0, Lcom/google/android/material/internal/c;->s:F

    iget-object v7, p0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v6, p1, v7}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v3, Landroid/graphics/RectF;->top:F

    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v6, p1, v7}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v3, Landroid/graphics/RectF;->right:F

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v4, p1, v5}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/internal/c;->d:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/material/internal/c;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    iget v1, p0, Lcom/google/android/material/internal/c;->t:F

    iput v1, p0, Lcom/google/android/material/internal/c;->v:F

    iget v1, p0, Lcom/google/android/material/internal/c;->r:F

    iput v1, p0, Lcom/google/android/material/internal/c;->w:F

    iget v1, p0, Lcom/google/android/material/internal/c;->m:F

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->o(F)V

    move v1, v0

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/google/android/material/internal/c;->u:F

    iput v1, p0, Lcom/google/android/material/internal/c;->v:F

    iget v1, p0, Lcom/google/android/material/internal/c;->s:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/internal/c;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/material/internal/c;->w:F

    iget v1, p0, Lcom/google/android/material/internal/c;->n:F

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->o(F)V

    move v1, v2

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/google/android/material/internal/c;->t:F

    iget v3, p0, Lcom/google/android/material/internal/c;->u:F

    iget-object v4, p0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/c;->v:F

    iget v1, p0, Lcom/google/android/material/internal/c;->r:F

    iget v3, p0, Lcom/google/android/material/internal/c;->s:F

    iget-object v4, p0, Lcom/google/android/material/internal/c;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/internal/c;->w:F

    iget v1, p0, Lcom/google/android/material/internal/c;->m:F

    iget v3, p0, Lcom/google/android/material/internal/c;->n:F

    iget-object v4, p0, Lcom/google/android/material/internal/c;->O:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v3, p1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->o(F)V

    move v1, p1

    :goto_2
    sub-float v3, v2, p1

    sget-object v4, Lm1/a;->b:Lo0/b;

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/google/android/material/internal/c;->b0:F

    sget-object v3, Lg0/s0;->a:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    invoke-static {v3}, Lg0/a0;->k(Landroid/view/View;)V

    invoke-static {v2, v0, p1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    iput v5, p0, Lcom/google/android/material/internal/c;->c0:F

    invoke-static {v3}, Lg0/a0;->k(Landroid/view/View;)V

    iget-object v5, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    iget-object v7, p0, Lcom/google/android/material/internal/c;->L:Landroid/text/TextPaint;

    if-eq v5, v6, :cond_6

    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/google/android/material/internal/c;->a(IFI)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget v1, p0, Lcom/google/android/material/internal/c;->X:F

    iget v5, p0, Lcom/google/android/material/internal/c;->Y:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_7

    invoke-static {v5, v1, p1, v4}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_4

    :cond_7
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :goto_4
    iget v1, p0, Lcom/google/android/material/internal/c;->T:F

    iget v4, p0, Lcom/google/android/material/internal/c;->P:F

    const/4 v5, 0x0

    invoke-static {v1, v4, p1, v5}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v4, p0, Lcom/google/android/material/internal/c;->U:F

    iget v6, p0, Lcom/google/android/material/internal/c;->Q:F

    invoke-static {v4, v6, p1, v5}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget v6, p0, Lcom/google/android/material/internal/c;->V:F

    iget v8, p0, Lcom/google/android/material/internal/c;->R:F

    invoke-static {v6, v8, p1, v5}, Lcom/google/android/material/internal/c;->g(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/internal/c;->W:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v6

    iget-object v8, p0, Lcom/google/android/material/internal/c;->S:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v8}, Lcom/google/android/material/internal/c;->f(Landroid/content/res/ColorStateList;)I

    move-result v8

    invoke-static {v6, p1, v8}, Lcom/google/android/material/internal/c;->a(IFI)I

    move-result v6

    invoke-virtual {v7, v1, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-boolean v1, p0, Lcom/google/android/material/internal/c;->d:Z

    if-eqz v1, :cond_9

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget v4, p0, Lcom/google/android/material/internal/c;->f:F

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_8

    iget v5, p0, Lcom/google/android/material/internal/c;->e:F

    invoke-static {v2, v0, v5, v4, p1}, Lm1/a;->a(FFFFF)F

    move-result p1

    goto :goto_5

    :cond_8
    invoke-static {v0, v2, v4, v2, p1}, Lm1/a;->a(FFFFF)F

    move-result p1

    :goto_5
    int-to-float v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    invoke-static {v3}, Lg0/a0;->k(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public final o(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/c;->c(FZ)V

    sget-object p1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    iget-object p1, p0, Lcom/google/android/material/internal/c;->a:Landroid/view/View;

    invoke-static {p1}, Lg0/a0;->k(Landroid/view/View;)V

    return-void
.end method

.method public final p([I)Z
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/internal/c;->J:[I

    iget-object p1, p0, Lcom/google/android/material/internal/c;->p:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/c;->o:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/c;->i(Z)V

    return v0

    :cond_3
    return v1
.end method
