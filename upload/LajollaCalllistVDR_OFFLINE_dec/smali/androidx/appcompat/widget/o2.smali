.class public final Landroidx/appcompat/widget/o2;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/appcompat/widget/o2;->a:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/o2;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->f(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :goto_0
    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->e(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 3

    iget p0, p0, Landroidx/appcompat/widget/o2;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sget-object v2, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sget-object v2, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :goto_0
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    sget-object v2, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Ljava/lang/Float;)V
    .locals 2

    iget p0, p0, Landroidx/appcompat/widget/o2;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sget-object v0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-static {p1, p0, p2, v0, v1}, Lh0/a0;->k(Landroid/view/View;IIII)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget-object p2, Lw0/x;->a:Landroidx/appcompat/widget/o2;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void

    :goto_0
    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/a0;->f(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-static {p1, p0, v0, p2, v1}, Lh0/a0;->k(Landroid/view/View;IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Lu1/g;Ljava/lang/Float;)V
    .locals 8

    iget p0, p0, Landroidx/appcompat/widget/o2;->a:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lu1/g;->i:F

    const p2, 0x45a8c000    # 5400.0f

    mul-float/2addr p2, p0

    float-to-int p2, p2

    iget-object v0, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v0, [F

    const/high16 v1, 0x44be0000    # 1520.0f

    mul-float/2addr p0, v1

    const/high16 v1, -0x3e600000    # -20.0f

    add-float/2addr v1, p0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    move p0, v2

    :goto_0
    iget-object v0, p1, Lu1/g;->f:Lp0/b;

    const/4 v3, 0x4

    if-ge p0, v3, :cond_0

    sget-object v3, Lu1/g;->l:[I

    aget v3, v3, p0

    sub-int v3, p2, v3

    int-to-float v3, v3

    const/16 v4, 0x29b

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v5, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v5, [F

    aget v6, v5, v1

    invoke-virtual {v0, v3}, Lp0/d;->getInterpolation(F)F

    move-result v3

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    aput v3, v5, v1

    sget-object v3, Lu1/g;->m:[I

    aget v3, v3, p0

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v4, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v4, [F

    aget v5, v4, v2

    invoke-virtual {v0, v3}, Lp0/d;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v7

    add-float/2addr v0, v5

    aput v0, v4, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p0, [F

    aget v4, p0, v2

    aget v5, p0, v1

    sub-float v6, v5, v4

    iget v7, p1, Lu1/g;->j:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    aput v6, p0, v2

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v6, v4

    aput v6, p0, v2

    div-float/2addr v5, v4

    aput v5, p0, v1

    move p0, v2

    :goto_1
    if-ge p0, v3, :cond_2

    sget-object v1, Lu1/g;->n:[I

    aget v1, v1, p0

    sub-int v1, p2, v1

    int-to-float v1, v1

    const/16 v4, 0x14d

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_1

    iget p2, p1, Lu1/g;->h:I

    add-int/2addr p0, p2

    iget-object p2, p1, Lu1/g;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v3, p2, Lu1/d;->c:[I

    array-length v4, v3

    rem-int/2addr p0, v4

    add-int/lit8 v4, p0, 0x1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget p0, v3, p0

    iget-object v3, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v3, Lu1/m;

    iget v3, v3, Lu1/k;->j:I

    invoke-static {p0, v3}, Ly1/l;->I(II)I

    move-result p0

    iget-object p2, p2, Lu1/d;->c:[I

    aget p2, p2, v4

    iget-object v3, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v3, Lu1/m;

    iget v3, v3, Lu1/k;->j:I

    invoke-static {p2, v3}, Ly1/l;->I(II)I

    move-result p2

    invoke-virtual {v0, v1}, Lp0/d;->getInterpolation(F)F

    move-result v0

    iget-object v1, p1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p0, p2}, Le1/c;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p0, Lu1/m;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lu1/g;->j:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lw0/e;Landroid/graphics/PointF;)V
    .locals 4

    iget p0, p0, Landroidx/appcompat/widget/o2;->a:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lw0/e;->a:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lw0/e;->b:I

    iget p2, p1, Lw0/e;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lw0/e;->f:I

    iget v1, p1, Lw0/e;->g:I

    if-ne p2, v1, :cond_0

    iget p2, p1, Lw0/e;->a:I

    iget v1, p1, Lw0/e;->c:I

    iget v2, p1, Lw0/e;->d:I

    iget-object v3, p1, Lw0/e;->e:Landroid/view/View;

    invoke-static {v3, p2, p0, v1, v2}, Lw0/x;->a(Landroid/view/View;IIII)V

    iput v0, p1, Lw0/e;->f:I

    iput v0, p1, Lw0/e;->g:I

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lw0/e;->c:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Lw0/e;->d:I

    iget p2, p1, Lw0/e;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lw0/e;->g:I

    iget v1, p1, Lw0/e;->f:I

    if-ne v1, p2, :cond_1

    iget p2, p1, Lw0/e;->a:I

    iget v1, p1, Lw0/e;->b:I

    iget v2, p1, Lw0/e;->c:I

    iget-object v3, p1, Lw0/e;->e:Landroid/view/View;

    invoke-static {v3, p2, v1, v2, p0}, Lw0/x;->a(Landroid/view/View;IIII)V

    iput v0, p1, Lw0/e;->f:I

    iput v0, p1, Lw0/e;->g:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/o2;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    check-cast p1, Lu1/o;

    iget p0, p1, Lu1/o;->i:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu1/k;

    invoke-virtual {p1}, Lu1/k;->b()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu1/g;

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget p0, p1, Lu1/g;->i:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    :goto_0
    iget p0, p1, Lu1/g;->j:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_4
    check-cast p1, Lu1/g;

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_5
    iget p0, p1, Lu1/g;->i:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_3

    :goto_2
    iget p0, p1, Lu1/g;->j:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_6
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Landroid/view/View;

    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lh0/b0;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/o2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Landroid/view/View;

    return-object v1

    :pswitch_d
    check-cast p1, Landroid/view/View;

    return-object v1

    :pswitch_e
    check-cast p1, Landroid/view/View;

    return-object v1

    :pswitch_f
    check-cast p1, Lw0/e;

    return-object v1

    :pswitch_10
    check-cast p1, Lw0/e;

    return-object v1

    :pswitch_11
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->z:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :goto_4
    check-cast p1, Lu1/q;

    iget p0, p1, Lu1/q;->j:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_5
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Landroidx/appcompat/widget/o2;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lu1/o;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lu1/o;->i:F

    const p2, 0x43a68000    # 333.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    iget-object p2, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p2, [F

    aput v4, p2, v3

    sub-int/2addr p0, v3

    int-to-float p0, p0

    const/16 v0, 0x29b

    int-to-float v0, v0

    div-float/2addr p0, v0

    iget-object v0, p1, Lu1/o;->e:Lp0/b;

    invoke-virtual {v0, p0}, Lp0/d;->getInterpolation(F)F

    move-result v4

    const/4 v5, 0x2

    aput v4, p2, v5

    const/4 v6, 0x1

    aput v4, p2, v6

    const p2, 0x3eff9dbf

    add-float/2addr p0, p2

    iget-object p2, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p2, [F

    invoke-virtual {v0, p0}, Lp0/d;->getInterpolation(F)F

    move-result p0

    aput p0, p2, v2

    const/4 v0, 0x3

    aput p0, p2, v0

    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p0, [F

    const/4 p2, 0x5

    aput v1, p0, p2

    iget-boolean p2, p1, Lu1/o;->h:Z

    if-eqz p2, :cond_0

    aget p0, p0, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast p0, [I

    aget p2, p0, v6

    aput p2, p0, v5

    aget p2, p0, v3

    aput p2, p0, v6

    iget-object p2, p1, Lu1/o;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object p2, p2, Lu1/d;->c:[I

    iget v0, p1, Lu1/o;->g:I

    aget p2, p2, v0

    iget-object v0, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v0, Lu1/m;

    iget v0, v0, Lu1/k;->j:I

    invoke-static {p2, v0}, Ly1/l;->I(II)I

    move-result p2

    aput p2, p0, v3

    iput-boolean v3, p1, Lu1/o;->h:Z

    :cond_0
    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p0, Lu1/m;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_1
    check-cast p1, Lu1/k;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget p2, p1, Lu1/k;->h:F

    cmpl-float p2, p2, p0

    if-eqz p2, :cond_1

    iput p0, p1, Lu1/k;->h:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Lu1/g;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->d(Lu1/g;Ljava/lang/Float;)V

    return-void

    :pswitch_3
    check-cast p1, Lu1/g;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->d(Lu1/g;Ljava/lang/Float;)V

    return-void

    :pswitch_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_5
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_6
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_7
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_8
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    sget-object p0, Lh0/q0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Lh0/b0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_9
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_a
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    :pswitch_b
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    :pswitch_c
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    :pswitch_d
    check-cast p1, Lw0/e;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->e(Lw0/e;Landroid/graphics/PointF;)V

    return-void

    :pswitch_e
    check-cast p1, Lw0/e;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/o2;->e(Lw0/e;Landroid/graphics/PointF;)V

    return-void

    :pswitch_f
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void

    :goto_0
    check-cast p1, Lu1/q;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lu1/q;->j:F

    const/high16 p2, 0x44e10000    # 1800.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    move p2, v3

    :goto_1
    if-ge p2, v2, :cond_2

    sget-object v0, Lu1/q;->m:[I

    aget v0, v0, p2

    sget-object v5, Lu1/q;->l:[I

    aget v5, v5, p2

    sub-int v0, p0, v0

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    iget-object v5, p1, Lu1/q;->f:[Landroid/view/animation/Interpolator;

    aget-object v5, v5, p2

    invoke-interface {v5, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v5, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v5, [F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p0, p1, Lu1/q;->i:Z

    if-eqz p0, :cond_3

    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast p0, [I

    iget-object p2, p1, Lu1/q;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object p2, p2, Lu1/d;->c:[I

    iget v0, p1, Lu1/q;->h:I

    aget p2, p2, v0

    iget-object v0, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v0, Lu1/m;

    iget v0, v0, Lu1/k;->j:I

    invoke-static {p2, v0}, Ly1/l;->I(II)I

    move-result p2

    invoke-static {p0, p2}, Ljava/util/Arrays;->fill([II)V

    iput-boolean v3, p1, Lu1/q;->i:Z

    :cond_3
    iget-object p0, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p0, Lu1/m;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
