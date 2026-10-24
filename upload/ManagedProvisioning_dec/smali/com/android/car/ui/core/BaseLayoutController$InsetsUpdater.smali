.class final Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;
.super Ljava/lang/Object;
.source "BaseLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/core/BaseLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetsUpdater"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBottomInsetView:Landroid/view/View;

.field private final mContentView:Landroid/view/View;

.field private final mContentViewContainer:Landroid/view/View;

.field private mInsets:Lcom/android/car/ui/baselayout/Insets;

.field private mInsetsChangedListenerDelegate:Lcom/android/car/ui/baselayout/InsetsChangedListener;

.field private final mLeftInsetView:Landroid/view/View;

.field private final mRightInsetView:Landroid/view/View;

.field private final mTopInsetView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v0}, Lcom/android/car/ui/baselayout/Insets;-><init>()V

    iput-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    .line 244
    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    .line 245
    iput-object p3, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentView:Landroid/view/View;

    .line 246
    sget p1, Lcom/android/car/ui/R$id;->car_ui_base_layout_content_container:I

    invoke-static {p2, p1}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    const-string p1, "car_ui_left_inset"

    .line 249
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mLeftInsetView:Landroid/view/View;

    const-string p1, "car_ui_right_inset"

    .line 250
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    const-string p1, "car_ui_top_inset"

    .line 251
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mTopInsetView:Landroid/view/View;

    const-string p1, "car_ui_bottom_inset"

    .line 252
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    .line 254
    new-instance p1, Lcom/android/car/ui/core/-$$Lambda$BaseLayoutController$InsetsUpdater$zzCIB0038f8j1iFmYePHWvmc4w4;

    invoke-direct {p1, p0}, Lcom/android/car/ui/core/-$$Lambda$BaseLayoutController$InsetsUpdater$zzCIB0038f8j1iFmYePHWvmc4w4;-><init>(Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;)V

    .line 263
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mLeftInsetView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 266
    :cond_0
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 267
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 269
    :cond_1
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mTopInsetView:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 270
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 272
    :cond_2
    iget-object p2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 273
    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 275
    :cond_3
    invoke-virtual {p3, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 276
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private static getBottomOfView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 391
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 392
    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getLeftOfView(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 373
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    .line 374
    aget p0, v0, p0

    return p0
.end method

.method private static getRightOfView(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 379
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 380
    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getTopOfView(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 385
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    .line 386
    aget p0, v0, p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->recalcInsets()V

    :cond_1
    return-void
.end method


# virtual methods
.method dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V
    .locals 5

    .line 339
    iput-object p1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    .line 343
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsetsChangedListenerDelegate:Lcom/android/car/ui/baselayout/InsetsChangedListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0, p1}, Lcom/android/car/ui/baselayout/InsetsChangedListener;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/Insets;)V

    goto :goto_2

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    instance-of v2, v0, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    if-eqz v2, :cond_1

    .line 350
    check-cast v0, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/car/ui/baselayout/InsetsChangedListener;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/Insets;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mActivity:Landroid/app/Activity;

    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_3

    .line 355
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 356
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 355
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 357
    instance-of v4, v3, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    if-eqz v4, :cond_2

    .line 358
    check-cast v3, Lcom/android/car/ui/baselayout/InsetsChangedListener;

    invoke-interface {v3, p1}, Lcom/android/car/ui/baselayout/InsetsChangedListener;->onCarUiInsetsChanged(Lcom/android/car/ui/baselayout/Insets;)V

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    if-nez v1, :cond_4

    .line 366
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getTop()I

    move-result v1

    .line 367
    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getRight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/baselayout/Insets;->getBottom()I

    move-result p1

    .line 366
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    return-void
.end method

.method getInsets()Lcom/android/car/ui/baselayout/Insets;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    return-object p0
.end method

.method public synthetic lambda$new$0$BaseLayoutController$InsetsUpdater(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public recalcInsets()V
    .locals 7

    .line 298
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    .line 299
    invoke-static {v0}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getTopOfView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getTopOfView(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 298
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 300
    iget-object v2, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    .line 301
    invoke-static {v2}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getLeftOfView(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getLeftOfView(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 300
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 302
    iget-object v3, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentView:Landroid/view/View;

    .line 303
    invoke-static {v3}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getRightOfView(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    invoke-static {v4}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getRightOfView(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 302
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 304
    iget-object v4, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentView:Landroid/view/View;

    .line 305
    invoke-static {v4}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getBottomOfView(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    invoke-static {v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getBottomOfView(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 304
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 306
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mTopInsetView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 308
    invoke-static {v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getBottomOfView(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    invoke-static {v6}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getTopOfView(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 307
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v0, v5

    .line 310
    :cond_0
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 311
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    .line 312
    invoke-static {v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getBottomOfView(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mBottomInsetView:Landroid/view/View;

    invoke-static {v6}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getTopOfView(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 311
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 314
    :cond_1
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mLeftInsetView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 316
    invoke-static {v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getRightOfView(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    invoke-static {v6}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getLeftOfView(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 315
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 318
    :cond_2
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 319
    iget-object v5, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mContentViewContainer:Landroid/view/View;

    .line 320
    invoke-static {v5}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getRightOfView(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mRightInsetView:Landroid/view/View;

    invoke-static {v6}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->getLeftOfView(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    .line 319
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v3, v1

    .line 322
    :cond_3
    new-instance v1, Lcom/android/car/ui/baselayout/Insets;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/car/ui/baselayout/Insets;-><init>(IIII)V

    .line 324
    iget-object v0, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    invoke-virtual {v1, v0}, Lcom/android/car/ui/baselayout/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    iput-object v1, p0, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->mInsets:Lcom/android/car/ui/baselayout/Insets;

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/car/ui/core/BaseLayoutController$InsetsUpdater;->dispatchNewInsets(Lcom/android/car/ui/baselayout/Insets;)V

    :cond_4
    return-void
.end method
