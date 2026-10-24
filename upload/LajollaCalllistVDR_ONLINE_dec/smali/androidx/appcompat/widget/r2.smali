.class public final Landroidx/appcompat/widget/r2;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/appcompat/widget/r2;->a:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Ljava/lang/Float;
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/b0;->f(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_4
    sget-object v0, Lw0/y;->a:Lw0/c0;

    invoke-virtual {v0, p1}, Lw0/z;->m(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :goto_0
    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/b0;->e(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

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

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1, v0, p2, v1, v2}, Lw0/y;->a(Landroid/view/View;IIII)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lw0/y;->a(Landroid/view/View;IIII)V

    return-void

    :goto_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Lw0/y;->a(Landroid/view/View;IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;Ljava/lang/Float;)V
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sget-object v1, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/b0;->e(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Lg0/b0;->k(Landroid/view/View;IIII)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Lw0/y;->a:Lw0/c0;

    invoke-virtual {v0, p1, p2}, Lw0/z;->n(Landroid/view/View;F)V

    return-void

    :goto_0
    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/b0;->f(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {p1, v0, v1, p2, v2}, Lg0/b0;->k(Landroid/view/View;IIII)V

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

.method public final d(Lc2/g;Ljava/lang/Float;)V
    .locals 9

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lc2/g;->i:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget-object v1, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v1, [F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float/2addr p2, v2

    const/high16 v2, -0x3e600000    # -20.0f

    add-float/2addr v2, p2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    move p2, v3

    :goto_0
    iget-object v1, p1, Lc2/g;->f:Lo0/b;

    const/4 v4, 0x4

    if-ge p2, v4, :cond_0

    sget-object v4, Lc2/g;->l:[I

    aget v4, v4, p2

    sub-int v4, v0, v4

    int-to-float v4, v4

    const/16 v5, 0x29b

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v6, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v6, [F

    aget v7, v6, v2

    invoke-virtual {v1, v4}, Lo0/d;->getInterpolation(F)F

    move-result v4

    const/high16 v8, 0x437a0000    # 250.0f

    mul-float/2addr v4, v8

    add-float/2addr v4, v7

    aput v4, v6, v2

    sget-object v4, Lc2/g;->m:[I

    aget v4, v4, p2

    sub-int v4, v0, v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget-object v5, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v5, [F

    aget v6, v5, v3

    invoke-virtual {v1, v4}, Lo0/d;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v6

    aput v1, v5, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p2, [F

    aget v5, p2, v3

    aget v6, p2, v2

    sub-float v7, v6, v5

    iget v8, p1, Lc2/g;->j:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    aput v7, p2, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v7, v5

    aput v7, p2, v3

    div-float/2addr v6, v5

    aput v6, p2, v2

    move p2, v3

    :goto_1
    if-ge p2, v4, :cond_2

    sget-object v2, Lc2/g;->n:[I

    aget v2, v2, p2

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/16 v5, 0x14d

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_1

    iget v0, p1, Lc2/g;->h:I

    add-int/2addr p2, v0

    iget-object v0, p1, Lc2/g;->g:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v4, v0, Lc2/d;->c:[I

    array-length v5, v4

    rem-int/2addr p2, v5

    add-int/lit8 v5, p2, 0x1

    array-length v6, v4

    rem-int/2addr v5, v6

    aget p2, v4, p2

    iget-object v4, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v4, Lc2/m;

    iget v4, v4, Lc2/k;->k:I

    invoke-static {p2, v4}, Lcom/google/android/material/slider/h;->I(II)I

    move-result p2

    iget-object v0, v0, Lc2/d;->c:[I

    aget v0, v0, v5

    iget-object v4, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v4, Lc2/m;

    iget v4, v4, Lc2/k;->k:I

    invoke-static {v0, v4}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v0

    invoke-virtual {v1, v2}, Lo0/d;->getInterpolation(F)F

    move-result v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast v2, [I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lm1/c;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p1, Lc2/m;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lc2/g;->j:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lw0/e;Landroid/graphics/PointF;)V
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lw0/e;->a:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lw0/e;->b:I

    iget v0, p1, Lw0/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lw0/e;->f:I

    iget v2, p1, Lw0/e;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lw0/e;->a:I

    iget v2, p1, Lw0/e;->c:I

    iget v3, p1, Lw0/e;->d:I

    iget-object v4, p1, Lw0/e;->e:Landroid/view/View;

    invoke-static {v4, v0, p2, v2, v3}, Lw0/y;->a(Landroid/view/View;IIII)V

    iput v1, p1, Lw0/e;->f:I

    iput v1, p1, Lw0/e;->g:I

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lw0/e;->c:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lw0/e;->d:I

    iget v0, p1, Lw0/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lw0/e;->g:I

    iget v2, p1, Lw0/e;->f:I

    if-ne v2, v0, :cond_1

    iget v0, p1, Lw0/e;->a:I

    iget v2, p1, Lw0/e;->b:I

    iget v3, p1, Lw0/e;->c:I

    iget-object v4, p1, Lw0/e;->e:Landroid/view/View;

    invoke-static {v4, v0, v2, v3, p2}, Lw0/y;->a(Landroid/view/View;IIII)V

    iput v1, p1, Lw0/e;->f:I

    iput v1, p1, Lw0/e;->g:I

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

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    check-cast p1, Lc2/o;

    iget p1, p1, Lc2/o;->i:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lc2/k;

    invoke-virtual {p1}, Lc2/k;->b()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lc2/g;

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget p1, p1, Lc2/g;->i:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :goto_0
    iget p1, p1, Lc2/g;->j:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_4
    check-cast p1, Lc2/g;

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    :pswitch_5
    iget p1, p1, Lc2/g;->i:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_3

    :goto_2
    iget p1, p1, Lc2/g;->j:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_3
    return-object p1

    :pswitch_6
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Landroid/view/View;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lg0/c0;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_b
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/r2;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

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

    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->A:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :goto_4
    check-cast p1, Lc2/q;

    iget p1, p1, Lc2/q;->j:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

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
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/r2;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    check-cast p1, Lc2/o;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lc2/o;->i:F

    const v0, 0x43a68000    # 333.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v0, [F

    aput v4, v0, v3

    sub-int/2addr p2, v3

    int-to-float p2, p2

    const/16 v4, 0x29b

    int-to-float v4, v4

    div-float/2addr p2, v4

    iget-object v4, p1, Lc2/o;->e:Lo0/b;

    invoke-virtual {v4, p2}, Lo0/d;->getInterpolation(F)F

    move-result v5

    const/4 v6, 0x2

    aput v5, v0, v6

    const/4 v7, 0x1

    aput v5, v0, v7

    const v0, 0x3eff9dbf

    add-float/2addr p2, v0

    iget-object v0, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v4, p2}, Lo0/d;->getInterpolation(F)F

    move-result p2

    aput p2, v0, v2

    const/4 v2, 0x3

    aput p2, v0, v2

    iget-object p2, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast p2, [F

    const/4 v0, 0x5

    aput v1, p2, v0

    iget-boolean v0, p1, Lc2/o;->h:Z

    if-eqz v0, :cond_0

    aget p2, p2, v2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_0

    iget-object p2, p1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast p2, [I

    aget v0, p2, v7

    aput v0, p2, v6

    aget v0, p2, v3

    aput v0, p2, v7

    iget-object v0, p1, Lc2/o;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v0, v0, Lc2/d;->c:[I

    iget v1, p1, Lc2/o;->g:I

    aget v0, v0, v1

    iget-object v1, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v1, Lc2/m;

    iget v1, v1, Lc2/k;->k:I

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v0

    aput v0, p2, v3

    iput-boolean v3, p1, Lc2/o;->h:Z

    :cond_0
    iget-object p1, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p1, Lc2/m;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_1
    check-cast p1, Lc2/k;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p1, Lc2/k;->i:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    iput p2, p1, Lc2/k;->i:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Lc2/g;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->d(Lc2/g;Ljava/lang/Float;)V

    return-void

    :pswitch_3
    check-cast p1, Lc2/g;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->d(Lc2/g;Ljava/lang/Float;)V

    return-void

    :pswitch_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_5
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_6
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_7
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_8
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    sget-object v0, Lg0/s0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1, p2}, Lg0/c0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_9
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->c(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    :pswitch_a
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    :pswitch_b
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    :pswitch_c
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->b(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    :pswitch_d
    check-cast p1, Lw0/e;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->e(Lw0/e;Landroid/graphics/PointF;)V

    return-void

    :pswitch_e
    check-cast p1, Lw0/e;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/r2;->e(Lw0/e;Landroid/graphics/PointF;)V

    return-void

    :pswitch_f
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void

    :goto_0
    check-cast p1, Lc2/q;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lc2/q;->j:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    move v0, v3

    :goto_1
    if-ge v0, v2, :cond_2

    sget-object v5, Lc2/q;->m:[I

    aget v5, v5, v0

    sget-object v6, Lc2/q;->l:[I

    aget v6, v6, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p1, Lc2/q;->f:[Landroid/view/animation/Interpolator;

    aget-object v6, v6, v0

    invoke-interface {v6, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    iget-object v6, p1, Landroidx/appcompat/view/menu/e;->b:Ljava/lang/Object;

    check-cast v6, [F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p2, p1, Lc2/q;->i:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Landroidx/appcompat/view/menu/e;->c:Ljava/lang/Object;

    check-cast p2, [I

    iget-object v0, p1, Lc2/q;->g:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v0, v0, Lc2/d;->c:[I

    iget v1, p1, Lc2/q;->h:I

    aget v0, v0, v1

    iget-object v1, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast v1, Lc2/m;

    iget v1, v1, Lc2/k;->k:I

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->I(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    iput-boolean v3, p1, Lc2/q;->i:Z

    :cond_3
    iget-object p1, p1, Landroidx/appcompat/view/menu/e;->a:Ljava/lang/Object;

    check-cast p1, Lc2/m;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

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
