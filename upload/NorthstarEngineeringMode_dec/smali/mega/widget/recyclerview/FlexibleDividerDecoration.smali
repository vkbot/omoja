.class public abstract Lmega/widget/recyclerview/FlexibleDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;,
        Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;,
        Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;,
        Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;,
        Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;,
        Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;,
        Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final DEFAULT_SIZE:I = 0x2


# instance fields
.field private mBuilder:Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

.field protected mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

.field protected mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

.field protected mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

.field private mPaint:Landroid/graphics/Paint;

.field protected mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

.field protected mShowLastDivider:Z

.field protected mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

.field protected mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010214

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    sget-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->DRAWABLE:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mBuilder:Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$000(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->PAINT:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$000(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$100(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;->COLOR:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$100(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->setSizeProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$200(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$300(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmega/widget/recyclerview/FlexibleDividerDecoration;->ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lg1/z;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lg1/z;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$200(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    :goto_0
    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$400(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    :goto_1
    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$500(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$600(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mShowLastDivider:Z

    return-void
.end method

.method public static synthetic a(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->lambda$setSizeProvider$1(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->lambda$new$0(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setSizeProvider$1(ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method private setSizeProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)V
    .locals 1

    invoke-static {p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$400(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/constraintlayout/core/state/c;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroidx/constraintlayout/core/state/c;-><init>(I)V

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getDividerBound(ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->setItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    iget-boolean p3, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mShowLastDivider:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_7

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ge v4, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;

    iget-object v5, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mBuilder:Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    invoke-static {v5}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->access$700(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Z

    move-result v5

    invoke-interface {v1, v4, p2, v5}, Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;->shouldHideDivider(ILandroidx/recyclerview/widget/RecyclerView;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4, p2, v3}, Lmega/widget/recyclerview/FlexibleDividerDecoration;->getDividerBound(ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    sget-object v3, Lmega/widget/recyclerview/FlexibleDividerDecoration$1;->$SwitchMap$mega$widget$recyclerview$FlexibleDividerDecoration$DividerType:[I

    iget-object v5, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDividerType:Lmega/widget/recyclerview/FlexibleDividerDecoration$DividerType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v0, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    invoke-interface {v5, v4, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;->dividerColor(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    invoke-interface {v5, v4, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;->dividerSize(ILandroidx/recyclerview/widget/RecyclerView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    iget-object v10, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    invoke-interface {v3, v4, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;->dividerPaint(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;

    move-result-object v10

    iput-object v10, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration;->mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    invoke-interface {v3, v4, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;->drawableProvider(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    move v1, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public abstract setItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
.end method
