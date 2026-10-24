.class public Lcom/mega/carsettings/ui/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/ui/SwipeLayout$c;,
        Lcom/mega/carsettings/ui/SwipeLayout$d;,
        Lcom/mega/carsettings/ui/SwipeLayout$e;,
        Lcom/mega/carsettings/ui/SwipeLayout$f;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public a:Lcom/mega/carsettings/ui/SwipeLayout$d;

.field public b:I

.field public c:Lcom/mega/carsettings/ui/SwipeLayout$e;

.field public d:Z

.field public e:Z

.field public f:F

.field public g:F

.field public h:Landroid/view/View$OnClickListener;

.field public i:Landroid/view/View$OnLongClickListener;

.field public j:Landroid/graphics/Rect;


# direct methods
.method private getAdapterView()Landroid/widget/AdapterView;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/AdapterView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentOffset()F
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->a:Lcom/mega/carsettings/ui/SwipeLayout$d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    const/4 p0, 0x0

    throw p0
.end method

.method private setCurrentDragEdge(Lcom/mega/carsettings/ui/SwipeLayout$d;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->a:Lcom/mega/carsettings/ui/SwipeLayout$d;

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->b()V

    return-void
.end method


# virtual methods
.method public final a(F)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "gravity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x0

    if-lez v0, :cond_6

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    and-int/lit8 v2, v0, 0x5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    and-int/lit8 v2, v0, 0x30

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3

    const/16 v2, 0x50

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    throw v1

    :cond_3
    throw v1

    :cond_4
    throw v1

    :cond_5
    throw v1

    :cond_6
    throw v1
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->a:Lcom/mega/carsettings/ui/SwipeLayout$d;

    sget-object v2, Lcom/mega/carsettings/ui/SwipeLayout$d;->c:Lcom/mega/carsettings/ui/SwipeLayout$d;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/mega/carsettings/ui/SwipeLayout$d;->r:Lcom/mega/carsettings/ui/SwipeLayout$d;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/ui/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getCurrentOffset()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/ui/SwipeLayout;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->c:Lcom/mega/carsettings/ui/SwipeLayout$e;

    sget-object v1, Lcom/mega/carsettings/ui/SwipeLayout$e;->r:Lcom/mega/carsettings/ui/SwipeLayout$e;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/mega/carsettings/ui/SwipeLayout$e;->c:Lcom/mega/carsettings/ui/SwipeLayout$e;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getOpenStatus()Lcom/mega/carsettings/ui/SwipeLayout$f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/mega/carsettings/ui/SwipeLayout$f;->x:Lcom/mega/carsettings/ui/SwipeLayout$f;

    if-ne v0, v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getSurfaceView()Landroid/view/View;

    throw v2

    :cond_7
    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getSurfaceView()Landroid/view/View;

    throw v2
.end method

.method public final computeScroll()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    const/4 p0, 0x0

    throw p0
.end method

.method public getBottomViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/mega/carsettings/ui/SwipeLayout$d;->values()[Lcom/mega/carsettings/ui/SwipeLayout$d;

    move-result-object v0

    array-length v1, v0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, v0, p0

    const/4 p0, 0x0

    throw p0
.end method

.method public getCurrentBottomView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->a:Lcom/mega/carsettings/ui/SwipeLayout$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->a:Lcom/mega/carsettings/ui/SwipeLayout$d;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragDistance()I
    .locals 0

    iget p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    return p0
.end method

.method public getDragEdge()Lcom/mega/carsettings/ui/SwipeLayout$d;
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->a:Lcom/mega/carsettings/ui/SwipeLayout$d;

    return-object p0
.end method

.method public getDragEdgeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/mega/carsettings/ui/SwipeLayout$d;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDragEdges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mega/carsettings/ui/SwipeLayout$d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 p0, 0x0

    throw p0
.end method

.method public getOpenStatus()Lcom/mega/carsettings/ui/SwipeLayout$f;
    .locals 4

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/mega/carsettings/ui/SwipeLayout$f;->x:Lcom/mega/carsettings/ui/SwipeLayout$f;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-ne v0, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v3, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    sub-int/2addr v1, v3

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v3, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    add-int/2addr v1, v3

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    add-int/2addr v1, p0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/mega/carsettings/ui/SwipeLayout$f;->c:Lcom/mega/carsettings/ui/SwipeLayout$f;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/mega/carsettings/ui/SwipeLayout$f;->r:Lcom/mega/carsettings/ui/SwipeLayout$f;

    return-object p0
.end method

.method public getShowMode()Lcom/mega/carsettings/ui/SwipeLayout$e;
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->c:Lcom/mega/carsettings/ui/SwipeLayout$e;

    return-object p0
.end method

.method public getSurfaceView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getWillOpenPercentAfterClose()F
    .locals 0

    iget p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->g:F

    return p0
.end method

.method public getWillOpenPercentAfterOpen()F
    .locals 0

    iget p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->f:F

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->h:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mega/carsettings/ui/SwipeLayout$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/ui/SwipeLayout$a;-><init>(Lcom/mega/carsettings/ui/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/ui/SwipeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->i:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mega/carsettings/ui/SwipeLayout$b;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/ui/SwipeLayout$b;-><init>(Lcom/mega/carsettings/ui/SwipeLayout;)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/ui/SwipeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->d:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getOpenStatus()Lcom/mega/carsettings/ui/SwipeLayout$f;

    move-result-object v0

    sget-object v1, Lcom/mega/carsettings/ui/SwipeLayout$f;->r:Lcom/mega/carsettings/ui/SwipeLayout$f;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->j:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->j:Landroid/graphics/Rect;

    :cond_1
    iget-object v1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->j:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/mega/carsettings/ui/SwipeLayout;->b()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mega/carsettings/ui/SwipeLayout;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 3

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    throw v0

    :cond_1
    return-void
.end method

.method public setBottomSwipeEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setClickToClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->e:Z

    return-void
.end method

.method public setDragDistance(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/ui/SwipeLayout;->a(F)I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDragEdge(Lcom/mega/carsettings/ui/SwipeLayout$d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public setDragEdges(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mega/carsettings/ui/SwipeLayout$d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public varargs setDragEdges([Lcom/mega/carsettings/ui/SwipeLayout$d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public setLeftSwipeEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleClickListener(Lcom/mega/carsettings/ui/SwipeLayout$c;)V
    .locals 0

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->i:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRightSwipeEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setShowMode(Lcom/mega/carsettings/ui/SwipeLayout$e;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->c:Lcom/mega/carsettings/ui/SwipeLayout$e;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->d:Z

    return-void
.end method

.method public setTopSwipeEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setWillOpenPercentAfterClose(F)V
    .locals 0

    iput p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->g:F

    return-void
.end method

.method public setWillOpenPercentAfterOpen(F)V
    .locals 0

    iput p1, p0, Lcom/mega/carsettings/ui/SwipeLayout;->f:F

    return-void
.end method
