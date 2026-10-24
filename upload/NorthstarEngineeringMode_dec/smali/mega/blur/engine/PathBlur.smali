.class public Lmega/blur/engine/PathBlur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final RADIUS:I = 0x19

.field private static final TAG:Ljava/lang/String; = "PathBlur"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I[Landroid/graphics/Path;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmega/blur/engine/PathBlur;->lambda$setUpTargetView$0(I[Landroid/graphics/Path;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmega/blur/engine/PathBlur;->setUpTargetView(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lmega/blur/engine/PathBlur;->blur(Landroid/content/Context;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [Landroid/graphics/Path;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lmega/blur/engine/BlurEngine$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x99

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    if-ltz p2, :cond_0

    const/16 v0, 0xff

    if-gt p2, v0, :cond_0

    .line 4
    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p0, p1, p2, p3, p4}, Lmega/blur/engine/PathBlur;->setUpTargetView(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lmega/blur/engine/PathBlur$1;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmega/blur/engine/PathBlur$1;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    return-void
.end method

.method public static blur(Landroid/content/Context;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmega/blur/engine/BlurEngine$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lmega/blur/engine/PathBlur;->blur(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method

.method public static blurConfig()Lmega/blur/engine/BlurConfig;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lmega/blur/engine/BlurConfig$Builder;

    invoke-direct {v0}, Lmega/blur/engine/BlurConfig$Builder;-><init>()V

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lmega/blur/engine/BlurConfig$Builder;->radius(I)Lmega/blur/engine/BlurConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmega/blur/engine/BlurConfig$Builder;->build()Lmega/blur/engine/BlurConfig;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setUpTargetView$0(I[Landroid/graphics/Path;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p4, :cond_0

    sget-object p0, Lmega/blur/engine/PathBlur;->TAG:Ljava/lang/String;

    const-string p1, "bitmap null exception"

    invoke-static {p0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    if-eqz p1, :cond_2

    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    array-length p0, p1

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_3

    invoke-interface {p3, p4}, Lmega/blur/engine/BlurEngine$Callback;->onFinished(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method

.method private static setUpTargetView(Landroid/content/Context;Landroid/widget/ImageView;I[Landroid/graphics/Path;Lmega/blur/engine/BlurEngine$Callback;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v4

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v0

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v3, v0, v4}, Lu2/a;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lmega/blur/engine/PathBlur;->TAG:Ljava/lang/String;

    const-string p1, "can`t blur for screen shot fail"

    invoke-static {p0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cost: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenShot"

    invoke-static {v2, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lmega/blur/engine/Blur;

    invoke-static {}, Lmega/blur/engine/PathBlur;->blurConfig()Lmega/blur/engine/BlurConfig;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lmega/blur/engine/Blur;-><init>(Landroid/content/Context;Lmega/blur/engine/BlurConfig;)V

    new-instance p0, Lmega/blur/engine/a;

    invoke-direct {p0, p2, p3, p1, p4}, Lmega/blur/engine/a;-><init>(I[Landroid/graphics/Path;Landroid/widget/ImageView;Lmega/blur/engine/BlurEngine$Callback;)V

    invoke-virtual {v1, v0, v5, p0}, Lmega/blur/engine/Blur;->execute(Landroid/graphics/Bitmap;ZLmega/blur/engine/BlurEngine$Callback;)V

    return-void
.end method
