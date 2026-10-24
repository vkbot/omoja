.class public Lcom/android/car/ui/FocusArea;
.super Landroid/widget/LinearLayout;
.source "FocusArea.java"


# static fields
.field private static final NUDGE_DIRECTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

.field private mBottomOffset:I

.field private mClearFocusAreaHistoryWhenRotating:Z

.field private mDefaultFocusId:I

.field private mDefaultFocusOverridesHistory:Z

.field private mDefaultFocusView:Landroid/view/View;

.field private mEnableBackgroundHighlight:Z

.field private mEnableForegroundHighlight:Z

.field private final mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private mFocusedView:Landroid/view/View;

.field private mForegroundHighlight:Landroid/graphics/drawable/Drawable;

.field private mHasFocus:Z

.field private mLeftOffset:I

.field private mNudgeShortcutDirection:I

.field private mNudgeShortcutId:I

.field private mNudgeShortcutView:Landroid/view/View;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mPreviousFocusArea:Lcom/android/car/ui/FocusArea;

.field private mRightOffset:I

.field private mRotaryCache:Lcom/android/car/ui/RotaryCache;

.field private mRtl:Z

.field private mSpecifiedNudgeFocusAreaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/ui/FocusArea;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecifiedNudgeIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopOffset:I

.field private mWrapAround:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x11

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/ui/FocusArea;->NUDGE_DIRECTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 210
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v0, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;

    invoke-direct {v0, p0}, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;-><init>(Lcom/android/car/ui/FocusArea;)V

    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/FocusArea;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    new-instance v0, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;

    invoke-direct {v0, p0}, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;-><init>(Lcom/android/car/ui/FocusArea;)V

    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusArea;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    new-instance p3, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;

    invoke-direct {p3, p0}, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;-><init>(Lcom/android/car/ui/FocusArea;)V

    iput-object p3, p0, Lcom/android/car/ui/FocusArea;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusArea;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    new-instance p3, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;

    invoke-direct {p3, p0}, Lcom/android/car/ui/-$$Lambda$FocusArea$IFJY9LbteUXfr5H_NaP-OZfWDq8;-><init>(Lcom/android/car/ui/FocusArea;)V

    iput-object p3, p0, Lcom/android/car/ui/FocusArea;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusArea;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private focusOnDescendant()Z
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/car/ui/RotaryCache;->getFocusedView(J)Landroid/view/View;

    move-result-object v0

    .line 538
    iget-boolean v1, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusOverridesHistory:Z

    invoke-static {p0, v0, v1}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method private static getNudgeDirection(Landroid/os/Bundle;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.car.ui.utils.NUDGE_DIRECTION"

    .line 589
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static getOppositeDirection(I)I
    .locals 4

    const/16 v0, 0x42

    const/16 v1, 0x11

    if-eq p0, v1, :cond_3

    const/16 v2, 0x82

    const/16 v3, 0x21

    if-eq p0, v3, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    return v3

    .line 616
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction must be FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, or FOCUS_RIGHT."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method private getSpecifiedFocusArea(I)Lcom/android/car/ui/FocusArea;
    .locals 0

    .line 622
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->maybeInitializeSpecifiedFocusAreas()V

    .line 623
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeFocusAreaMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/car/ui/FocusArea;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    sget v1, Lcom/android/car/ui/R$bool;->car_ui_enable_focus_area_foreground_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/ui/FocusArea;->mEnableForegroundHighlight:Z

    .line 234
    sget v1, Lcom/android/car/ui/R$bool;->car_ui_enable_focus_area_background_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/ui/FocusArea;->mEnableBackgroundHighlight:Z

    .line 236
    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_focus_area_foreground_highlight:I

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/FocusArea;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    .line 238
    sget v1, Lcom/android/car/ui/R$drawable;->car_ui_focus_area_background_highlight:I

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/FocusArea;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    .line 241
    sget v1, Lcom/android/car/ui/R$bool;->car_ui_clear_focus_area_history_when_rotating:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/ui/FocusArea;->mClearFocusAreaHistoryWhenRotating:Z

    .line 245
    sget v1, Lcom/android/car/ui/R$integer;->car_ui_focus_history_cache_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 246
    sget v2, Lcom/android/car/ui/R$integer;->car_ui_focus_history_expiration_period_ms:I

    .line 247
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 249
    sget v3, Lcom/android/car/ui/R$integer;->car_ui_focus_area_history_cache_type:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 251
    sget v4, Lcom/android/car/ui/R$integer;->car_ui_focus_area_history_expiration_period_ms:I

    .line 252
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 253
    new-instance v4, Lcom/android/car/ui/RotaryCache;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/car/ui/RotaryCache;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusArea;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/android/car/ui/R$styleable;->FocusArea:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 336
    :try_start_0
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_defaultFocus:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusId:I

    .line 344
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingStart:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 347
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingHorizontal:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 351
    :cond_1
    sget v2, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingEnd:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 354
    sget v2, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingHorizontal:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 358
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/car/ui/FocusArea;->mRtl:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, p2

    .line 359
    :goto_1
    iput v3, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 360
    iget-boolean v3, p0, Lcom/android/car/ui/FocusArea;->mRtl:Z

    if-eqz v3, :cond_5

    move v3, p2

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    iput v3, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    .line 362
    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingTop:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    if-ne v3, v0, :cond_6

    .line 365
    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingVertical:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    .line 369
    :cond_6
    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingBottom:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    if-ne v3, v0, :cond_7

    .line 372
    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_highlightPaddingVertical:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    .line 382
    :cond_7
    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_startBoundOffset:I

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 385
    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_horizontalBoundOffset:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 389
    :cond_8
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_endBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-ne p2, v0, :cond_9

    .line 392
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_horizontalBoundOffset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 396
    :cond_9
    iget-boolean v2, p0, Lcom/android/car/ui/FocusArea;->mRtl:Z

    if-eqz v2, :cond_a

    move v2, p2

    goto :goto_3

    :cond_a
    move v2, v3

    :goto_3
    iput v2, p0, Lcom/android/car/ui/FocusArea;->mLeftOffset:I

    .line 397
    iget-boolean v2, p0, Lcom/android/car/ui/FocusArea;->mRtl:Z

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    move v3, p2

    :goto_4
    iput v3, p0, Lcom/android/car/ui/FocusArea;->mRightOffset:I

    .line 399
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_topBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mTopOffset:I

    if-ne p2, v0, :cond_c

    .line 402
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_verticalBoundOffset:I

    iget v2, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mTopOffset:I

    .line 406
    :cond_c
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_bottomBoundOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mBottomOffset:I

    if-ne p2, v0, :cond_d

    .line 409
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_verticalBoundOffset:I

    iget v2, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mBottomOffset:I

    .line 413
    :cond_d
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_nudgeShortcut:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutId:I

    .line 414
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_nudgeShortcutDirection:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutDirection:I

    .line 416
    iget p2, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutId:I

    if-ne p2, v0, :cond_e

    move p2, v4

    goto :goto_5

    :cond_e
    move p2, v1

    :goto_5
    iget v2, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutDirection:I

    if-ne v2, v0, :cond_f

    goto :goto_6

    :cond_f
    move v4, v1

    :goto_6
    xor-int/2addr p2, v4

    if-nez p2, :cond_10

    .line 421
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeIdMap:Ljava/util/Map;

    const/16 v2, 0x11

    .line 422
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_nudgeLeft:I

    .line 423
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 422
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object p2, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeIdMap:Ljava/util/Map;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_nudgeRight:I

    .line 425
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 424
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object p2, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeIdMap:Ljava/util/Map;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_nudgeUp:I

    .line 427
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 426
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object p2, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeIdMap:Ljava/util/Map;

    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/android/car/ui/R$styleable;->FocusArea_nudgeDown:I

    .line 429
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 428
    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_defaultFocusOverridesHistory:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusOverridesHistory:Z

    .line 434
    sget p2, Lcom/android/car/ui/R$styleable;->FocusArea_wrapAround:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/FocusArea;->mWrapAround:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 417
    :cond_10
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "nudgeShortcut and nudgeShortcutDirection must be specified together"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 436
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 437
    throw p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result p2

    .line 202
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusArea;->saveFocusHistory(Z)V

    .line 203
    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/FocusArea;->maybeUpdatePreviousFocusArea(ZLandroid/view/View;)V

    .line 204
    invoke-direct {p0, p2, p1}, Lcom/android/car/ui/FocusArea;->maybeClearFocusAreaHistory(ZLandroid/view/View;)V

    .line 205
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusArea;->maybeUpdateFocusAreaHighlight(Z)V

    .line 206
    iput-boolean p2, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    return-void
.end method

.method private maybeAdjustFocus()Z
    .locals 1

    .line 506
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 508
    invoke-static {p0, v0}, Lcom/android/car/ui/utils/ViewUtils;->adjustFocus(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private maybeClearFocusAreaHistory(ZLandroid/view/View;)V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mClearFocusAreaHistoryWhenRotating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    invoke-static {p2}, Lcom/android/car/ui/utils/ViewUtils;->getAncestorFocusArea(Landroid/view/View;)Lcom/android/car/ui/FocusArea;

    move-result-object p1

    if-eq p1, p0, :cond_2

    return-void

    .line 317
    :cond_2
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0}, Lcom/android/car/ui/RotaryCache;->clearFocusAreaHistory()V

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeInitFocus()Z
    .locals 1

    .line 496
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 498
    invoke-static {p0, v0}, Lcom/android/car/ui/utils/ViewUtils;->initFocus(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private maybeInitializeSpecifiedFocusAreas()V
    .locals 5

    .line 687
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeFocusAreaMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 691
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeFocusAreaMap:Ljava/util/Map;

    .line 692
    sget-object v1, Lcom/android/car/ui/FocusArea;->NUDGE_DIRECTIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 693
    iget-object v3, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 694
    iget-object v4, p0, Lcom/android/car/ui/FocusArea;->mSpecifiedNudgeFocusAreaMap:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/car/ui/FocusArea;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private maybeUpdateFocusAreaHighlight(Z)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableBackgroundHighlight:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableForegroundHighlight:Z

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eq v0, p1, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private maybeUpdatePreviousFocusArea(ZLandroid/view/View;)V
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    instance-of p1, p2, Lcom/android/car/ui/FocusParkingView;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p2}, Lcom/android/car/ui/utils/ViewUtils;->getAncestorFocusArea(Landroid/view/View;)Lcom/android/car/ui/FocusArea;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->mPreviousFocusArea:Lcom/android/car/ui/FocusArea;

    if-nez p1, :cond_1

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No parent FocusArea for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FocusArea"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->mPreviousFocusArea:Lcom/android/car/ui/FocusArea;

    return-void
.end method

.method private nudgeToAnotherFocusArea(Landroid/os/Bundle;)Z
    .locals 5

    .line 570
    invoke-static {p1}, Lcom/android/car/ui/FocusArea;->getNudgeDirection(Landroid/os/Bundle;)I

    move-result p1

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 574
    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusArea;->getSpecifiedFocusArea(I)Lcom/android/car/ui/FocusArea;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 575
    invoke-direct {v2}, Lcom/android/car/ui/FocusArea;->focusOnDescendant()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    .line 579
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/car/ui/RotaryCache;->getCachedFocusArea(IJ)Lcom/android/car/ui/FocusArea;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->focusOnDescendant()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v2, v3

    :cond_2
    return v2
.end method

.method private nudgeToShortcutView(Landroid/os/Bundle;)Z
    .locals 3

    .line 551
    iget v0, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutDirection:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "com.android.car.ui.utils.NUDGE_DIRECTION"

    .line 556
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget v0, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutDirection:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 566
    :cond_2
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/car/ui/utils/ViewUtils;->requestFocus(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method private saveFocusAreaHistory(ILcom/android/car/ui/FocusArea;Lcom/android/car/ui/FocusArea;J)V
    .locals 0

    .line 595
    iget-object p0, p2, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/car/ui/RotaryCache;->getCachedFocusArea(IJ)Lcom/android/car/ui/FocusArea;

    move-result-object p0

    if-nez p0, :cond_0

    .line 597
    invoke-static {p1}, Lcom/android/car/ui/FocusArea;->getOppositeDirection(I)I

    move-result p0

    .line 598
    iget-object p1, p3, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    invoke-virtual {p1, p0, p2, p4, p5}, Lcom/android/car/ui/RotaryCache;->saveFocusArea(ILcom/android/car/ui/FocusArea;J)V

    :cond_0
    return-void
.end method

.method private saveFocusHistory(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 269
    iget-boolean p1, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    iget-object v1, p0, Lcom/android/car/ui/FocusArea;->mFocusedView:Landroid/view/View;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/car/ui/RotaryCache;->saveFocusedView(Landroid/view/View;J)V

    .line 271
    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mFocusedView:Landroid/view/View;

    :cond_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 282
    :cond_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    .line 284
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->mFocusedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 644
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 648
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableForegroundHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 650
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    .line 651
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 652
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 653
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 649
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 654
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mForegroundHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method enableForegroundHighlight()V
    .locals 1

    const/4 v0, 0x1

    .line 755
    iput-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableForegroundHighlight:Z

    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mWrapAround:Z

    if-eqz v0, :cond_0

    .line 748
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 750
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 660
    const-class p0, Lcom/android/car/ui/FocusArea;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFocusView()Landroid/view/View;
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusView:Landroid/view/View;

    return-object p0
.end method

.method public synthetic lambda$new$0$FocusArea(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusArea;->lambda$new$0(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 470
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 471
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusArea;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 477
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 628
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 632
    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mEnableBackgroundHighlight:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/FocusArea;->mHasFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 634
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/car/ui/FocusArea;->mPaddingTop:I

    .line 635
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 636
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 637
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/car/ui/FocusArea;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 633
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 638
    iget-object p0, p0, Lcom/android/car/ui/FocusArea;->mBackgroundHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 442
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 443
    iget v0, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    invoke-static {p0, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusView:Landroid/view/View;

    .line 446
    :cond_0
    iget v0, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutId:I

    if-eq v0, v1, :cond_1

    .line 447
    invoke-static {p0, v0}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/FocusArea;->mNudgeShortcutView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 665
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 666
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 667
    iget v0, p0, Lcom/android/car/ui/FocusArea;->mLeftOffset:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_LEFT_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    iget v0, p0, Lcom/android/car/ui/FocusArea;->mRightOffset:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_RIGHT_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    iget v0, p0, Lcom/android/car/ui/FocusArea;->mTopOffset:I

    const-string v1, "com.android.car.ui.utils.FOCUS_AREA_TOP_BOUND_OFFSET"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    iget p0, p0, Lcom/android/car/ui/FocusArea;->mBottomOffset:I

    const-string v0, "com.android.car.ui.utils.FOCUS_AREA_BOTTOM_BOUND_OFFSET"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 453
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 454
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 455
    :goto_0
    iget-boolean p1, p0, Lcom/android/car/ui/FocusArea;->mRtl:Z

    if-eq p1, p2, :cond_1

    .line 456
    iput-boolean p2, p0, Lcom/android/car/ui/FocusArea;->mRtl:Z

    .line 458
    iget p1, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 459
    iget p2, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mPaddingLeft:I

    .line 460
    iput p1, p0, Lcom/android/car/ui/FocusArea;->mPaddingRight:I

    .line 462
    iget p1, p0, Lcom/android/car/ui/FocusArea;->mLeftOffset:I

    .line 463
    iget p2, p0, Lcom/android/car/ui/FocusArea;->mRightOffset:I

    iput p2, p0, Lcom/android/car/ui/FocusArea;->mLeftOffset:I

    .line 464
    iput p1, p0, Lcom/android/car/ui/FocusArea;->mRightOffset:I

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 675
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->maybeAdjustFocus()Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->maybeInitFocus()Z

    .line 488
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x2000000

    if-eq p1, v0, :cond_0

    .line 532
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 530
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusArea;->nudgeToAnotherFocusArea(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 528
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusArea;->nudgeToShortcutView(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 518
    :cond_2
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->focusOnDescendant()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/car/ui/FocusArea;->mPreviousFocusArea:Lcom/android/car/ui/FocusArea;

    if-eqz v0, :cond_3

    .line 520
    invoke-static {p2}, Lcom/android/car/ui/FocusArea;->getNudgeDirection(Landroid/os/Bundle;)I

    move-result v2

    const/4 p2, -0x1

    if-eq v2, p2, :cond_3

    .line 522
    iget-object v3, p0, Lcom/android/car/ui/FocusArea;->mPreviousFocusArea:Lcom/android/car/ui/FocusArea;

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p0

    .line 522
    invoke-direct/range {v1 .. v6}, Lcom/android/car/ui/FocusArea;->saveFocusAreaHistory(ILcom/android/car/ui/FocusArea;Lcom/android/car/ui/FocusArea;J)V

    :cond_3
    return p1
.end method

.method public restoreDefaultFocus()Z
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/android/car/ui/FocusArea;->maybeAdjustFocus()Z

    move-result p0

    return p0
.end method

.method setClearFocusAreaHistoryWhenRotating(Z)V
    .locals 0

    .line 770
    iput-boolean p1, p0, Lcom/android/car/ui/FocusArea;->mClearFocusAreaHistoryWhenRotating:Z

    return-void
.end method

.method public setDefaultFocus(Landroid/view/View;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusView:Landroid/view/View;

    return-void
.end method

.method setDefaultFocusOverridesHistory(Z)V
    .locals 0

    .line 760
    iput-boolean p1, p0, Lcom/android/car/ui/FocusArea;->mDefaultFocusOverridesHistory:Z

    return-void
.end method

.method setRotaryCache(Lcom/android/car/ui/RotaryCache;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/android/car/ui/FocusArea;->mRotaryCache:Lcom/android/car/ui/RotaryCache;

    return-void
.end method
