.class public Lmega/widget/MegaStatusView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/MegaStatusView$ConfigChangedListener;,
        Lmega/widget/MegaStatusView$OnViewStatusChangeListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field private static final NULL_RESOURCE_ID:I = -0x1

.field public static final STATUS_CONTENT:I = 0x0

.field public static final STATUS_EMPTY:I = 0x2

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_NO_NETWORK:I = 0x4


# instance fields
.field private mConfigChangeListener:Lmega/widget/MegaStatusView$ConfigChangedListener;

.field private mContentView:Landroid/view/View;

.field private mContentViewResId:I

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewResId:I

.field private mErrorView:Landroid/view/View;

.field private mErrorViewResId:I

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private mLoadingView:Landroid/view/View;

.field private mLoadingViewResId:I

.field private mNoNetworkView:Landroid/view/View;

.field private mNoNetworkViewResId:I

.field private mOnRetryClickListener:Landroid/view/View$OnClickListener;

.field protected final mOtherIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewStatus:I

.field private mViewStatusListener:Lmega/widget/MegaStatusView$OnViewStatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmega/widget/MegaStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmega/widget/MegaStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lmega/widget/MegaStatusView;->mViewStatus:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmega/widget/MegaStatusView;->mOtherIds:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/MegaStatusView;->mInflater:Landroid/view/LayoutInflater;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lmega/widget/MegaStatusView;->initStyleAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;I)Lmega/widget/MegaStatusView;
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p1}, Lmega/widget/MegaStatusView;->attach(Landroid/view/ViewGroup;)Lmega/widget/MegaStatusView;

    :cond_0
    const p1, 0x1020002

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 10
    invoke-static {p0}, Lmega/widget/MegaStatusView;->attach(Landroid/view/ViewGroup;)Lmega/widget/MegaStatusView;

    move-result-object p0

    return-object p0
.end method

.method public static attach(Landroid/view/ViewGroup;)Lmega/widget/MegaStatusView;
    .locals 4

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    new-instance v2, Lmega/widget/MegaStatusView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmega/widget/MegaStatusView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {v2, p0}, Lmega/widget/MegaStatusView;->setContentView(Landroid/view/ViewGroup;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 17
    invoke-virtual {v0, v2, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "root Anchor View can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static attach(Landroidx/fragment/app/Fragment;I)Lmega/widget/MegaStatusView;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lmega/widget/MegaStatusView;->attach(Landroid/view/ViewGroup;)Lmega/widget/MegaStatusView;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 5
    invoke-static {p0}, Lmega/widget/MegaStatusView;->attach(Landroid/view/ViewGroup;)Lmega/widget/MegaStatusView;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fragment is null or fragment.getView is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs clear([Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getRetryId(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f0a02ae

    return p0

    :cond_1
    const p0, 0x7f0a0179

    return p0

    :cond_2
    const p0, 0x7f0a0171

    return p0
.end method

.method private getTargetView(I)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lmega/widget/MegaStatusView;->mNoNetworkView:Landroid/view/View;

    return-object p0

    :cond_1
    iget-object p0, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    return-object p0

    :cond_2
    iget-object p0, p0, Lmega/widget/MegaStatusView;->mEmptyView:Landroid/view/View;

    return-object p0

    :cond_3
    iget-object p0, p0, Lmega/widget/MegaStatusView;->mLoadingView:Landroid/view/View;

    return-object p0
.end method

.method private getTargetView(IILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lmega/widget/MegaStatusView;->getTargetView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p2}, Lmega/widget/MegaStatusView;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " view is null."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Layout params is null."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lmega/widget/MegaStatusView;->getRetryId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lmega/widget/MegaStatusView;->mOnRetryClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lmega/widget/MegaStatusView;->mOtherIds:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v0
.end method

.method private setContentView(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    const/4 v0, 0x0

    sget-object v1, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setContentViewResId(I)V
    .locals 2

    iput p1, p0, Lmega/widget/MegaStatusView;->mContentViewResId:I

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    const/4 v0, 0x0

    sget-object v1, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const-string v0, "Content view is null."

    .line 6
    invoke-virtual {p0, p1, v0}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Layout params is null."

    .line 7
    invoke-virtual {p0, p2, v0}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lmega/widget/MegaStatusView;->changeViewStatus(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    aput-object v2, v1, v0

    .line 9
    invoke-direct {p0, v1}, Lmega/widget/MegaStatusView;->clear([Landroid/view/View;)V

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lmega/widget/MegaStatusView;->showViewById(I)V

    return-void
.end method

.method private showContentView()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lmega/widget/MegaStatusView;->mOtherIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showStatusView(ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmega/widget/MegaStatusView;->changeViewStatus(I)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lmega/widget/MegaStatusView;->showViewById(I)V

    return-void
.end method


# virtual methods
.method public changeViewStatus(I)V
    .locals 2

    iget v0, p0, Lmega/widget/MegaStatusView;->mViewStatus:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmega/widget/MegaStatusView;->mViewStatusListener:Lmega/widget/MegaStatusView$OnViewStatusChangeListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0, p1}, Lmega/widget/MegaStatusView$OnViewStatusChangeListener;->onChange(II)V

    :cond_1
    iput p1, p0, Lmega/widget/MegaStatusView;->mViewStatus:I

    return-void
.end method

.method public checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getViewStatus()I
    .locals 0

    iget p0, p0, Lmega/widget/MegaStatusView;->mViewStatus:I

    return p0
.end method

.method public inflateView(I)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lmega/widget/MegaStatusView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public initRetryView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public initStyleAttr(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    sget-object v0, Lo2/a;->d:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, 0x7f0d007b

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmega/widget/MegaStatusView;->mEmptyViewResId:I

    const/4 p2, 0x2

    const p3, 0x7f0d007c

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmega/widget/MegaStatusView;->mErrorViewResId:I

    const/4 p2, 0x3

    const p3, 0x7f0d0091

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmega/widget/MegaStatusView;->mLoadingViewResId:I

    const/4 p2, 0x5

    const p3, 0x7f0d00cb

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmega/widget/MegaStatusView;->mNoNetworkViewResId:I

    const/4 p2, -0x1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmega/widget/MegaStatusView;->mContentViewResId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mConfigChangeListener:Lmega/widget/MegaStatusView$ConfigChangedListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmega/widget/MegaStatusView;->mEmptyView:Landroid/view/View;

    iget-object v3, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    iget-object v4, p0, Lmega/widget/MegaStatusView;->mLoadingView:Landroid/view/View;

    iget-object v5, p0, Lmega/widget/MegaStatusView;->mNoNetworkView:Landroid/view/View;

    iget-object v6, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lmega/widget/MegaStatusView$ConfigChangedListener;->onConfigChange(Landroid/content/res/Configuration;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showContent()V

    return-void
.end method

.method public setConfigChangedListener(Lmega/widget/MegaStatusView$ConfigChangedListener;)V
    .locals 0

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mConfigChangeListener:Lmega/widget/MegaStatusView$ConfigChangedListener;

    return-void
.end method

.method public setOnRetryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mOnRetryClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnViewStatusChangeListener(Lmega/widget/MegaStatusView$OnViewStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mViewStatusListener:Lmega/widget/MegaStatusView$OnViewStatusChangeListener;

    return-void
.end method

.method public setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Target view is null."

    invoke-virtual {p0, p1, v0}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0a0381

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Not find the view ID `status_hint_content`"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStatusImgRes(Landroid/view/View;I)V
    .locals 1

    const-string v0, "Target view is null."

    invoke-virtual {p0, p1, v0}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0a0382

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Not find the view ID `status_hint_icon`"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStatusRetryHintContent(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Target view is null."

    invoke-virtual {p0, p1, v0}, Lmega/widget/MegaStatusView;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0a0179

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Not find the view ID `error_retry_view`"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showContent()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lmega/widget/MegaStatusView;->changeViewStatus(I)V

    iget-object v1, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    iget v1, p0, Lmega/widget/MegaStatusView;->mContentViewResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lmega/widget/MegaStatusView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmega/widget/MegaStatusView;->mContentView:Landroid/view/View;

    sget-object v2, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lmega/widget/MegaStatusView;->showContentView()V

    return-void
.end method

.method public final showContent(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lmega/widget/MegaStatusView;->inflateView(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmega/widget/MegaStatusView;->showContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final showEmpty()V
    .locals 2

    iget v0, p0, Lmega/widget/MegaStatusView;->mEmptyViewResId:I

    sget-object v1, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1
    invoke-virtual {p0, v0, v1}, Lmega/widget/MegaStatusView;->showEmpty(ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final showEmpty(III)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lmega/widget/MegaStatusView;->showEmpty(ILjava/lang/String;I)V

    return-void
.end method

.method public final showEmpty(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lmega/widget/MegaStatusView;->getTargetView(IILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mEmptyView:Landroid/view/View;

    .line 12
    invoke-direct {p0, v0, p1}, Lmega/widget/MegaStatusView;->showStatusView(ILandroid/view/View;)V

    return-void
.end method

.method public final showEmpty(ILjava/lang/String;I)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showEmpty()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f0a01f0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p0, p0, Lmega/widget/MegaStatusView;->mEmptyView:Landroid/view/View;

    const p1, 0x7f0a0381

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final showEmpty(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showEmpty()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mEmptyView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1}, Lmega/widget/MegaStatusView;->setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final showError()V
    .locals 2

    iget v0, p0, Lmega/widget/MegaStatusView;->mErrorViewResId:I

    sget-object v1, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1
    invoke-virtual {p0, v0, v1}, Lmega/widget/MegaStatusView;->showError(ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final showError(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x3

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lmega/widget/MegaStatusView;->getTargetView(IILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 12
    invoke-direct {p0, v0, p1}, Lmega/widget/MegaStatusView;->showStatusView(ILandroid/view/View;)V

    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showError()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1}, Lmega/widget/MegaStatusView;->setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final showError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showError()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 5
    invoke-virtual {p0, v0, p1}, Lmega/widget/MegaStatusView;->setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 6
    invoke-virtual {p0, p1, p2}, Lmega/widget/MegaStatusView;->setStatusRetryHintContent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final showError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showError()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 8
    invoke-virtual {p0, v0, p1}, Lmega/widget/MegaStatusView;->setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 9
    invoke-virtual {p0, p1, p2}, Lmega/widget/MegaStatusView;->setStatusRetryHintContent(Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lmega/widget/MegaStatusView;->mErrorView:Landroid/view/View;

    .line 10
    invoke-virtual {p0, p1, p3}, Lmega/widget/MegaStatusView;->setStatusImgRes(Landroid/view/View;I)V

    return-void
.end method

.method public final showLoading()V
    .locals 2

    iget v0, p0, Lmega/widget/MegaStatusView;->mLoadingViewResId:I

    sget-object v1, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1
    invoke-virtual {p0, v0, v1}, Lmega/widget/MegaStatusView;->showLoading(ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final showLoading(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lmega/widget/MegaStatusView;->getTargetView(IILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mLoadingView:Landroid/view/View;

    .line 5
    invoke-direct {p0, v0, p1}, Lmega/widget/MegaStatusView;->showStatusView(ILandroid/view/View;)V

    return-void
.end method

.method public final showLoading(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showLoading()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mLoadingView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1}, Lmega/widget/MegaStatusView;->setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final showNoNetwork()V
    .locals 2

    iget v0, p0, Lmega/widget/MegaStatusView;->mNoNetworkViewResId:I

    sget-object v1, Lmega/widget/MegaStatusView;->DEFAULT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1
    invoke-virtual {p0, v0, v1}, Lmega/widget/MegaStatusView;->showNoNetwork(ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final showNoNetwork(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x4

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lmega/widget/MegaStatusView;->getTargetView(IILandroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/MegaStatusView;->mNoNetworkView:Landroid/view/View;

    .line 5
    invoke-direct {p0, v0, p1}, Lmega/widget/MegaStatusView;->showStatusView(ILandroid/view/View;)V

    return-void
.end method

.method public final showNoNetwork(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lmega/widget/MegaStatusView;->showNoNetwork()V

    iget-object v0, p0, Lmega/widget/MegaStatusView;->mNoNetworkView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1}, Lmega/widget/MegaStatusView;->setStatusHintContent(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public showViewById(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
