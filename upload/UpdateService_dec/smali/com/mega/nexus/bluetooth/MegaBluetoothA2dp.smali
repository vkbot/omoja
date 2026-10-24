.class public Lcom/mega/nexus/bluetooth/MegaBluetoothA2dp;
.super Ljava/lang/Object;
.source "MegaBluetoothA2dp.java"


# static fields
.field public static final ACTION_ACTIVE_DEVICE_CHANGED:Ljava/lang/String; = "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

.field public static final OPTIONAL_CODECS_PREF_DISABLED:I = 0x0

.field public static final OPTIONAL_CODECS_PREF_ENABLED:I = 0x1

.field public static final OPTIONAL_CODECS_PREF_UNKNOWN:I = -0x1

.field public static final OPTIONAL_CODECS_SUPPORTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 33
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static disableOptionalCodecs(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 52
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 53
    return-void
.end method

.method public static disconnect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 28
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static enableOptionalCodecs(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 49
    return-void
.end method

.method public static getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;

    .line 78
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getCodecStatus(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 70
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectedDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothA2dp;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getConnectionPolicy(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 116
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static getConnectionState(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 108
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static getDevicesMatchingConnectionStates(Landroid/bluetooth/BluetoothA2dp;[I)Ljava/util/List;
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothA2dp;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 38
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static isAvrcpAbsoluteVolumeSupported(Landroid/bluetooth/BluetoothA2dp;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;

    .line 82
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    return v0
.end method

.method public static isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 60
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static isOptionalCodecsSupported(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 56
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsSupported(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public static setActiveDevice(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 74
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static setAvrcpAbsoluteVolume(Landroid/bluetooth/BluetoothA2dp;I)V
    .locals 0
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "volume"    # I

    .line 86
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 87
    return-void
.end method

.method public static setCodecConfigPreference(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 0
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 96
    return-void
.end method

.method public static setConnectionPolicy(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "policy"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public static setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 66
    return-void
.end method

.method public static setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public static shouldSendVolumeKeys(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 90
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->shouldSendVolumeKeys(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isA2dpPlaying(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "service"    # Landroid/bluetooth/BluetoothA2dp;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 112
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
