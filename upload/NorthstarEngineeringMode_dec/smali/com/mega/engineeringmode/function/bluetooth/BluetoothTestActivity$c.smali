.class public final Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$c;
.super Lcom/mega/carsettings/bluetooth/BluetoothPairingRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$c;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-direct {p0}, Lcom/mega/carsettings/bluetooth/BluetoothPairingRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    const-string p1, "BluetoothPairingRequest "

    const-string v0, " device  "

    invoke-static {p1, p3, v0}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothTestActivity"

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    const/4 p2, 0x4

    if-eq p3, p2, :cond_0

    const/4 p2, 0x5

    if-ne p3, p2, :cond_1

    :cond_0
    const-string p2, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    new-instance p2, Ls0/d;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$c;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-direct {p2, p0, p1}, Ls0/d;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Ls0/d;->a()V

    return-void
.end method
