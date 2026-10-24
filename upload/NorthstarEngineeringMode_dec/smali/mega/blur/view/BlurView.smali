.class public Lmega/blur/view/BlurView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/blur/view/BlurView$StopException;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final STOP_EXCEPTION:Lmega/blur/view/BlurView$StopException;

.field private static final TAG:Ljava/lang/String; = "BlurView"

.field private static sRenderCount:I


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurImpl:Lmega/blur/engine/BlurEngine;

.field private mBlurRadius:I

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDecorView:Landroid/view/View;

.field private mDifferentRoot:Z

.field private mDownSampleFactor:F

.field private mEnableRealtimeBlur:Z

.field private mIsRendering:Z

.field private mOverlayColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmega/blur/view/BlurView$StopException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmega/blur/view/BlurView$StopException;-><init>(Lmega/blur/view/BlurView$1;)V

    sput-object v0, Lmega/blur/view/BlurView;->STOP_EXCEPTION:Lmega/blur/view/BlurView$StopException;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmega/blur/view/BlurView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmega/blur/view/BlurView;->mRectDst:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmega/blur/view/BlurView;->mDownSampleFactor:F

    new-instance v1, Lmega/blur/view/BlurView$1;

    invoke-direct {v1, p0}, Lmega/blur/view/BlurView$1;-><init>(Lmega/blur/view/BlurView;)V

    iput-object v1, p0, Lmega/blur/view/BlurView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    sget-object v1, Lo2/a;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v1, 0x19

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmega/blur/view/BlurView;->mBlurRadius:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmega/blur/view/BlurView;->mDownSampleFactor:F

    const p2, 0xffffff

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmega/blur/view/BlurView;->mOverlayColor:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmega/blur/view/BlurView;->mEnableRealtimeBlur:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->setupBlurImpl()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmega/blur/view/BlurView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmega/blur/view/BlurView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lmega/blur/view/BlurView;)Z
    .locals 0

    iget-boolean p0, p0, Lmega/blur/view/BlurView;->mEnableRealtimeBlur:Z

    return p0
.end method

.method public static synthetic access$1100(Lmega/blur/view/BlurView;)V
    .locals 0

    invoke-direct {p0}, Lmega/blur/view/BlurView;->removePreDrawListener()V

    return-void
.end method

.method public static synthetic access$1200(Lmega/blur/view/BlurView;)Z
    .locals 0

    iget-boolean p0, p0, Lmega/blur/view/BlurView;->mDifferentRoot:Z

    return p0
.end method

.method public static synthetic access$200(Lmega/blur/view/BlurView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$400(Lmega/blur/view/BlurView;)I
    .locals 0

    iget p0, p0, Lmega/blur/view/BlurView;->mOverlayColor:I

    return p0
.end method

.method public static synthetic access$500(Lmega/blur/view/BlurView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$600(Lmega/blur/view/BlurView;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static synthetic access$702(Lmega/blur/view/BlurView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmega/blur/view/BlurView;->mIsRendering:Z

    return p1
.end method

.method public static synthetic access$808()I
    .locals 2

    sget v0, Lmega/blur/view/BlurView;->sRenderCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmega/blur/view/BlurView;->sRenderCount:I

    return v0
.end method

.method public static synthetic access$810()I
    .locals 2

    sget v0, Lmega/blur/view/BlurView;->sRenderCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lmega/blur/view/BlurView;->sRenderCount:I

    return v0
.end method

.method public static synthetic access$900(Lmega/blur/view/BlurView;)Lmega/blur/engine/BlurEngine;
    .locals 0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mBlurImpl:Lmega/blur/engine/BlurEngine;

    return-object p0
.end method

.method private addPreDrawListener()V
    .locals 1

    iget-object v0, p0, Lmega/blur/view/BlurView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void
.end method

.method private releaseBitmap()V
    .locals 2

    iget-object v0, p0, Lmega/blur/view/BlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lmega/blur/view/BlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private removePreDrawListener()V
    .locals 1

    iget-object v0, p0, Lmega/blur/view/BlurView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lmega/blur/view/BlurView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "draw"

    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lmega/blur/view/BlurView;->mEnableRealtimeBlur:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lmega/blur/view/BlurView;->mIsRendering:Z

    if-nez v0, :cond_2

    sget v0, Lmega/blur/view/BlurView;->sRenderCount:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_2
    sget-object p0, Lmega/blur/view/BlurView;->STOP_EXCEPTION:Lmega/blur/view/BlurView$StopException;

    throw p0
.end method

.method public drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lmega/blur/view/BlurView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lmega/blur/view/BlurView;->mRectDst:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    iget-object p2, p0, Lmega/blur/view/BlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lmega/blur/view/BlurView;->mRectDst:Landroid/graphics/Rect;

    iget-object p0, p0, Lmega/blur/view/BlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getActivityDecorView()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    const-string/jumbo v0, "onAttachedToWindow..."

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmega/blur/view/BlurView;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lmega/blur/view/BlurView;->mDifferentRoot:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmega/blur/view/BlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lmega/blur/view/BlurView;->mDifferentRoot:Z

    :cond_2
    :goto_0
    invoke-direct {p0}, Lmega/blur/view/BlurView;->addPreDrawListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const-string/jumbo v0, "onDetachedFromWindow..."

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lmega/blur/view/BlurView;->removePreDrawListener()V

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->release()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "on draw"

    invoke-static {v0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmega/blur/view/BlurView;->mEnableRealtimeBlur:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lmega/blur/view/BlurView;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lmega/blur/view/BlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public prepare()Z
    .locals 7

    iget v0, p0, Lmega/blur/view/BlurView;->mBlurRadius:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->release()V

    return v1

    :cond_0
    iget v0, p0, Lmega/blur/view/BlurView;->mDownSampleFactor:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v4, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lmega/blur/view/BlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_4

    :cond_1
    invoke-direct {p0}, Lmega/blur/view/BlurView;->releaseBitmap()V

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lmega/blur/view/BlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->release()V

    return v1

    :cond_2
    :try_start_1
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lmega/blur/view/BlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lmega/blur/view/BlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmega/blur/view/BlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->release()V

    return v1

    :cond_3
    :try_start_2
    sget-object v0, Lmega/blur/view/BlurView;->TAG:Ljava/lang/String;

    const-string v2, "createBitmap..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    return v4

    :catchall_0
    invoke-virtual {p0}, Lmega/blur/view/BlurView;->release()V

    return v1

    :catch_0
    invoke-virtual {p0}, Lmega/blur/view/BlurView;->release()V

    return v1
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lmega/blur/view/BlurView;->releaseBitmap()V

    iget-object p0, p0, Lmega/blur/view/BlurView;->mBlurImpl:Lmega/blur/engine/BlurEngine;

    invoke-interface {p0}, Lmega/blur/engine/BlurEngine;->destroy()V

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 1

    const/16 v0, 0x19

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lmega/blur/view/BlurView;->mBlurRadius:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmega/blur/view/BlurView;->mBlurRadius:I

    invoke-virtual {p0}, Lmega/blur/view/BlurView;->setupBlurImpl()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDownSampleFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lmega/blur/view/BlurView;->mDownSampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lmega/blur/view/BlurView;->mDownSampleFactor:F

    invoke-direct {p0}, Lmega/blur/view/BlurView;->releaseBitmap()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Downsample factor must be greater than 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOverlayColor(I)V
    .locals 1

    iget v0, p0, Lmega/blur/view/BlurView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmega/blur/view/BlurView;->mOverlayColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setupBlurImpl()V
    .locals 4

    iget-object v0, p0, Lmega/blur/view/BlurView;->mBlurImpl:Lmega/blur/engine/BlurEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmega/blur/engine/BlurEngine;->destroy()V

    :cond_0
    new-instance v0, Lmega/blur/engine/Blur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lmega/blur/engine/BlurConfig$Builder;

    invoke-direct {v2}, Lmega/blur/engine/BlurConfig$Builder;-><init>()V

    iget v3, p0, Lmega/blur/view/BlurView;->mBlurRadius:I

    invoke-virtual {v2, v3}, Lmega/blur/engine/BlurConfig$Builder;->radius(I)Lmega/blur/engine/BlurConfig$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmega/blur/engine/BlurConfig$Builder;->build()Lmega/blur/engine/BlurConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmega/blur/engine/Blur;-><init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V

    iput-object v0, p0, Lmega/blur/view/BlurView;->mBlurImpl:Lmega/blur/engine/BlurEngine;

    return-void
.end method
