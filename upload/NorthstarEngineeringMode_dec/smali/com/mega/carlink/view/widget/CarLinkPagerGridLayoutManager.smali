.class public Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:I

.field public j:I


# direct methods
.method public static c(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPageIndexByPos: pos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOnePageSize=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLinkPagerGridLayoutManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 p0, p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "computeScrollVectorForPosition next = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b()I
    .locals 2

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v0

    iget p0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    if-lez p0, :cond_3

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    div-int v1, p0, v0

    rem-int/2addr p0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v0

    iget p0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    if-lez p0, :cond_3

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    div-int v1, p0, v0

    rem-int/2addr p0, v0

    div-int/lit8 v0, v0, 0x2

    if-le p0, v0, :cond_3

    :goto_0
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public final canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final canScrollVertically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->d(I)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    const/4 p1, 0x1

    aget p0, p0, p1

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public final d(I)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-static {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v2

    mul-int/2addr v2, p1

    aput v2, v0, v3

    aput v3, v0, v4

    goto :goto_0

    :cond_0
    aput v3, v0, v3

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v2

    mul-int/2addr v2, p1

    aput v2, v0, v4

    :goto_0
    aget p1, v0, v3

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    sub-int/2addr p1, v2

    aput p1, v1, v3

    aget p1, v0, v4

    iget p0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    sub-int/2addr p1, p0

    aput p1, v1, v4

    return-object v1
.end method

.method public final e()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    rem-int/2addr p0, v1

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public final f()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public final getDecoratedLeft(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x6

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    add-int/lit16 p0, p0, -0x96

    :cond_0
    return p0
.end method

.method public final getDecoratedRight(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    add-int/lit16 p0, p0, 0x96

    :cond_0
    return p0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    iget v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v2

    iget v3, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v3

    iget v4, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->d:I

    add-int/2addr v3, v4

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e:I

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f:I

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    if-gez p2, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p0, 0x0

    if-eqz p3, :cond_3

    if-gtz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    throw p0

    :cond_3
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    throw p0
.end method

.method public final i(I)V
    .locals 4

    const-string/jumbo v0, "scrollToPage: pageIndex="

    const-string v1, " mLastPageCount="

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLinkPagerGridLayoutManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string p0, "RecyclerView Not Found!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    sub-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v0

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    sub-int/2addr v0, v2

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0, p1, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    return-void

    :cond_3
    :goto_1
    const-string/jumbo v0, "pageIndex = "

    const-string v2, " is out of bounds, mast in [0, "

    invoke-static {v0, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j(IZ)V
    .locals 4

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setPageIndex: mLastPageIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j:I

    const-string v2, " pageIndex="

    const-string v3, " isScrolling="

    invoke-static {v0, v1, v2, p1, v3}, La4/a;->o(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mChangeSelectInScrolling=false isAllowContinuousScroll=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLinkPagerGridLayoutManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j:I

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iput v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    invoke-virtual {p0, v1, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e()I

    move-result v0

    if-ltz v0, :cond_2

    iput v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    :cond_2
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v2, v1

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e:I

    iput v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f:I

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    if-le v0, v2, :cond_5

    iput v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f:I

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    if-le v0, v2, :cond_5

    iput v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLayoutChildren: itemCount="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarLinkPagerGridLayoutManager"

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c:I

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c:I

    :cond_6
    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->d:I

    if-gtz v0, :cond_7

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    move-result v0

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->d:I

    :cond_7
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g()I

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f()I

    invoke-virtual {p0, p1, p2, v3}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e()I

    move-result p1

    if-ltz p1, :cond_1

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    :cond_1
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    return-void
.end method

.method public final onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, v0, :cond_0

    if-lez p1, :cond_0

    move p2, v0

    :cond_0
    if-eq p4, v0, :cond_1

    if-lez p3, :cond_1

    move p4, v0

    :cond_1
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onScrollStateChanged(I)V
    .locals 2

    const-string/jumbo v0, "onScrollStateChanged newState="

    const-string v1, ", mScrollState="

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarLinkPagerGridLayoutManager"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->g:I

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    :cond_0
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->e:I

    if-le v1, v2, :cond_0

    sub-int p1, v2, v0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    rsub-int/lit8 p1, v0, 0x0

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a:I

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    neg-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    if-lez p1, :cond_2

    invoke-virtual {p0, p2, p3, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :goto_1
    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 3

    invoke-static {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scrollToPosition: position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pageIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CarLinkPagerGridLayoutManager"

    invoke-static {v1, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i(I)V

    return-void
.end method

.method public final scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    iget v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->f:I

    if-le v1, v2, :cond_0

    sub-int p1, v2, v0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    rsub-int/lit8 p1, v0, 0x0

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b:I

    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->j(IZ)V

    neg-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    if-lez p1, :cond_2

    invoke-virtual {p0, p2, p3, v1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :goto_1
    return p1
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    invoke-static {p3}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->c(I)I

    move-result p1

    const-string p2, "CarLinkPagerGridLayoutManager"

    if-ltz p1, :cond_4

    iget p3, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    if-lt p1, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p3, :cond_1

    const-string p0, "RecyclerView Not Found!"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    move-result p2

    sub-int p3, p1, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    const/4 v0, 0x3

    if-le p3, v0, :cond_3

    if-le p1, p2, :cond_2

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i(I)V

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i(I)V

    :cond_3
    :goto_0
    new-instance p1, Lcom/mega/carlink/view/widget/PagerGridSmoothScroller;

    iget-object p2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p2}, Lcom/mega/carlink/view/widget/PagerGridSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "pageIndex is outOfIndex, must in [0, "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->i:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
