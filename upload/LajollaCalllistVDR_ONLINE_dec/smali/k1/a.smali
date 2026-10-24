.class public final Lk1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic a:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;


# direct methods
.method public constructor <init>(Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;)V
    .locals 0

    iput-object p1, p0, Lk1/a;->a:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 3

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u5907\u5df2\u8fde\u63a5: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/callisto/auto/gatherer/model/PerInfo;

    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    const-string v2, "attached"

    invoke-direct {v0, v1, p1, v2}, Lcom/callisto/auto/gatherer/model/PerInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p1, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    iget-object p1, p0, Lk1/a;->a:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-virtual {p1, v0}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->b(Lcom/callisto/auto/gatherer/model/PerInfo;)V

    :cond_0
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u5907\u4fe1\u606f\u5df2\u66f4\u65b0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbBroadcastReceiver"

    invoke-static {v0, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 4

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/callisto/auto/gatherer/model/PerInfo;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v0

    const-string v3, "detached"

    invoke-direct {v1, v2, v0, v3}, Lcom/callisto/auto/gatherer/model/PerInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    iget-object v0, p0, Lk1/a;->a:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->b(Lcom/callisto/auto/gatherer/model/PerInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u5907\u5df2\u79fb\u9664: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbBroadcastReceiver"

    invoke-static {v0, p1}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
