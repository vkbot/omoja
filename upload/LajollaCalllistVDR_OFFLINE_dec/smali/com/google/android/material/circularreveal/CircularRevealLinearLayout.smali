.class public Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lm1/g;


# instance fields
.field public final a:Lm1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lm1/b;

    invoke-direct {p1, p0}, Lm1/b;-><init>(Lm1/a;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lm1/b;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    iget-object p0, p0, Lm1/b;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCircularRevealScrimColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0}, Lm1/b;->b()I

    move-result p0

    return p0
.end method

.method public getRevealInfo()Lm1/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0}, Lm1/b;->c()Lm1/f;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public final isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm1/b;->d()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0, p1}, Lm1/b;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0, p1}, Lm1/b;->f(I)V

    return-void
.end method

.method public setRevealInfo(Lm1/f;)V
    .locals 0
    .param p1    # Lm1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealLinearLayout;->a:Lm1/b;

    invoke-virtual {p0, p1}, Lm1/b;->g(Lm1/f;)V

    return-void
.end method
