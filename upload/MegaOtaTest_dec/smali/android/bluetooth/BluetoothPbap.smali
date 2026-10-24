.class public Landroid/bluetooth/BluetoothPbap;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPbap$ServiceListener;
    }
.end annotation


# static fields
.field public static final PBAP_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

.field public static final PBAP_STATE:Ljava/lang/String; = "android.bluetooth.pbap.intent.PBAP_STATE"

.field public static final PBAP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothPbap$ServiceListener;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .locals 2
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local p0    # "this":Landroid/bluetooth/BluetoothPbap;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()Z
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getState()I
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
