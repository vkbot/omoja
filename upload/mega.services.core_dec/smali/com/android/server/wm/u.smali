.class Lcom/android/server/wm/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Landroid/view/InputChannel;

.field b:Landroid/view/InputChannel;

.field c:Landroid/view/InputApplicationHandle;

.field d:Landroid/view/InputEventReceiver;

.field e:Landroid/view/InputWindowHandle;

.field final synthetic f:Lcom/android/server/wm/v;


# direct methods
.method constructor <init>(Lcom/android/server/wm/v;Lcom/android/server/wm/DisplayContent;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/wm/u;->f:Lcom/android/server/wm/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "drag"

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/u;->b:Landroid/view/InputChannel;

    invoke-static {p1}, Lcom/android/server/wm/v;->g(Lcom/android/server/wm/v;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    invoke-virtual {v1, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    new-instance v1, Lcom/android/server/wm/t;

    iget-object v4, p0, Lcom/android/server/wm/u;->b:Landroid/view/InputChannel;

    invoke-static {p1}, Lcom/android/server/wm/v;->g(Lcom/android/server/wm/v;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v4, v5, p1}, Lcom/android/server/wm/t;-><init>(Lcom/android/server/wm/u;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/v;)V

    iput-object v1, p0, Lcom/android/server/wm/u;->d:Landroid/view/InputEventReceiver;

    new-instance p1, Landroid/view/InputApplicationHandle;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const-wide v4, 0x12a05f200L

    invoke-direct {p1, v1, v0, v4, v5}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/android/server/wm/u;->c:Landroid/view/InputApplicationHandle;

    new-instance p1, Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/u;->c:Landroid/view/InputApplicationHandle;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-direct {p1, v1, v6}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object p1, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    iput-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    const v0, 0x800028

    iput v0, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    const/16 v0, 0x7e0

    iput v0, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput-wide v4, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    iput-boolean v3, p1, Landroid/view/InputWindowHandle;->visible:Z

    iput-boolean v2, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    iput-boolean v3, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    iput-boolean v2, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    iput-boolean v2, p1, Landroid/view/InputWindowHandle;->paused:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    iget-object p1, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    iget-object p1, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    iput v2, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    iget-object p1, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    iput v2, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    iput v2, p1, Landroid/view/InputWindowHandle;->frameTop:I

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/view/InputWindowHandle;->frameRight:I

    iget-object p0, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/view/InputWindowHandle;->frameBottom:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/u;->f:Lcom/android/server/wm/v;

    invoke-static {v0}, Lcom/android/server/wm/v;->g(Lcom/android/server/wm/v;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/u;->b:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iget-object v0, p0, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/u;->b:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/u;->c:Landroid/view/InputApplicationHandle;

    return-void
.end method
