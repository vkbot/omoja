.class public Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "findTargetSnapPosition, pos = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    instance-of v0, p1, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;

    invoke-virtual {p1, p0}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->d(I)[I

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .locals 0

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/mega/carlink/view/widget/PagerGridSmoothScroller;

    iget-object p0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0}, Lcom/mega/carlink/view/widget/PagerGridSmoothScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p1
.end method

.method public final findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of p0, p1, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    check-cast p1, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->b()I

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "findTargetSnapPosition, velocityX = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", velocityY"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    instance-of p0, p1, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->canScrollHorizontally()Z

    move-result p0

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-le p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a()V

    goto :goto_0

    :cond_0
    if-ge p2, v0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_3

    if-le p3, v1, :cond_2

    invoke-virtual {p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridLayoutManager;->a()V

    goto :goto_0

    :cond_2
    if-ge p3, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "findTargetSnapPosition, target = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    return v2
.end method

.method public final onFling(II)Z
    .locals 4

    iget-object v0, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_3

    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final snapFromFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/carlink/view/widget/CarLinkPagerGridSnapHelper;->findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    const/4 p0, 0x1

    return p0
.end method
