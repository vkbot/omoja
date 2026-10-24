.class public Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static g:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/hardware/input/InputManager;

.field public c:Lk1/a;

.field public final d:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final e:Lcom/callisto/auto/gatherer/model/PerInfo;

.field public f:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    iput-object p1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->a:Landroid/content/Context;

    new-instance p1, Lcom/callisto/auto/gatherer/model/PerInfo;

    invoke-direct {p1}, Lcom/callisto/auto/gatherer/model/PerInfo;-><init>()V

    iput-object p1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->e:Lcom/callisto/auto/gatherer/model/PerInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->a:Landroid/content/Context;

    :try_start_0
    new-instance v1, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-direct {v1, v0}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->f:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->f:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->c:Lk1/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_0

    :try_start_2
    new-instance v1, Lk1/a;

    invoke-direct {v1, p0}, Lk1/a;-><init>(Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;)V

    iput-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->c:Lk1/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->b:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->c:Lk1/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final b(Lcom/callisto/auto/gatherer/model/PerInfo;)V
    .locals 2

    const-string v0, "b010703"

    iget-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->d:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v1, v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    const-string p1, "callisto_vdr"

    const-string v0, "Get event:b010703"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->f:Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->b:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->c:Lk1/a;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "UsbBroadcastReceiver"

    const-string v0, "USB device detached: "

    const-string v1, "USB device attached: "

    const-string v2, "onReceive: "

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "device"

    iget-object v5, p0, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->e:Lcom/callisto/auto/gatherer/model/PerInfo;

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ProductName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; ProductId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; ManufacturerName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setPerDevice(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setProductName(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setProductId(I)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setManufacturerName(Ljava/lang/String;)V

    const-string p1, "attached"

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setPerStat(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->b(Lcom/callisto/auto/gatherer/model/PerInfo;)V

    goto :goto_0

    :cond_0
    const-string p2, "USB device attached is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setPerDevice(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setProductName(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setProductId(I)V

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setManufacturerName(Ljava/lang/String;)V

    const-string p1, "detached"

    invoke-virtual {v5, p1}, Lcom/callisto/auto/gatherer/model/PerInfo;->setPerStat(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/callisto/auto/gatherer/receiver/UsbInputDeviceReceiver;->b(Lcom/callisto/auto/gatherer/model/PerInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
