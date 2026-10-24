.class public Lcom/mega/carsettings/ui/FixedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/ui/FixedScrollView$b;,
        Lcom/mega/carsettings/ui/FixedScrollView$a;
    }
.end annotation


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public setOnDrawListener(Lcom/mega/carsettings/ui/FixedScrollView$a;)V
    .locals 0

    return-void
.end method

.method public setScrollViewListener(Lcom/mega/carsettings/ui/FixedScrollView$b;)V
    .locals 0

    return-void
.end method
