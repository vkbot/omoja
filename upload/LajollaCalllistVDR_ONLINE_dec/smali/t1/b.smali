.class public final Lt1/b;
.super Lj0/b;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0, p2}, Lj0/b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final n(FF)I
    .locals 2

    sget v0, Lcom/google/android/material/chip/Chip;->w:I

    iget-object v0, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/google/android/material/chip/Chip;->w:I

    iget-object v1, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/material/chip/Chip;->f:Lt1/d;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lt1/d;->L:Z

    if-eqz v2, :cond_0

    move v0, v3

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final s(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 p3, 0x10

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object p1, p2, Lcom/google/android/material/chip/Chip;->i:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, p3

    :cond_1
    iget-boolean p1, p2, Lcom/google/android/material/chip/Chip;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/google/android/material/chip/Chip;->r:Lt1/b;

    invoke-virtual {p1, p3, p3}, Lj0/b;->x(II)V

    :cond_2
    return v0
.end method

.method public final t(Lh0/c;)V
    .locals 3

    iget-object v0, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->f:Lt1/d;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lt1/d;->R:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lh0/c;->f(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final u(ILh0/c;)V
    .locals 7

    iget-object v0, p2, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$string;->mtrl_chip_close_icon_content_description:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v1, v3

    :cond_1
    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v1, Lh0/b;->g:Lh0/b;

    invoke-virtual {p2, v1}, Lh0/c;->b(Lh0/b;)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/google/android/material/chip/Chip;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public final v(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lt1/b;->q:Lcom/google/android/material/chip/Chip;

    iput-boolean p2, p1, Lcom/google/android/material/chip/Chip;->n:Z

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method
