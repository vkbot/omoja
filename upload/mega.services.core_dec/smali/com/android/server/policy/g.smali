.class public Lcom/android/server/policy/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final D:Ljava/lang/String; = "MegaSystemGestures"

.field public static final E:Ljava/lang/String; = "global_swipe_from_left"

.field public static final F:Ljava/lang/String; = "global_swipe_from_top"

.field public static final G:Ljava/lang/String; = "global_swipe_from_right"

.field public static final H:Ljava/lang/String; = "global_swipe_from_bottom"

.field private static final I:Z = true

.field private static final J:I = 0x20

.field private static final K:I = -0x1

.field private static final L:I = 0x1

.field private static final M:I = 0x2

.field private static final N:I = -0x1

.field private static final O:I = 0x2

.field private static final P:I = 0x4

.field private static final Q:I = 0x5

.field private static final R:I = 0x0

.field private static final S:I = 0x0

.field private static final T:I = 0x1

.field private static final U:I = 0x2

.field private static final V:I = 0x3

.field private static final W:I = 0x4

.field private static final X:J = 0x1f4L

.field private static final Y:Ljava/lang/String; = "chery.projection.four.finger.slide"

.field private static final Z:Ljava/lang/String; = "slide_direction"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Landroid/view/InputMonitor;

.field private g:Landroid/view/InputEventReceiver;

.field private final h:[J

.field private final i:[I

.field private final j:[F

.field private final k:[F

.field private l:I

.field private m:I

.field private n:I

.field private final o:Lcom/android/server/policy/f;

.field private p:Z

.field private q:Landroid/graphics/Point;

.field private r:Landroid/graphics/Point;

.field private s:Landroid/content/Context;

.field t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/policy/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/policy/g;->h:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/policy/g;->i:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/g;->j:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/policy/g;->k:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/g;->l:I

    iput v0, p0, Lcom/android/server/policy/g;->m:I

    iput v0, p0, Lcom/android/server/policy/g;->n:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/g;->q:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/g;->u:I

    iput v0, p0, Lcom/android/server/policy/g;->v:I

    if-eqz p2, :cond_1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create context for display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error! Use default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaSystemGestures"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    :cond_2
    iput p2, p0, Lcom/android/server/policy/g;->t:I

    iput-object p3, p0, Lcom/android/server/policy/g;->o:Lcom/android/server/policy/f;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x111009d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/policy/g;->A:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x111009e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/policy/g;->B:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x111009c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/g;->C:Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mega-system-gesture-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/g;->f:Landroid/view/InputMonitor;

    new-instance p1, Lcom/android/server/policy/e;

    iget-object p2, p0, Lcom/android/server/policy/g;->f:Landroid/view/InputMonitor;

    invoke-virtual {p2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/policy/e;-><init>(Lcom/android/server/policy/g;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/policy/g;->g:Landroid/view/InputEventReceiver;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/graphics/Point;)I
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    int-to-double v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-int/2addr v1, p0

    return v1
.end method

.method private b(Landroid/view/MotionEvent;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    int-to-float v0, v0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private c(Landroid/view/MotionEvent;)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge p0, v1, :cond_0

    int-to-float v0, v0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private d(Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/g;->k(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/g;->j:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/server/policy/g;->k:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v2, v1

    iget-object p2, p0, Lcom/android/server/policy/g;->h:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    aput-wide v2, p2, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pointer "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " down x="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/policy/g;->j:[F

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/g;->k:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MegaSystemGestures"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/g;->e:I

    iput v0, p0, Lcom/android/server/policy/g;->l:I

    iput v0, p0, Lcom/android/server/policy/g;->m:I

    iput-boolean v0, p0, Lcom/android/server/policy/g;->p:Z

    return-void
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/policy/g;->w:Z

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/g;->k:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/g;->j:[F

    aget v6, v6, v2

    sub-float/2addr v5, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/server/policy/g;->b:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    iget-boolean p1, p0, Lcom/android/server/policy/g;->y:Z

    if-eqz p1, :cond_4

    const-string p1, "MegaSystemGestures"

    const-string v0, "chery TwoFinger left slide."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string v0, "chery.map.projection.screen"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-boolean v1, p0, Lcom/android/server/policy/g;->y:Z

    :cond_4
    :goto_3
    return-void
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/policy/g;->p()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/android/server/policy/g;->x:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    move v4, v0

    move v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/g;->k:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/policy/g;->j:[F

    aget v8, v8, v3

    sub-float/2addr v7, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/server/policy/g;->b:I

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_1

    cmpg-float v9, v6, v8

    if-gez v9, :cond_1

    move v9, v0

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    iget v10, p0, Lcom/android/server/policy/g;->b:I

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2

    cmpg-float v6, v6, v8

    if-gez v6, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-nez v9, :cond_3

    move v4, v2

    :cond_3
    if-nez v6, :cond_4

    move v5, v2

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/android/server/policy/g;->y:Z

    if-nez p1, :cond_8

    return-void

    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "chery.projection.four.finger.slide"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "right"

    const-string v1, "left"

    const-string v3, "slide_direction"

    if-eqz v4, :cond_9

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FourFinger "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_b

    move-object v0, v1

    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slide"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaSystemGestures"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-boolean v2, p0, Lcom/android/server/policy/g;->y:Z

    :cond_c
    :goto_4
    return-void
.end method

.method private h(Landroid/view/MotionEvent;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/server/policy/g;->p:Z

    if-nez v3, :cond_0

    return v1

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/g;->p:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/policy/g;->l:I

    if-eq v3, v0, :cond_2

    iput v0, p0, Lcom/android/server/policy/g;->l:I

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->o(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->b(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->c(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->a(Landroid/view/MotionEvent;Landroid/graphics/Point;)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/g;->n:I

    return v2
.end method

.method private i(IJFF)I
    .locals 5

    iget v0, p0, Lcom/android/server/policy/g;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/g;->v:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/g;->n()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/g;->j:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/server/policy/g;->k:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/server/policy/g;->h:[J

    aget-wide v2, v2, p1

    sub-long/2addr p2, v2

    iget p1, p0, Lcom/android/server/policy/g;->a:I

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    const-wide/16 v2, 0x1f4

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/android/server/policy/g;->b:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    cmpl-float p1, p5, p1

    if-lez p1, :cond_2

    cmp-long p1, p2, v2

    if-gez p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget p1, p0, Lcom/android/server/policy/g;->v:I

    iget v4, p0, Lcom/android/server/policy/g;->a:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/android/server/policy/g;->b:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    cmpg-float p1, p5, v1

    if-gez p1, :cond_3

    cmp-long p1, p2, v2

    if-gez p1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    iget p1, p0, Lcom/android/server/policy/g;->u:I

    iget p5, p0, Lcom/android/server/policy/g;->a:I

    sub-int/2addr p1, p5

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_4

    iget p1, p0, Lcom/android/server/policy/g;->b:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_4

    cmp-long p1, p2, v2

    if-gez p1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    iget p1, p0, Lcom/android/server/policy/g;->a:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_5

    iget p0, p0, Lcom/android/server/policy/g;->b:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p4, v0

    if-lez p0, :cond_5

    cmp-long p0, p2, v2

    if-gez p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private j(Landroid/view/MotionEvent;)I
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/g;->k(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v11, v2

    :goto_1
    if-ge v11, v0, :cond_1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/g;->i(IJFF)I

    move-result v5

    if-eqz v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/g;->i(IJFF)I

    move-result v4

    if-eqz v4, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private k(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/policy/g;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/g;->i:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/g;->i:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/policy/g;->e:I

    aput p1, v0, v1

    add-int/lit8 v2, v2, -0x1

    :cond_3
    :goto_1
    return v2
.end method

.method private l(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/g;->z:Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    iput-object v0, p0, Lcom/android/server/policy/g;->z:Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/g;->z:Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;->getCurTokenDisplayId()I

    move-result v0

    iget v2, p0, Lcom/android/server/policy/g;->t:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/g;->z:Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodShownService;->isInputShown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/g;->A:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/g;->B:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    :cond_3
    iget-boolean p0, p0, Lcom/android/server/policy/g;->C:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private m(Landroid/view/MotionEvent;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCaptureDown, pointerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaSystemGestures"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->d(Landroid/view/MotionEvent;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/server/policy/g;->t:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/server/policy/g;->u:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/policy/g;->v:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v2, v0, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/g;->a:I

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/g;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/g;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size:  mScreenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/g;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScreenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/g;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSwipeStartThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSwipeDistanceThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/g;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MegaSystemGestures"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private o(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/g;->q:Landroid/graphics/Point;

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->b(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->c(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/server/policy/g;->q:Landroid/graphics/Point;

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->a(Landroid/view/MotionEvent;Landroid/graphics/Point;)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/g;->m:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mStartCatchCenter = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/policy/g;->q:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mStartCatchVariance = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/policy/g;->m:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MegaSystemGestures"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/g;->p:Z

    return p1
.end method

.method private p()Z
    .locals 1

    const-string p0, "ro.product.name"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "lajolla"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private q(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pointer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pointerIndex="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trackingIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/policy/g;->k(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MegaSystemGestures"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    const-string v3, "MegaSystemGestures"

    if-eq v0, v2, :cond_11

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    if-eq v0, v4, :cond_11

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_0
    const-string v0, "ACTION_POINTER_UP"

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->q(Landroid/view/MotionEvent;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "ACTION_POINTER_DOWN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->q(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->m(Landroid/view/MotionEvent;I)V

    iput-boolean v2, p0, Lcom/android/server/policy/g;->w:Z

    goto/16 :goto_5

    :cond_2
    if-le v0, v6, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/g;->f:Landroid/view/InputMonitor;

    invoke-virtual {v3}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_3
    if-le v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->d(Landroid/view/MotionEvent;I)V

    iput-boolean v1, p0, Lcom/android/server/policy/g;->w:Z

    iput-boolean v1, p0, Lcom/android/server/policy/g;->x:Z

    goto/16 :goto_5

    :cond_4
    if-ne v0, v5, :cond_15

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->m(Landroid/view/MotionEvent;I)V

    iput-boolean v2, p0, Lcom/android/server/policy/g;->x:Z

    goto/16 :goto_5

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->h(Landroid/view/MotionEvent;)I

    move-result v0

    if-ne v0, v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POINTER_CATCH_EVENT_START mStartCatchCenter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/g;->q:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mStartCatchVariance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/g;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/g;->o:Lcom/android/server/policy/f;

    iget-object v1, p0, Lcom/android/server/policy/g;->q:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/policy/g;->m:I

    iget v3, p0, Lcom/android/server/policy/g;->t:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/policy/f;->b(Landroid/view/MotionEvent;Landroid/graphics/Point;II)V

    goto/16 :goto_2

    :cond_6
    if-ne v0, v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POINTER_CATCH_EVENT_MOVE mMoveCenter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mMoveVariance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/g;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/g;->o:Lcom/android/server/policy/f;

    iget-object v1, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/policy/g;->n:I

    iget v3, p0, Lcom/android/server/policy/g;->t:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/policy/f;->c(Landroid/view/MotionEvent;Landroid/graphics/Point;II)V

    iget-object v0, p0, Lcom/android/server/policy/g;->o:Lcom/android/server/policy/f;

    invoke-virtual {v0}, Lcom/android/server/policy/f;->e()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/policy/g;->o:Lcom/android/server/policy/f;

    iget-object v1, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/policy/g;->t:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/policy/f;->g(Landroid/view/MotionEvent;Landroid/graphics/Point;I)V

    goto/16 :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/g;->c:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->j(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_8

    move v7, v2

    goto :goto_0

    :cond_8
    move v7, v1

    :goto_0
    iput-boolean v7, p0, Lcom/android/server/policy/g;->c:Z

    const-string v7, "mega.disable.sys.gesture"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    shl-int v8, v2, v8

    and-int/2addr v8, v7

    if-eqz v8, :cond_9

    move v1, v2

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "swipe="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " sysValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " display="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " disableForCurDisplay="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x0

    if-ne v0, v2, :cond_b

    const-string v1, "Firing onSwipeFromTop"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "global_swipe_from_top"

    goto :goto_1

    :cond_b
    if-ne v0, v6, :cond_c

    const-string v1, "Firing onSwipeFromBottom"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "global_swipe_from_bottom"

    goto :goto_1

    :cond_c
    if-ne v0, v4, :cond_d

    const-string v1, "Firing onSwipeFromRight"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "global_swipe_from_right"

    goto :goto_1

    :cond_d
    if-ne v0, v5, :cond_e

    const-string v1, "Firing onSwipeFromLeft"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/policy/g;->d:Z

    const-string v1, "global_swipe_from_left"

    :cond_e
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/g;->l(I)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "swipe "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is forbidden."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    if-eqz v1, :cond_10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/policy/g;->t:I

    const-string v2, "display_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/g;->s:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_10
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->f(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/g;->g(Landroid/view/MotionEvent;)V

    goto :goto_5

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/policy/g;->p:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/g;->o:Lcom/android/server/policy/f;

    iget-object v2, p0, Lcom/android/server/policy/g;->r:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/server/policy/g;->n:I

    iget v5, p0, Lcom/android/server/policy/g;->t:I

    invoke-virtual {v0, p1, v2, v4, v5}, Lcom/android/server/policy/f;->a(Landroid/view/MotionEvent;Landroid/graphics/Point;II)V

    const-string p1, "Get ACTION_UP or ACTION_CANCEL when pointer catch, reset"

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_13

    const-string v0, "ACTION_UP"

    goto :goto_3

    :cond_13
    const-string v0, "ACTION_CANCEL"

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->q(Landroid/view/MotionEvent;Ljava/lang/String;)V

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/policy/g;->p:Z

    iput-boolean v1, p0, Lcom/android/server/policy/g;->c:Z

    iput-boolean v1, p0, Lcom/android/server/policy/g;->d:Z

    iput-boolean v1, p0, Lcom/android/server/policy/g;->w:Z

    iput-boolean v1, p0, Lcom/android/server/policy/g;->x:Z

    iput-boolean v1, p0, Lcom/android/server/policy/g;->y:Z

    goto :goto_5

    :cond_14
    iput-boolean v2, p0, Lcom/android/server/policy/g;->c:Z

    iput-boolean v2, p0, Lcom/android/server/policy/g;->y:Z

    invoke-direct {p0}, Lcom/android/server/policy/g;->e()V

    const-string v0, "ACTION_DOWN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/g;->q(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/g;->d(Landroid/view/MotionEvent;I)V

    :cond_15
    :goto_5
    return-void
.end method
