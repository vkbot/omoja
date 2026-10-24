.class Lcom/android/server/wm/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final f:Ljava/lang/String; = "AppDisplayChangeAnimatable"


# instance fields
.field private a:Lcom/android/server/wm/Task;

.field private b:Landroid/view/SurfaceControl;

.field private c:I

.field private d:I

.field e:Lcom/android/server/wm/DisplayContent;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/m;->a:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/server/wm/m;->c:I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput v2, p0, Lcom/android/server/wm/m;->d:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget p1, p0, Lcom/android/server/wm/m;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    iget v1, p0, Lcom/android/server/wm/m;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    const-string p1, "Creating TaskScreenshotAnimatable: task: %s width: %d height: %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppDisplayChangeAnimatable"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/m;->a:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wm/m;->c:I

    iget v2, p0, Lcom/android/server/wm/m;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/m;->b:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3

    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/m;->b:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/server/wm/Task;)Lcom/android/server/wm/m;
    .locals 2

    new-instance v0, Lcom/android/server/wm/m;

    invoke-static {p0}, Lcom/android/server/wm/m;->b(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/m;-><init>(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V

    return-object v0
.end method

.method private static b(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/m;->b:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/m;->b:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public commitPendingTransaction()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->commitPendingTransaction()V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/m;->b:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getSurfaceHeight()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/m;->d:I

    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/m;->c:I

    return p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method
