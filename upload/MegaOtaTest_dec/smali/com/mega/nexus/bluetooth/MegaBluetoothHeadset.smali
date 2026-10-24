.class public Lcom/mega/nexus/bluetooth/MegaBluetoothHeadset;
.super Ljava/lang/Object;
.source "MegaBluetoothHeadset.java"


# static fields
.field public static final ACTION_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 17
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 12
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static getActiveDevice(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;

    .line 37
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionPolicy(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 41
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static getPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 22
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static setActiveDevice(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 33
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static setConnectionPolicy(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "policy"    # I

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHeadset;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public static setPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 28
    invoke-static {p0, p1, p2}, Lcom/mega/nexus/bluetooth/MegaBluetoothHeadsetAdapter;->setPriority(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
