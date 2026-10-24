.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "SourceFile"


# instance fields
.field public final h:I

.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->navigationRailStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget v4, Lcom/google/android/material/R$style;->Widget_MaterialComponents_NavigationRailView:I

    .line 4
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 6
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->h:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    sget-object v2, Lcom/google/android/material/R$styleable;->NavigationRailView:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/x;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/x2;

    move-result-object p2

    .line 10
    sget p3, Lcom/google/android/material/R$styleable;->NavigationRailView_headerLayout:I

    invoke-virtual {p2, p3, v6}, Landroidx/appcompat/widget/x2;->i(II)I

    move-result p3

    const/16 v0, 0x31

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 12
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    .line 15
    :cond_0
    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    .line 16
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 19
    invoke-virtual {p0, p3, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 20
    :cond_1
    sget p1, Lcom/google/android/material/R$styleable;->NavigationRailView_menuGravity:I

    .line 21
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/x2;->h(II)I

    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    .line 23
    sget p1, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/x2;->l(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    sget p1, Lcom/google/android/material/R$styleable;->NavigationRailView_itemMinHeight:I

    const/4 p3, -0x1

    .line 25
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/x2;->d(II)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setItemMinimumHeight(I)V

    .line 27
    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/widget/x2;->n()V

    .line 28
    new-instance p1, Landroidx/fragment/app/n;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Landroidx/fragment/app/n;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/c0;->a(Landroid/view/View;Lcom/google/android/material/internal/b0;)V

    return-void
.end method

.method private getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/e0;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .locals 1

    new-instance v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-direct {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    return-object v0
.end method

.method public getItemMinimumHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/e0;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getItemMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getMenuGravity()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->getMenuGravity()I

    move-result v0

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 p5, 0x8

    if-eq p2, p5, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    iget p5, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->h:I

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    if-ge p3, p2, :cond_3

    sub-int p4, p2, p3

    goto :goto_2

    :cond_1
    iget-object p2, p1, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->G:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 p2, p2, 0x70

    const/16 v0, 0x30

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move p3, p4

    :goto_1
    if-eqz p3, :cond_3

    move p4, p5

    :cond_3
    :goto_2
    if-lez p4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p1, p2, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->h:I

    sub-int/2addr p2, v0

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public setItemMinimumHeight(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/e0;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setItemMinimumHeight(I)V

    return-void
.end method

.method public setMenuGravity(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigationrail/NavigationRailMenuView;->setMenuGravity(I)V

    return-void
.end method
