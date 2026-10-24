.class final Lmega/car/input/CarInputManager$ICarInputCallbackImpl;
.super Lmega/car/input/ICarInputCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    .line 2
    invoke-direct {p0}, Lmega/car/input/ICarInputCallback$Stub;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lmega/car/input/CarInputManager;Lmega/car/input/CarInputManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Lmega/car/input/CarInputManager;)V

    return-void
.end method


# virtual methods
.method public onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .locals 0
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/input/CarInputManager;

    if-nez p0, :cond_0

    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "warning, null weak reference for manager"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lmega/car/input/CarInputManager;->access$300(Lmega/car/input/CarInputManager;Lmega/car/input/CustomInputEvent;)V

    return-void
.end method

.method public onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 0
    .param p1    # Lmega/car/input/CustomRotaryEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/input/CarInputManager;

    if-nez p0, :cond_0

    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "warning, null weak reference for manager"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lmega/car/input/CarInputManager;->access$400(Lmega/car/input/CarInputManager;Lmega/car/input/CustomRotaryEvent;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmega/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/input/CarInputManager;

    if-nez p0, :cond_0

    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "warning, null weak reference for manager"

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Lmega/car/input/CarInputManager;->access$200(Lmega/car/input/CarInputManager;Landroid/view/KeyEvent;)V

    return-void
.end method
