.class Lcom/android/car/ui/recyclerview/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mClickActionThreshold:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollThumb:Landroid/view/View;

.field private mScrollTrackView:Landroid/view/View;

.field private mTouchDownY:F


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 39
    iput v0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mTouchDownY:F

    .line 48
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    .line 50
    sget p2, Lcom/android/car/ui/R$id;->car_ui_scrollbar_thumb:I

    invoke-static {p3, p2}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mClickActionThreshold:I

    return-void
.end method

.method private calculateScrollDistance(F)I
    .locals 5

    .line 112
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/FastScroller;->getVerticalRange()[I

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int/2addr v1, v0

    .line 115
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    if-nez v1, :cond_0

    return v2

    :cond_0
    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 122
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getVerticalRange()[I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 134
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 135
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    sub-int/2addr v2, p0

    const/4 p0, 0x1

    aput v2, v1, p0

    return-object v1
.end method

.method private isClick(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 101
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mClickActionThreshold:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private verticalScrollTo(F)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/FastScroller;->calculateScrollDistance(F)I

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method enable()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 89
    iget p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mTouchDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/car/ui/recyclerview/FastScroller;->isClick(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/FastScroller;->verticalScrollTo(F)V

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 92
    iput p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mTouchDownY:F

    goto :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollTrackView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mScrollThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mTouchDownY:F

    sub-float/2addr v1, v2

    add-float/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/FastScroller;->verticalScrollTo(F)V

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mTouchDownY:F

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    .line 65
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/car/ui/recyclerview/FastScroller;->mTouchDownY:F

    :goto_1
    return v0
.end method
