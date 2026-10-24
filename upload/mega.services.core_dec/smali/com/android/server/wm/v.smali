.class public Lcom/android/server/wm/v;
.super Lcom/android/server/wm/w;
.source ""


# static fields
.field private static final I:F = 0.833f

.field private static final J:F = 0.3f

.field private static final K:I = 0x0

.field private static final L:I = 0x1

.field private static final M:I = 0x1

.field private static final N:I = 0x0

.field private static final O:Ljava/lang/String; = "MoveToDisplayService"


# instance fields
.field private final A:I

.field private final B:I

.field C:Z

.field private final D:Landroid/os/RemoteCallbackList;

.field private final E:Landroid/os/RemoteCallbackList;

.field private F:Landroid/os/Handler;

.field private G:Landroid/view/SurfaceControl;

.field private H:Landroid/view/SurfaceControl;

.field private a:Z

.field private b:Z

.field private final c:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final d:Ljava/util/ArrayList;

.field private volatile e:I

.field private volatile f:Lcom/android/server/wm/m;

.field private volatile g:Lcom/android/server/wm/ActivityStack;

.field private volatile h:Lcom/android/server/wm/DisplayContent;

.field private volatile i:Lcom/android/server/wm/DisplayContent;

.field private volatile j:I

.field private volatile k:Z

.field private volatile l:Lcom/android/server/wm/m;

.field private volatile m:Landroid/view/SurfaceControl;

.field private volatile n:I

.field private volatile o:I

.field private volatile p:Landroid/graphics/Rect;

.field private volatile q:Landroid/graphics/Rect;

.field private volatile r:Landroid/graphics/Rect;

.field private volatile s:Landroid/graphics/Rect;

.field private volatile t:Z

.field private volatile u:Lcom/android/server/wm/u;

.field private volatile v:Lcom/android/server/wm/ActivityRecord;

.field private volatile w:Z

.field private volatile x:I

.field private final y:Ljava/lang/Object;

.field private volatile z:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/w;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/v;->a:Z

    iput-boolean v0, p0, Lcom/android/server/wm/v;->b:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/v;->d:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/server/wm/v;->k:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/server/wm/v;->x:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/wm/v;->A:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/v;->B:I

    iput-boolean v0, p0, Lcom/android/server/wm/v;->C:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/v;->E:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/v;->F:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    :try_start_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x111010c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/v;->a:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MoveToDisplayService init, usePassiveFlyingScreen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/v;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MoveToDisplayService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10700b3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read support_move_to_display_package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/v;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic A(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->G:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/v;->H:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private synthetic C(II)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/v;->k:Z

    iget-object v0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const v3, 0x3f553f7d    # 0.833f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3f553f7d    # 0.833f

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v1}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean v0, p0, Lcom/android/server/wm/v;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/v;->t:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/v;->b(II)V

    :cond_0
    return-void
.end method

.method private O(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "MoveToDisplayService"

    const-string p1, "No launcher activity found, is there something wrong in your app?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string p2, "fromMoveToDisplayService"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/android/server/wm/v;)Lcom/android/server/wm/ActivityTaskManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method private h(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/v;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/v;->F(IILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flying screen failed: package not granted "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoveToDisplayService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private i(Lcom/android/server/wm/DisplayContent;)Z
    .locals 7

    const/4 p0, 0x0

    const-string v0, "MoveToDisplayService"

    if-nez p1, :cond_0

    const-string p1, "Display content null!"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const-string v2, "DisplayId:"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getTopStack null!"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const-string v4, " ActivityStack:"

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " getTopVisibleActivity null!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " topVisibleActivity state error:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-string v4, " Activity:"

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " findMainWindow null!"

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " WindowState:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mInputChannel null!"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private j(II)Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/v;->x:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/v;->x:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/v;->I(II)V

    return v3

    :cond_1
    iget v0, p0, Lcom/android/server/wm/v;->x:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/v;->H(II)V

    return v3

    :cond_2
    return v1

    :cond_3
    iget v0, p0, Lcom/android/server/wm/v;->x:I

    if-ne v0, v1, :cond_5

    if-eq p2, v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/v;->G(II)V

    return v3

    :cond_4
    return v1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Get unknown FlyingMode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/v;->x:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoveToDisplayService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private k()Z
    .locals 1

    iget p0, p0, Lcom/android/server/wm/v;->x:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private l(Lcom/android/server/wm/DisplayContent;)Landroid/view/SurfaceControl;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p0, v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v0, "FullDisplayScreenshotSurface"

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "from_display"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "to_display"

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generate intent by action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fromDisplayId:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " toDisplayId:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MoveToDisplayService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private r()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/v;->s()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "MoveToDisplayService"

    const-string v0, "Input method is showing, hide it."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod(I)V

    :cond_0
    return-void
.end method

.method static synthetic t(Ljava/lang/Runnable;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic u()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v1}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->m:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/v;->w:Z

    iget-object v0, p0, Lcom/android/server/wm/v;->u:Lcom/android/server/wm/u;

    invoke-virtual {v0}, Lcom/android/server/wm/u;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/v;->u:Lcom/android/server/wm/u;

    return-void
.end method

.method private synthetic w()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/wm/v;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MoveToDisplayService"

    const-string v2, "Try to reshow navigation bar, but still get current window state null. Is your activity resumed?"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowState;->showInsets(IZ)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowState;->showInsets(IZ)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/v;->C:Z

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    iget-object v0, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    const v9, 0x3e99999a    # 0.3f

    new-instance v10, Lcom/android/server/wm/k;

    invoke-direct {v10, p0}, Lcom/android/server/wm/k;-><init>(Lcom/android/server/wm/v;)V

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/v;->n(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl$Transaction;FLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic y()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v1}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {p0}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public synthetic B(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/v;->A(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public synthetic D(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/v;->C(II)V

    return-void
.end method

.method public E(IILjava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/h;

    invoke-interface {v3, p1, p2, p3, p4}, La/a/h;->h(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public F(IILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/h;

    invoke-interface {v3, p1, p2, p3}, La/a/h;->a(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public G(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/h;

    invoke-interface {v3, p1, p2}, La/a/h;->x(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public H(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/h;

    invoke-interface {v3, p1, p2}, La/a/h;->f(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public I(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/h;

    invoke-interface {v3, p1, p2}, La/a/h;->b(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public J(IILjava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/h;

    invoke-interface {v3, p1, p2, p3, p4}, La/a/h;->y(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public K(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->E:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/v;->E:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, La/a/d;

    invoke-interface {v3, p1, p2, p3, p4}, La/a/d;->q(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/v;->E:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public L(La/a/h;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "MoveToDisplayService"

    const-string v2, "registerFlyingStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public M(La/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "MoveToDisplayService"

    const-string v2, "registerTopStackExchangeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/v;->E:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public N(I)Z
    .locals 1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/server/wm/v;->x:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support this flying screen mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MoveToDisplayService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public P(La/a/h;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "MoveToDisplayService"

    const-string v2, "unRegisterFlyingStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/v;->D:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Q(La/a/d;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/v;->y:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "MoveToDisplayService"

    const-string v2, "unRegisterTopStackExchangeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/v;->E:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/v;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelMoveTopStackToDisplay, from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveToDisplayService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/v;->b:Z

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    const-string v0, "MoveToDisplayService"

    const-string v1, "Get top resume activity error. Anyway, we still send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "null"

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "FLY_SCREEN_CANCEL"

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/wm/v;->q(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(II)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/wm/v;->k:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/v;->t:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/v;->z:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/v;->z:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez p2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v1}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    iget-object v0, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    new-instance v8, Lcom/android/server/wm/j;

    invoke-direct {v8, p0}, Lcom/android/server/wm/j;-><init>(Lcom/android/server/wm/v;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/v;->n(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl$Transaction;FLjava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/v;->o(I)V

    iget-object v0, p0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEndFlyingScreen,fromDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName: userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoveToDisplayService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/v;->E(IILjava/lang/String;I)V

    return-void
.end method

.method public c(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/v;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareMoveTopStackToDisplay, from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveToDisplayService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/v;->b:Z

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "TRY_FLY_SCREEN"

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/wm/v;->q(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public d(II)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, p2

    iget-boolean v2, v0, Lcom/android/server/wm/v;->a:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/v;->m(II)V

    return v10

    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/v;->j(II)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flying screen banned by flying mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/v;->x:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveToDisplayService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    iget-boolean v2, v0, Lcom/android/server/wm/v;->w:Z

    if-eqz v2, :cond_2

    return v11

    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v12

    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v0, v2}, Lcom/android/server/wm/v;->h(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v12

    return v11

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/v;->r()V

    const-string v2, "MoveToDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start move "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from display:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, v0, Lcom/android/server/wm/v;->k:Z

    iput-boolean v10, v0, Lcom/android/server/wm/v;->w:Z

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/v;->z:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-static {v2}, Lcom/android/server/wm/m;->a(Lcom/android/server/wm/Task;)Lcom/android/server/wm/m;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    iget-object v2, v0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-static {v2}, Lcom/android/server/wm/m;->a(Lcom/android/server/wm/Task;)Lcom/android/server/wm/m;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    iget-object v2, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-nez v2, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->c()V

    iget-object v2, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    iget-object v3, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v3, v2, Lcom/android/server/wm/m;->e:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->c()V

    new-instance v2, Lcom/android/server/wm/u;

    iget-object v3, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/u;-><init>(Lcom/android/server/wm/v;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, v0, Lcom/android/server/wm/v;->u:Lcom/android/server/wm/u;

    iget-object v2, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v3}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/v;->u:Lcom/android/server/wm/u;

    iget-object v4, v4, Lcom/android/server/wm/u;->e:Landroid/view/InputWindowHandle;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v3}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v3}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v2}, Lcom/android/server/wm/v;->l(Lcom/android/server/wm/DisplayContent;)Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->m:Landroid/view/SurfaceControl;

    iget-object v2, v0, Lcom/android/server/wm/v;->m:Landroid/view/SurfaceControl;

    if-nez v2, :cond_6

    const-string v0, "MoveToDisplayService"

    const-string v1, "Create display shot failed! Is your top activity Resumed?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    return v11

    :cond_6
    iget-object v2, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->m:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->m:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v11}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->m:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, v0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, v0, Lcom/android/server/wm/v;->u:Lcom/android/server/wm/u;

    iget-object v4, v4, Lcom/android/server/wm/u;->a:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    iget-object v2, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v2}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e2b020c    # 0.167f

    mul-float/2addr v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/wm/v;->e:I

    iget-object v4, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/wm/v;->j:I

    iget-object v4, v0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v0, Lcom/android/server/wm/v;->e:I

    add-int/2addr v7, v8

    iget-object v8, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v13, v0, Lcom/android/server/wm/v;->j:I

    add-int/2addr v8, v13

    iget-object v13, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    iget v14, v0, Lcom/android/server/wm/v;->e:I

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget v15, v0, Lcom/android/server/wm/v;->j:I

    sub-int/2addr v14, v15

    invoke-virtual {v4, v7, v8, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/wm/v;->n:I

    iget-object v4, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Lcom/android/server/wm/v;->o:I

    iget-object v4, v0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v0, Lcom/android/server/wm/v;->n:I

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v0, Lcom/android/server/wm/v;->o:I

    add-int/2addr v6, v7

    iget-object v7, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v0, Lcom/android/server/wm/v;->n:I

    sub-int/2addr v7, v8

    iget-object v8, v0, Lcom/android/server/wm/v;->q:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v13, v0, Lcom/android/server/wm/v;->o:I

    sub-int/2addr v8, v13

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v4}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v5}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v5}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v13

    iget-object v4, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v4}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    const v4, 0x3f553f7d    # 0.833f

    mul-float v15, v2, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    mul-float v18, v3, v4

    invoke-virtual/range {v13 .. v18}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v3}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v9, :cond_7

    iget-object v4, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_0
    int-to-float v4, v4

    goto :goto_1

    :cond_7
    iget-object v4, v0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    goto :goto_0

    :goto_1
    iget-object v5, v0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v2, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const-string v4, "MoveToDisplayService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyStartFlyingScreen,fromDisplayId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " toDisplayId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/server/wm/v;->J(IILjava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/wm/v;->p:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/v;->r:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    iget-object v6, v0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v6}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    const v7, 0x3e99999a    # 0.3f

    new-instance v8, Lcom/android/server/wm/h;

    invoke-direct {v8, v0, v1, v9}, Lcom/android/server/wm/h;-><init>(Lcom/android/server/wm/v;II)V

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/v;->n(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl$Transaction;FLjava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/server/wm/v;->g:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v3, :cond_8

    if-nez v2, :cond_8

    iput-boolean v10, v0, Lcom/android/server/wm/v;->C:Z

    invoke-virtual {v1, v10, v11}, Lcom/android/server/wm/WindowState;->hideInsets(IZ)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v11}, Lcom/android/server/wm/WindowState;->hideInsets(IZ)V

    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/v;->v:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v0, v1, v9}, Lcom/android/server/wm/v;->O(Lcom/android/server/wm/ActivityRecord;I)V

    monitor-exit v12

    return v10

    :cond_9
    :goto_2
    const-string v0, "MoveToDisplayService"

    const-string v1, "Create task shot failed! Is your top activity Resumed?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    return v11

    :cond_a
    :goto_3
    monitor-exit v12

    return v11

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/v;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerMoveTopStackToDisplay, from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveToDisplayService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/v;->b:Z

    iget-object v2, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const-string v0, "MoveToDisplayService"

    const-string v1, "Get top resume activity error. Anyway, we still send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "null"

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "FLY_SCREEN_IMPL"

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/android/server/wm/v;->q(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public f(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/v;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/wm/v;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/v;->e:I

    iget v0, p0, Lcom/android/server/wm/v;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/v;->n:I

    iget p1, p0, Lcom/android/server/wm/v;->e:I

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/server/wm/v;->n:I

    iget v0, p0, Lcom/android/server/wm/v;->e:I

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/v;->n:I

    iput v1, p0, Lcom/android/server/wm/v;->e:I

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/v;->h:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e2b020c    # 0.167f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/android/server/wm/v;->e:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/v;->n:I

    iget v1, p0, Lcom/android/server/wm/v;->e:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/v;->n:I

    iput p1, p0, Lcom/android/server/wm/v;->e:I

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/v;->z:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/v;->f:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/v;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/v;->j:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/v;->n:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/server/wm/v;->o:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public m(II)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/v;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "directMoveTopStackWithoutAnimation, from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoveToDisplayService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/v;->J(IILjava/lang/String;I)V

    const-string v2, "MoveToDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStartFlyingScreen,fromDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " toDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/v;->O(Lcom/android/server/wm/ActivityRecord;I)V

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/wm/v;->E(IILjava/lang/String;I)V

    const-string p0, "MoveToDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEndFlyingScreen,fromDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " toDisplayId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "MoveToDisplayService"

    const-string p1, "Direct fly screen error, current display state unavailable!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public n(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl$Transaction;FLjava/lang/Runnable;)V
    .locals 8

    new-instance v7, Lcom/android/server/wm/WindowChangeAnimationSpec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    new-instance p1, Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object p2, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p1, v7, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    new-instance p2, Lcom/android/server/wm/SurfaceAnimator;

    if-nez p7, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/server/wm/g;

    invoke-direct {p3, p7}, Lcom/android/server/wm/g;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p2, p4, p3, p0}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    const/4 p0, 0x0

    const/16 p3, 0x10

    invoke-virtual {p2, p5, p1, p0, p3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method

.method o(I)V
    .locals 8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {p1}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {v0}, Lcom/android/server/wm/m;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/v;->s:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/android/server/wm/v;->i:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    iget-object p1, p0, Lcom/android/server/wm/v;->l:Lcom/android/server/wm/m;

    invoke-virtual {p1}, Lcom/android/server/wm/m;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v7, Lcom/android/server/wm/i;

    invoke-direct {v7, p0}, Lcom/android/server/wm/i;-><init>(Lcom/android/server/wm/v;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/v;->n(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl$Transaction;FLjava/lang/Runnable;)V

    return-void
.end method

.method public p(II)Z
    .locals 12

    invoke-direct {p0}, Lcom/android/server/wm/v;->k()Z

    move-result v0

    const-string v1, "MoveToDisplayService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exchange display banned by flying mode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/v;->x:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/v;->w:Z

    if-eqz v0, :cond_1

    const-string p0, "Can not exchange display top stack when flying screen, failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lcom/android/server/wm/v;->i(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/server/wm/v;->h(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v7}, Lcom/android/server/wm/v;->h(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/v;->r()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exchangeDisplayTopStack: displayIds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/wm/v;->l(Lcom/android/server/wm/DisplayContent;)Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/v;->G:Landroid/view/SurfaceControl;

    invoke-direct {p0, v3}, Lcom/android/server/wm/v;->l(Lcom/android/server/wm/DisplayContent;)Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/v;->H:Landroid/view/SurfaceControl;

    iget-object v9, p0, Lcom/android/server/wm/v;->G:Landroid/view/SurfaceControl;

    if-eqz v9, :cond_5

    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/v;->G:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, p1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/v;->G:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/v;->G:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/v;->H:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, p2}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/v;->H:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/v;->H:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v8, p0, Lcom/android/server/wm/v;->F:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/wm/l;

    invoke-direct {v9, p0, v0, v3}, Lcom/android/server/wm/l;-><init>(Lcom/android/server/wm/v;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    :try_start_0
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-static {v3, v8}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v8, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    iget-object v3, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->moveStackToDisplay(II)V

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v4, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v4, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    iget-object v3, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v5, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->moveStackToDisplay(II)V

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-static {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    iget-object v4, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    iget-object v3, p0, Lcom/android/server/wm/v;->c:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange display remoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/server/wm/v;->K(Ljava/lang/String;ILjava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTopStackExchanged: packageName1:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayId1:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName2:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", displayId2:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    :goto_1
    const-string p0, "Create task shot failed! Is your top activity Resumed?"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    :goto_2
    const-string p0, "Top stack conditions are not met, failed."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return v2
.end method

.method public s()Z
    .locals 0

    const-class p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;->isInputShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic v()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/v;->u()V

    return-void
.end method

.method public synthetic x()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/v;->w()V

    return-void
.end method

.method public synthetic z()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/v;->y()V

    return-void
.end method
