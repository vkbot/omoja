.class public interface abstract Lmega/car/input/CarInputManager$CarInputCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarInputCaptureCallback"
.end annotation


# virtual methods
.method public abstract onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 2
    .param p1    # Lmega/car/input/CustomRotaryEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCustomRotaryEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract onCustomerKeyLongPress(Lmega/car/input/CustomInputEvent;)V
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onInterceptRotaryEvent(Lmega/car/input/CustomRotaryEvent;)Z
    .locals 2
    .param p1    # Lmega/car/input/CustomRotaryEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onInterceptRotaryEvent, default return false for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onInterceptTouchEvent(Lmega/car/input/CustomInputEvent;)Z
    .param p1    # Lmega/car/input/CustomInputEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onKeyEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/car/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
