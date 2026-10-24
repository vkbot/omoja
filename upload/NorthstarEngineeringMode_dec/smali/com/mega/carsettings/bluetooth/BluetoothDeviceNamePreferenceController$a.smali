.class public final Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;->a:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "device name null warning"

    const-string v2, "BluetoothDeviceNamePreferenceController"

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;->a:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    if-eqz p1, :cond_6

    iget-object p1, p1, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    iget-object p0, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    invoke-static {v2, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz p2, :cond_5

    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    iget-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    if-eqz p2, :cond_3

    iget-object p2, p2, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    iget-object v0, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    :goto_1
    const-string p0, "bluetoothState="

    invoke-static {p0, p1, v2}, La4/a;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
