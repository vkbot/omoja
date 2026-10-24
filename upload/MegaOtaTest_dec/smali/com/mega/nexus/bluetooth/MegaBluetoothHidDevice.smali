.class public Lcom/mega/nexus/bluetooth/MegaBluetoothHidDevice;
.super Ljava/lang/Object;
.source "MegaBluetoothHidDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setConnectionPolicy(Landroid/bluetooth/BluetoothHidDevice;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "hidDevice"    # Landroid/bluetooth/BluetoothHidDevice;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "policy"    # I

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method
