.class final Lmega/car/input/CarInputManager$ICarInputCallbackImpl;
.super Lmega/car/input/ICarInputCallback$Stub;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ICarInputCallbackImpl"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmega/car/input/CarInputManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lmega/car/input/CarInputManager;)V
    .locals 1
    .param p1, "manager"    # Lmega/car/input/CarInputManager;

    .line 438
    invoke-direct {p0}, Lmega/car/input/ICarInputCallback$Stub;-><init>()V

    .line 439
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    .line 440
    return-void
.end method

.method synthetic constructor <init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$1;)V
    .locals 0
    .param p1, "x0"    # Lmega/car/input/CarInputManager;
    .param p2, "x1"    # Lmega/car/input/CarInputManager$1;

    .line 435
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Lmega/car/input/CarInputManager;)V

    return-void
.end method


# virtual methods
.method public onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 3
    .param p1, "event"    # Lmega/car/input/CustomInputEvent;

    .line 454
    iget-object v0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/input/CarInputManager;

    .line 455
    .local v0, "manager":Lmega/car/input/CarInputManager;
    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "warning, null weak reference for manager"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void

    .line 459
    :cond_0
    invoke-static {v0, p1}, Lmega/car/input/CarInputManager;->access$300(Lmega/car/input/CarInputManager;Lmega/car/input/CustomInputEvent;)V

    .line 460
    return-void
.end method

.method public onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 3
    .param p1, "event"    # Lmega/car/input/CustomRotaryEvent;

    .line 464
    iget-object v0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/input/CarInputManager;

    .line 465
    .local v0, "manager":Lmega/car/input/CarInputManager;
    if-nez v0, :cond_0

    .line 466
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "warning, null weak reference for manager"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void

    .line 469
    :cond_0
    invoke-static {v0, p1}, Lmega/car/input/CarInputManager;->access$400(Lmega/car/input/CarInputManager;Lmega/car/input/CustomRotaryEvent;)V

    .line 470
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 444
    iget-object v0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/input/CarInputManager;

    .line 445
    .local v0, "manager":Lmega/car/input/CarInputManager;
    if-nez v0, :cond_0

    .line 446
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "warning, null weak reference for manager"

    invoke-static {v1, v2}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void

    .line 449
    :cond_0
    invoke-static {v0, p1}, Lmega/car/input/CarInputManager;->access$200(Lmega/car/input/CarInputManager;Landroid/view/KeyEvent;)V

    .line 450
    return-void
.end method
