.class Lcom/android/server/policy/e;
.super Landroid/view/InputEventReceiver;
.source ""


# instance fields
.field final synthetic a:Lcom/android/server/policy/g;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/g;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/e;->a:Lcom/android/server/policy/g;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/e;->a:Lcom/android/server/policy/g;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/g;->onPointerEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    :goto_0
    return-void
.end method
