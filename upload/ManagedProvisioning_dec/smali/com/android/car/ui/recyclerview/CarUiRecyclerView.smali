.class public final Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CarUiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;,
        Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;
    }
.end annotation


# instance fields
.field private mBottomOffset:I

.field private mBottomOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

.field private mBottomOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerPadding:Landroid/graphics/Rect;

.field private mContainerPaddingRelative:Landroid/graphics/Rect;

.field private mContainerVisibility:I

.field private mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

.field private mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mEnableDividers:Z

.field private mHasScrolled:Z

.field private mInstallingExtScrollBar:Z

.field private mIsInitialized:Z

.field private final mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

.field private mNumOfColumns:I

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

.field private mScrollBarClass:Ljava/lang/String;

.field private mScrollBarEnabled:Z

.field private mScrollBarPaddingBottom:I

.field private mScrollBarPaddingTop:I

.field private mTopOffset:I

.field private mTopOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

.field private mTopOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 179
    sget v0, Lcom/android/car/ui/R$attr;->carUiRecyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    .line 97
    iput v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerVisibility:I

    .line 111
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolled:Z

    .line 113
    new-instance v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 185
    invoke-static {p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getInstance(Landroid/content/Context;)Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolled:Z

    return p1
.end method

.method static synthetic access$201(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private addItemDecorations(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 273
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 274
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 275
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 276
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 277
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 279
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 280
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mEnableDividers:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 284
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 285
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setNumOfColumns(I)V

    goto :goto_0

    .line 287
    :cond_1
    iget-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mEnableDividers:Z

    if-eqz p1, :cond_2

    .line 288
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 291
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    return-void
.end method

.method private static andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    const-string v0, "CarUiRecyclerView"

    .line 592
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private createScrollBarFromConfig(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 458
    :cond_0
    const-class v1, Lcom/android/car/ui/recyclerview/DefaultScrollBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 463
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/recyclerview/ScrollBar;

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    invoke-interface {v1, p0, p1}, Lcom/android/car/ui/recyclerview/ScrollBar;->initialize(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    .line 470
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    iget v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    invoke-virtual {p0, p1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setScrollBarPadding(II)V

    return-void

    :catchall_0
    move-exception p1

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating scroll bar component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v0

    :catchall_1
    move-exception p1

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading scroll bar component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    throw v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 191
    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView:[I

    sget v2, Lcom/android/car/ui/R$style;->Widget_CarUi_CarUiRecyclerView:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 196
    invoke-direct {p0, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->initRotaryScroll(Landroid/content/res/TypedArray;)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/car/ui/R$bool;->car_ui_scrollbar_enable:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_padding_top:I

    .line 201
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/car/ui/R$dimen;->car_ui_scrollbar_padding_bottom:I

    .line 203
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    .line 205
    sget p3, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_layoutStyle:I

    .line 206
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 207
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_numOfColumns:I

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    .line 208
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_enableDivider:I

    .line 209
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mEnableDividers:Z

    .line 211
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/linear/LinearDividerItemDecoration;

    sget v2, Lcom/android/car/ui/R$drawable;->car_ui_recyclerview_divider:I

    .line 212
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 214
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    sget v2, Lcom/android/car/ui/R$drawable;->car_ui_divider:I

    .line 216
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$drawable;->car_ui_divider:I

    .line 217
    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    .line 220
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_topOffset:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffset:I

    .line 221
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_bottomOffset:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffset:I

    .line 223
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffset:I

    invoke-direct {v1, v2, v0}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;-><init>(II)V

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 225
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffset:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/car/ui/recyclerview/decorations/linear/LinearOffsetItemDecoration;-><init>(II)V

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffsetItemDecorationLinear:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 227
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffset:I

    iget v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {v1, v2, v4, v0}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;-><init>(III)V

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    .line 230
    new-instance v1, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffset:I

    iget v4, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {v1, v2, v4, v3}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;-><init>(III)V

    iput-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mBottomOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    .line 234
    iput-boolean v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mIsInitialized:Z

    .line 237
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    if-nez p3, :cond_1

    .line 239
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-ne p3, v3, :cond_2

    .line 241
    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-direct {p3, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 243
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 245
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-nez p2, :cond_3

    return-void

    .line 251
    :cond_3
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    .line 253
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/car/ui/R$string;->car_ui_scrollbar_component:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarClass:Ljava/lang/String;

    return-void
.end method

.method private initRotaryScroll(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 301
    sget v2, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_rotaryScrollEnabled:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 304
    sget v3, Lcom/android/car/ui/R$styleable;->CarUiRecyclerView_android_orientation:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 307
    :goto_1
    invoke-static {p0, v0}, Lcom/android/car/ui/utils/CarUiUtils;->setRotaryScrollEnabled(Landroid/view/View;Z)V

    goto :goto_3

    .line 310
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 312
    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 313
    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    move v2, v0

    :goto_3
    if-eqz v2, :cond_5

    .line 319
    new-instance p1, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$cmFjW8Igf4rw1YMIiWp_bUJTGRE;

    invoke-direct {p1, p0}, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$cmFjW8Igf4rw1YMIiWp_bUJTGRE;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 333
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const/high16 p1, 0x20000

    .line 337
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 341
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDefaultFocusHighlightEnabled(Z)V

    if-nez v2, :cond_6

    const-string p1, "com.android.car.ui.utils.ROTARY_CONTAINER"

    .line 345
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private installExternalScrollBar()V
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 420
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 421
    sget v1, Lcom/android/car/ui/R$layout;->car_ui_recycler_view:I

    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPaddingRelative:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 428
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 433
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    .line 432
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 434
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 435
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    .line 434
    invoke-virtual {p0, v3, v0, v3, v1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setPadding(IIII)V

    .line 438
    :goto_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 440
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 441
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 443
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 445
    iget-object v3, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    sget v4, Lcom/android/car/ui/R$id;->car_ui_recycler_view:I

    .line 446
    invoke-static {v3, v4}, Lcom/android/car/ui/utils/CarUiUtils;->findViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 445
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewContainer;

    .line 447
    invoke-virtual {v3, p0, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewContainer;->addRecyclerView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 448
    iget-object v2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 450
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/car/ui/R$id;->car_ui_scroll_bar:I

    invoke-static {v0, v1}, Lcom/android/car/ui/utils/CarUiUtils;->findViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->createScrollBarFromConfig(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initRotaryScroll$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/high16 v0, 0x400000

    if-ne p1, v0, :cond_0

    .line 322
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 p2, 0x2002

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 324
    invoke-static {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->access$201(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$initRotaryScroll$0$CarUiRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->lambda$initRotaryScroll$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 390
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 391
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->register(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V

    .line 392
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    .line 401
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->installExternalScrollBar()V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mInstallingExtScrollBar:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 489
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    .line 490
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mCarUxRestrictionsUtil:Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->unregister(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 351
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    .line 355
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolled:Z

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 360
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 361
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

    if-eqz p0, :cond_0

    .line 362
    invoke-interface {p0}, Lcom/android/car/ui/recyclerview/ScrollBar;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0, p1}, Lcom/android/car/ui/recyclerview/ScrollBar;->adapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 588
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 577
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 578
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->initRotaryScroll(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->addItemDecorations(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setNumOfColumns(I)V
    .locals 1

    .line 370
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    .line 371
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mTopOffsetItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Lcom/android/car/ui/recyclerview/decorations/grid/GridOffsetItemDecoration;->setNumOfColumns(I)V

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mDividerItemDecorationGrid:Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;

    if-eqz p1, :cond_1

    .line 375
    iget p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mNumOfColumns:I

    invoke-virtual {p1, p0}, Lcom/android/car/ui/recyclerview/decorations/grid/GridDividerItemDecoration;->setNumOfColumns(I)V

    :cond_1
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPaddingRelative:Landroid/graphics/Rect;

    .line 496
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 497
    invoke-super {p0, v0, p2, v0, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 498
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolled:Z

    if-nez p2, :cond_0

    .line 503
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 505
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, v0, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPadding:Landroid/graphics/Rect;

    .line 506
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 509
    :cond_1
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    iget p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setScrollBarPadding(II)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 517
    iput-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPadding:Landroid/graphics/Rect;

    .line 518
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 519
    invoke-super {p0, v0, p2, v0, p4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 520
    iget-boolean p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mHasScrolled:Z

    if-nez p2, :cond_0

    .line 525
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 527
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, v0, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerPaddingRelative:Landroid/graphics/Rect;

    .line 528
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 529
    invoke-virtual {p2, p1, v0, p3, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 531
    :cond_1
    iget p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    iget p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->setScrollBarPadding(II)V

    goto :goto_0

    .line 533
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :goto_0
    return-void
.end method

.method public setScrollBarPadding(II)V
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarEnabled:Z

    if-eqz v0, :cond_0

    .line 543
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingTop:I

    .line 544
    iput p2, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBarPaddingBottom:I

    .line 546
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mScrollBar:Lcom/android/car/ui/recyclerview/ScrollBar;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    .line 548
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p2, p0

    .line 547
    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/recyclerview/ScrollBar;->setPadding(II)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 381
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    iput p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainerVisibility:I

    .line 383
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->mContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 384
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
