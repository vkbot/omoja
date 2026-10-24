.class public final Landroid/bluetooth/BluetoothCodecStatus;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final EXTRA_CODEC_STATUS:Ljava/lang/String; = "android.bluetooth.codec.extra.CODEC_STATUS"


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 2
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .param p2, "codecsLocalCapabilities"    # [Landroid/bluetooth/BluetoothCodecConfig;
    .param p3, "codecsSelectableCapabilities"    # [Landroid/bluetooth/BluetoothCodecConfig;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
