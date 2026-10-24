.class public final Lb2/a;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "SourceFile"


# virtual methods
.method public final getItemDefaultMarginResId()I
    .locals 1

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_icon_margin:I

    return v0
.end method

.method public final getItemLayoutResId()I
    .locals 1

    sget v0, Lcom/google/android/material/R$layout;->mtrl_navigation_rail_item:I

    return v0
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
