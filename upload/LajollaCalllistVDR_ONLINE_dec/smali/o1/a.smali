.class public final Lo1/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/t;


# static fields
.field public static final r:I

.field public static final s:I


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Lg2/h;

.field public final d:Lcom/google/android/material/internal/u;

.field public final e:Landroid/graphics/Rect;

.field public f:F

.field public g:F

.field public h:F

.field public final i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:Ljava/lang/ref/WeakReference;

.field public q:Ljava/lang/ref/WeakReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Badge:I

    sput v0, Lo1/a;->r:I

    sget v0, Lcom/google/android/material/R$attr;->badgeStyle:I

    sput v0, Lo1/a;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo1/a;->b:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/google/android/material/internal/x;->b:[I

    const-string v2, "Theme.MaterialComponents"

    invoke-static {p1, v1, v2}, Lcom/google/android/material/internal/x;->c(Landroid/content/Context;[ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lo1/a;->e:Landroid/graphics/Rect;

    new-instance v2, Lg2/h;

    invoke-direct {v2}, Lg2/h;-><init>()V

    iput-object v2, p0, Lo1/a;->c:Lg2/h;

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lo1/a;->f:F

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lo1/a;->h:F

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_with_text_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lo1/a;->g:F

    new-instance v1, Lcom/google/android/material/internal/u;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/u;-><init>(Lcom/google/android/material/internal/t;)V

    iput-object v1, p0, Lo1/a;->d:Lcom/google/android/material/internal/u;

    iget-object v2, v1, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v2, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-direct {v2, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    sget p1, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ld2/g;

    invoke-direct {v3, v2, p1}, Ld2/g;-><init>(Landroid/content/Context;I)V

    iget-object p1, v1, Lcom/google/android/material/internal/u;->f:Ld2/g;

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3, p1}, Lcom/google/android/material/internal/u;->b(Ld2/g;Landroid/content/Context;)V

    invoke-virtual {p0}, Lo1/a;->j()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lo1/a;->e()I

    move-result v0

    iget v1, p0, Lo1/a;->l:I

    if-gt v0, v1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lo1/a;->e()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    sget v1, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_suffix:I

    iget v2, p0, Lo1/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "+"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v0

    iget-object v2, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    if-eqz v0, :cond_4

    iget v0, v2, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->h:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lo1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lo1/a;->e()I

    move-result v1

    iget v3, p0, Lo1/a;->l:I

    if-gt v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lo1/a;->e()I

    move-result v1

    invoke-virtual {p0}, Lo1/a;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    iget v2, v2, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->h:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    iget v2, v2, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->i:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, v2, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lo1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->d:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo1/a;->c:Lg2/h;

    invoke-virtual {v0, p1}, Lg2/h;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lo1/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo1/a;->d:Lcom/google/android/material/internal/u;

    iget-object v3, v2, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, p0, Lo1/a;->j:F

    iget v4, p0, Lo1/a;->k:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget-object v0, v2, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->e:I

    return v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v1, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->j:I

    if-eq v1, p1, :cond_1

    iput p1, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->j:I

    iget-object p1, p0, Lo1/a;->p:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo1/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lo1/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v0, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->d:I

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lo1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lo1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final h(I)V
    .locals 4

    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iget v1, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->f:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->f:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo1/a;->l:I

    iget-object p1, p0, Lo1/a;->d:Lcom/google/android/material/internal/u;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/material/internal/u;->d:Z

    invoke-virtual {p0}, Lo1/a;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final i(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo1/a;->p:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo1/a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lo1/a;->j()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 10

    iget-object v0, p0, Lo1/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lo1/a;->p:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_e

    if-nez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lo1/a;->e:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lo1/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_4
    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v2

    iget-object v6, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    if-eqz v2, :cond_5

    iget v2, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->o:I

    goto :goto_2

    :cond_5
    iget v2, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->m:I

    :goto_2
    iget v7, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->q:I

    add-int/2addr v2, v7

    iget v7, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->j:I

    const v8, 0x800053

    if-eq v7, v8, :cond_6

    const v9, 0x800055

    if-eq v7, v9, :cond_6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v2

    int-to-float v2, v7

    iput v2, p0, Lo1/a;->k:F

    goto :goto_3

    :cond_6
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    int-to-float v2, v7

    iput v2, p0, Lo1/a;->k:F

    :goto_3
    invoke-virtual {p0}, Lo1/a;->e()I

    move-result v2

    const/16 v7, 0x9

    if-gt v2, v7, :cond_8

    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lo1/a;->f:F

    goto :goto_4

    :cond_7
    iget v2, p0, Lo1/a;->g:F

    :goto_4
    iput v2, p0, Lo1/a;->m:F

    iput v2, p0, Lo1/a;->o:F

    iput v2, p0, Lo1/a;->n:F

    goto :goto_5

    :cond_8
    iget v2, p0, Lo1/a;->g:F

    iput v2, p0, Lo1/a;->m:F

    iput v2, p0, Lo1/a;->o:F

    invoke-virtual {p0}, Lo1/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lo1/a;->d:Lcom/google/android/material/internal/u;

    invoke-virtual {v7, v2}, Lcom/google/android/material/internal/u;->a(Ljava/lang/String;)F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    iget v7, p0, Lo1/a;->h:F

    add-float/2addr v2, v7

    iput v2, p0, Lo1/a;->n:F

    :goto_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    goto :goto_6

    :cond_9
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    :goto_6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lo1/a;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->n:I

    goto :goto_7

    :cond_a
    iget v2, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->l:I

    :goto_7
    iget v7, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->p:I

    add-int/2addr v2, v7

    iget v6, v6, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->j:I

    const v7, 0x800033

    if-eq v6, v7, :cond_c

    if-eq v6, v8, :cond_c

    sget-object v6, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_b

    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lo1/a;->n:F

    add-float/2addr v1, v5

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    goto :goto_8

    :cond_b
    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, p0, Lo1/a;->n:F

    sub-float/2addr v1, v5

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    :goto_8
    iput v1, p0, Lo1/a;->j:F

    goto :goto_a

    :cond_c
    sget-object v6, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lg0/b0;->d(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_d

    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v5, p0, Lo1/a;->n:F

    sub-float/2addr v1, v5

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    goto :goto_9

    :cond_d
    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v5, p0, Lo1/a;->n:F

    add-float/2addr v1, v5

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v2

    sub-float/2addr v1, v0

    :goto_9
    iput v1, p0, Lo1/a;->j:F

    :goto_a
    iget v0, p0, Lo1/a;->j:F

    iget v1, p0, Lo1/a;->k:F

    iget v2, p0, Lo1/a;->n:F

    iget v5, p0, Lo1/a;->o:F

    sub-float v6, v0, v2

    float-to-int v6, v6

    sub-float v7, v1, v5

    float-to-int v7, v7

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lo1/a;->m:F

    iget-object v1, p0, Lo1/a;->c:Lg2/h;

    iget-object v2, v1, Lg2/h;->b:Lg2/g;

    iget-object v2, v2, Lg2/g;->a:Lg2/m;

    invoke-virtual {v2, v0}, Lg2/m;->f(F)Lg2/m;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg2/h;->setShapeAppearanceModel(Lg2/m;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    :goto_b
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lo1/a;->i:Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    iput p1, v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;->d:I

    iget-object v0, p0, Lo1/a;->d:Lcom/google/android/material/internal/u;

    iget-object v0, v0, Lcom/google/android/material/internal/u;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
