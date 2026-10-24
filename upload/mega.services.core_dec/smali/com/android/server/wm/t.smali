.class Lcom/android/server/wm/t;
.super Landroid/view/InputEventReceiver;
.source ""


# instance fields
.field final synthetic a:Lcom/android/server/wm/v;

.field final synthetic b:Lcom/android/server/wm/u;


# direct methods
.method constructor <init>(Lcom/android/server/wm/u;Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/v;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/t;->b:Lcom/android/server/wm/u;

    iput-object p4, p0, Lcom/android/server/wm/t;->a:Lcom/android/server/wm/v;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method
