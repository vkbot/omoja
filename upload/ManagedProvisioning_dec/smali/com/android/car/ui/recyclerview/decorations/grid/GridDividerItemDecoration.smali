.class public Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridDividerItemDecoration.java"


# instance fields
.field private final mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mNumColumns:I

.field private final mVerticalDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 53
    iput p3, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 95
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 96
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 97
    iget v2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    div-int v3, v1, v2

    .line 98
    rem-int v4, v1, v2

    .line 99
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v2, v4, :cond_0

    .line 104
    iget v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v5, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, -0x1

    .line 106
    iget v6, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v5, v6

    :goto_1
    add-int/2addr v5, v2

    .line 110
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 111
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 114
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_top_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 116
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 117
    iget-object v8, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v6, v8

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 119
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_bottom_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v5, v9

    .line 122
    iget-object v9, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v8, v7, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    iget-object v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 139
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    int-to-double v1, v1

    .line 141
    iget v3, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    int-to-double v5, v4

    cmpg-double v7, v5, v1

    if-gtz v7, :cond_2

    if-ne v4, v3, :cond_0

    goto :goto_2

    :cond_0
    cmpl-double v5, v5, v1

    if-nez v5, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 149
    iget v6, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v5, v6

    goto :goto_1

    .line 151
    :cond_1
    iget v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    mul-int/2addr v5, v4

    :goto_1
    sub-int/2addr v5, v3

    .line 154
    iget v6, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v6, v7

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 155
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 159
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_start_margin:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 161
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 162
    iget-object v8, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int v8, v6, v8

    .line 163
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    .line 164
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/car/ui/R$dimen;->car_ui_recyclerview_divider_end_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v5, v9

    .line 167
    iget-object v9, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v7, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    iget-object v5, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 82
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    const/4 p3, 0x0

    .line 82
    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->drawVerticalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->drawHorizontalDividers(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setNumOfColumns(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->mNumColumns:I

    return-void
.end method
