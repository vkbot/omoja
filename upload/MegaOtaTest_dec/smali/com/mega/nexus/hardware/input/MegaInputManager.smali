.class public Lcom/mega/nexus/hardware/input/MegaInputManager;
.super Ljava/lang/Object;
.source "MegaInputManager.java"


# static fields
.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableInputDevice(Landroid/hardware/input/InputManager;I)V
    .locals 0
    .param p0, "inputManager"    # Landroid/hardware/input/InputManager;
    .param p1, "deviceId"    # I

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->disableInputDevice(I)V

    .line 51
    return-void
.end method

.method public static dispatchKeyEvent(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "downTime":J
    invoke-static {p1}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v2

    const-wide/16 v3, 0x32

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 58
    const-class v2, Landroid/media/session/MediaSessionManager;

    .line 59
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    .line 60
    invoke-static {p1, v5, v0, v1}, Lcom/mega/nexus/hardware/input/MegaInputManager;->makeKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v5

    .line 58
    invoke-static {v2, v5}, Lcom/mega/nexus/media/session/MegaMediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;)V

    .line 61
    new-instance v2, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$hX4RhIpu_mOwHd-Y6PpXSFxGTiU;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$hX4RhIpu_mOwHd-Y6PpXSFxGTiU;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 64
    :cond_0
    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    const-class v2, Landroid/hardware/input/InputManager;

    .line 77
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 78
    invoke-static {p1, v5, v0, v1}, Lcom/mega/nexus/hardware/input/MegaInputManager;->makeKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v6

    .line 76
    invoke-static {v2, v6, v5}, Lcom/mega/nexus/hardware/input/MegaInputManager;->injectInputEvent(Landroid/hardware/input/InputManager;Landroid/view/InputEvent;I)Z

    .line 80
    new-instance v2, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$RvbT_shnmhfJueJJStcZtow0w2Y;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$RvbT_shnmhfJueJJStcZtow0w2Y;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    const-class v2, Landroid/media/session/MediaSessionManager;

    .line 68
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    .line 69
    invoke-static {p1, v5, v0, v1}, Lcom/mega/nexus/hardware/input/MegaInputManager;->makeKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v5

    const/high16 v6, -0x80000000

    .line 67
    invoke-static {v2, v5, v6}, Lcom/mega/nexus/media/session/MegaMediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;I)V

    .line 71
    new-instance v2, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/mega/nexus/hardware/input/-$$Lambda$MegaInputManager$v2RZwyKSbTe4b8-4uXskwrlSyzc;-><init>(Landroid/content/Context;IJ)V

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :goto_1
    return-void
.end method

.method public static enableInputDevice(Landroid/hardware/input/InputManager;I)V
    .locals 0
    .param p0, "inputManager"    # Landroid/hardware/input/InputManager;
    .param p1, "deviceId"    # I

    .line 36
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->enableInputDevice(I)V

    .line 37
    return-void
.end method

.method public static injectInputEvent(Landroid/hardware/input/InputManager;Landroid/view/InputEvent;I)Z
    .locals 1
    .param p0, "inputManager"    # Landroid/hardware/input/InputManager;
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dispatchKeyEvent$0(Landroid/content/Context;IJ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I
    .param p2, "downTime"    # J

    .line 61
    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 63
    const/4 v1, 0x1

    invoke-static {p1, v1, p2, p3}, Lcom/mega/nexus/hardware/input/MegaInputManager;->makeKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/mega/nexus/media/session/MegaMediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic lambda$dispatchKeyEvent$1(Landroid/content/Context;IJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I
    .param p2, "downTime"    # J

    .line 71
    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    .line 73
    const/4 v1, 0x1

    invoke-static {p1, v1, p2, p3}, Lcom/mega/nexus/hardware/input/MegaInputManager;->makeKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v1

    .line 71
    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Lcom/mega/nexus/media/session/MegaMediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/media/session/MediaSessionManager;Landroid/view/KeyEvent;I)V

    return-void
.end method

.method static synthetic lambda$dispatchKeyEvent$2(Landroid/content/Context;IJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I
    .param p2, "downTime"    # J

    .line 80
    const-class v0, Landroid/hardware/input/InputManager;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 82
    const/4 v1, 0x1

    invoke-static {p1, v1, p2, p3}, Lcom/mega/nexus/hardware/input/MegaInputManager;->makeKeyEvent(IIJ)Landroid/view/KeyEvent;

    move-result-object v1

    .line 80
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mega/nexus/hardware/input/MegaInputManager;->injectInputEvent(Landroid/hardware/input/InputManager;Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private static makeKeyEvent(IIJ)Landroid/view/KeyEvent;
    .locals 17
    .param p0, "keyCode"    # I
    .param p1, "action"    # I
    .param p2, "downTime"    # J

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 89
    .local v13, "eventTime":J
    const/4 v15, 0x0

    .line 90
    .local v15, "repeat":I
    new-instance v16, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move-wide v3, v13

    move/from16 v5, p1

    move/from16 v6, p0

    move v7, v15

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    return-object v16
.end method
