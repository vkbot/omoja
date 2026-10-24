.class public Lmega/widget/recyclerview/HorizontalDividerItemDecoration;
.super Lmega/widget/recyclerview/FlexibleDividerDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;,
        Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;
    }
.end annotation


# instance fields
.field private final mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;


# direct methods
.method public constructor <init>(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration;-><init>(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)V

    invoke-static {p1}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->access$000(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;->mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    return-void
.end method

.method private getDividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;->dividerPaint(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;->dividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;->drawableProvider(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "failed to get size"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDividerBound(ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;->mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    invoke-interface {v5, p1, p2}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;->dividerLeftMargin(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iput v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;->mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    invoke-interface {v5, p1, p2}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;->dividerRightMargin(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, p2}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;->getDividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    sget-object p2, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->DRAWABLE:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    if-ne p0, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p0

    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p2

    add-int/2addr p0, v2

    iput p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p0

    iget p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0
.end method

.method public setItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;->getDividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
