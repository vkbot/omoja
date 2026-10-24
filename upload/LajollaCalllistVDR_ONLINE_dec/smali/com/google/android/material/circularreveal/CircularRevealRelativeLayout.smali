.class public Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lu1/g;


# instance fields
.field public final b:Lu1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lu1/b;

    invoke-direct {p1, p0}, Lu1/b;-><init>(Lu1/a;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lu1/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    iget-object v0, v0, Lu1/b;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0}, Lu1/b;->b()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lu1/f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0}, Lu1/b;->c()Lu1/f;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public final isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu1/b;->d()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0, p1}, Lu1/b;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0, p1}, Lu1/b;->f(I)V

    return-void
.end method

.method public setRevealInfo(Lu1/f;)V
    .locals 1
    .param p1    # Lu1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->b:Lu1/b;

    invoke-virtual {v0, p1}, Lu1/b;->g(Lu1/f;)V

    return-void
.end method
