.class public final Landroidx/recyclerview/widget/c0;
.super Landroidx/recyclerview/widget/d0;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/s0;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/c0;->d:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/s0;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->I(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->u(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t0;

    iget-object v1, v1, Landroidx/recyclerview/widget/t0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t0;

    iget-object v1, v1, Landroidx/recyclerview/widget/t0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->B(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    sub-int/2addr v1, p1

    return v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {p1}, Landroidx/recyclerview/widget/s0;->K(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, v1, Landroidx/recyclerview/widget/s0;->n:I

    return v0

    :goto_0
    iget v0, v1, Landroidx/recyclerview/widget/s0;->o:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, v1, Landroidx/recyclerview/widget/s0;->n:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->E()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :goto_1
    iget v0, v1, Landroidx/recyclerview/widget/s0;->o:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->C()I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, v1, Landroidx/recyclerview/widget/s0;->l:I

    return v0

    :goto_0
    iget v0, v1, Landroidx/recyclerview/widget/s0;->m:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->D()I

    move-result v0

    return v0

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->F()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i()I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, v1, Landroidx/recyclerview/widget/s0;->n:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->D()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->E()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :goto_1
    iget v0, v1, Landroidx/recyclerview/widget/s0;->o:I

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->F()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s0;->C()I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Landroid/view/View;)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/s0;->L(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->right:I

    return p1

    :goto_0
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/s0;->L(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Landroid/view/View;)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/s0;->L(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->left:I

    return p1

    :goto_0
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/s0;->L(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->top:I

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(I)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/s0;->P(I)V

    return-void

    :goto_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/s0;->Q(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Landroid/view/View;)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/c0;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/s0;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t0;

    iget-object v1, v1, Landroidx/recyclerview/widget/t0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/t0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t0;

    iget-object v1, v1, Landroidx/recyclerview/widget/t0;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
