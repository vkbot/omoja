.class public Lcom/mega/nexus/bluetooth/MegaBluetoothManager;
.super Ljava/lang/Object;
.source "MegaBluetoothManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factoryReset(Landroid/bluetooth/BluetoothManager;)V
    .locals 1
    .param p0, "manager"    # Landroid/bluetooth/BluetoothManager;

    .line 8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 9
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 10
    return-void
.end method
