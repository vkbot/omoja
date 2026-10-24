.class public interface abstract Lmega/car/input/CarInputManager$CarInputCaptureCallback;
.super Ljava/lang/Object;
.source "CarInputManager.java"


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
.end method

.method public onCustomRotaryEvent(Lmega/car/input/CustomRotaryEvent;)V
    .locals 3
    .param p1, "event"    # Lmega/car/input/CustomRotaryEvent;

    .line 91
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomRotaryEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public abstract onCustomerKeyLongPress(Lmega/car/input/CustomInputEvent;)V
.end method

.method public onInterceptRotaryEvent(Lmega/car/input/CustomRotaryEvent;)Z
    .locals 3
    .param p1, "event"    # Lmega/car/input/CustomRotaryEvent;

    .line 86
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptRotaryEvent, default return false for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onInterceptTouchEvent(Lmega/car/input/CustomInputEvent;)Z
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 57
    invoke-static {}, Lmega/car/input/CarInputManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method
