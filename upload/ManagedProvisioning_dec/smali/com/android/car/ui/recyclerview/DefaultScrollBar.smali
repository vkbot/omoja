.class Lcom/android/car/ui/recyclerview/DefaultScrollBar;
.super Ljava/lang/Object;
.source "DefaultScrollBar.java"

# interfaces
.implements Lcom/android/car/ui/recyclerview/ScrollBar;


# instance fields
.field private final mAdapterChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mButtonDisabledAlpha:F

.field private final mChildHeightByAdapterPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownButton:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mPageDownOnContinuousScrollListener:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

.field private mPageUpOnContinuousScrollListener:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

.field private final mPaginationInterpolator:Landroid/view/animation/Interpolator;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRecyclerViewOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollThumb:Landroid/view/View;

.field private mScrollTrack:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mScrollbarThumbMinHeight:I

.field private mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

.field private mUpButton:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerViewOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    .line 292
    new-instance v0, Lcom/android/car/ui/recyclerview/DefaultScrollBar$2;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar$2;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mAdapterChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->updatePaginationButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/ui/recyclerview/DefaultScrollBar;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->cacheChildrenHeight(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->clearCachedHeights()V

    return-void
.end method

.method private cacheChildrenHeight(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 329
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 330
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 331
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 332
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private calculateScrollThumbLength(II)I
    .locals 0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 246
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollbarThumbMinHeight:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private calculateScrollThumbOffset(III)I
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 266
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isDownEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 267
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p3

    int-to-float p0, p0

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p3

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private clearCachedHeights()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 322
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->cacheChildrenHeight(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private estimateNextPositionScrollUp(IILandroidx/recyclerview/widget/OrientationHelper;)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 343
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 345
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    neg-int p1, p2

    invoke-virtual {p0, p3, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->estimateNextPositionDiffForScrollDistance(Landroidx/recyclerview/widget/OrientationHelper;I)I

    move-result v1

    goto :goto_1

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mChildHeightByAdapterPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getFirstMostVisibleChild(Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 405
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 406
    invoke-static {v3, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->getPercentageVisible(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    cmpl-float v5, v4, v0

    if-lez v5, :cond_1

    move-object v1, v3

    move v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 361
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 363
    :cond_1
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object p0
.end method

.method private isDownEnabled()Z
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$8vQl6fixN4bSs-CT-YNHzqnXe1s(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->updatePaginationButtons()V

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->pageUp()V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->pageDown()V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$8vQl6fixN4bSs-CT-YNHzqnXe1s;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$8vQl6fixN4bSs-CT-YNHzqnXe1s;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private moveY(Landroid/view/View;F)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 277
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPaginationInterpolator:Landroid/view/animation/Interpolator;

    .line 278
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setDownEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageDownOnContinuousScrollListener:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-virtual {v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->cancelPendingScroll()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setParameters(III)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->calculateScrollThumbLength(II)I

    move-result p3

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->calculateScrollThumbOffset(III)I

    move-result p1

    .line 226
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 228
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, p3, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 229
    :cond_2
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 233
    :cond_3
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    int-to-float p1, p1

    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->moveY(Landroid/view/View;F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setUpEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageUpOnContinuousScrollListener:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-virtual {v0}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;->cancelPendingScroll()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updatePaginationButtons()V
    .locals 7

    .line 493
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isAtStart()Z

    move-result v0

    .line 494
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->isAtEnd()Z

    move-result v1

    .line 495
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    .line 498
    invoke-direct {p0, v3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setUpEnabled(Z)V

    xor-int/lit8 v3, v1, 0x1

    .line 499
    invoke-direct {p0, v3}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setDownEnabled(Z)V

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    if-nez v1, :cond_4

    :cond_0
    if-eqz v2, :cond_4

    .line 501
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 506
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/car/ui/R$dimen;->car_ui_touch_target_size:I

    .line 507
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 508
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 509
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 510
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    .line 512
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 513
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 514
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_2

    .line 518
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 520
    :cond_2
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 521
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 522
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_3

    .line 526
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 502
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-nez v2, :cond_5

    return-void

    .line 537
    :cond_5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 540
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 541
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    .line 538
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setParameters(III)V

    goto :goto_2

    .line 544
    :cond_6
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v0

    .line 545
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 546
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v2

    .line 543
    invoke-direct {p0, v0, v1, v2}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->setParameters(III)V

    .line 549
    :goto_2
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public adapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mAdapterChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mAdapterChangeObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public initialize(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 76
    sget v0, Lcom/android/car/ui/R$dimen;->car_ui_button_disabled_alpha:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->getFloat(Landroid/content/res/Resources;I)F

    move-result p2

    iput p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mButtonDisabledAlpha:F

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_min_thumb_height:I

    .line 78
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollbarThumbMinHeight:I

    .line 80
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerViewOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 83
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_page_up:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    .line 84
    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$ougX9W0-wDNQIsw8jl5lSk437JM;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$ougX9W0-wDNQIsw8jl5lSk437JM;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    .line 85
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageUpOnContinuousScrollListener:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    .line 88
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mUpButton:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_page_down:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    .line 92
    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$aefeBYoqe3QtKEgRWHADVIqkTDg;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$aefeBYoqe3QtKEgRWHADVIqkTDg;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    .line 93
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mPageDownOnContinuousScrollListener:Lcom/android/car/ui/recyclerview/OnContinuousScrollListener;

    .line 96
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mDownButton:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_track:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    .line 99
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    sget v0, Lcom/android/car/ui/R$id;->car_ui_scrollbar_thumb:I

    invoke-static {p2, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollThumb:Landroid/view/View;

    .line 101
    new-instance p2, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    .line 102
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 103
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 106
    new-instance p1, Lcom/android/car/ui/recyclerview/FastScroller;

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollTrack:Landroid/view/View;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/car/ui/recyclerview/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)V

    .line 107
    invoke-virtual {p1}, Lcom/android/car/ui/recyclerview/FastScroller;->enable()V

    .line 109
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    new-instance p2, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$MgGXBm2I-0F9RprZkrtHA57cGvc;

    invoke-direct {p2, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$DefaultScrollBar$MgGXBm2I-0F9RprZkrtHA57cGvc;-><init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method isAtEnd()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isAtEnd(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    return p0
.end method

.method isAtStart()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mSnapHelper:Lcom/android/car/ui/recyclerview/CarUiSnapHelper;

    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiSnapHelper;->isAtStart(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$initialize$0$DefaultScrollBar(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initialize$1$DefaultScrollBar(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initialize$2$DefaultScrollBar(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->lambda$initialize$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method pageDown()V
    .locals 10

    .line 428
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 429
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 433
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 434
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    .line 437
    invoke-direct {p0, v1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getFirstMostVisibleChild(Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 444
    invoke-virtual {v0, v3, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    .line 447
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 449
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    .line 450
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    .line 448
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    .line 455
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_5

    .line 456
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 460
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 461
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-gt v8, v9, :cond_2

    goto :goto_3

    .line 466
    :cond_2
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 467
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v9

    sub-int/2addr v8, v9

    if-gt v8, v2, :cond_4

    .line 469
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 470
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 471
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 472
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    goto :goto_2

    .line 474
    :cond_3
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 475
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    :goto_2
    sub-int v5, v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 481
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_6
    :goto_4
    return-void
.end method

.method pageUp()V
    .locals 6

    .line 375
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 376
    invoke-virtual {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 377
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    .line 386
    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->getFirstMostVisibleChild(Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 387
    iget-object v4, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 390
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    .line 391
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v5, v2

    .line 390
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v1, v2

    .line 389
    invoke-direct {p0, v4, v2, v0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->estimateNextPositionScrollUp(IILandroidx/recyclerview/widget/OrientationHelper;)I

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    neg-int v0, v1

    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 396
    :cond_2
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(II)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->mScrollView:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    .line 133
    invoke-virtual {v0, v1, p1, p0, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
