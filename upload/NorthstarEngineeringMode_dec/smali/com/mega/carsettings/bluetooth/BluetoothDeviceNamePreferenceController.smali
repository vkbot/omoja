.class public Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final c:Ld/l;

.field public final d:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;-><init>(Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->d:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;

    invoke-static {p1}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothDeviceNamePreferenceController"

    const-string p1, "Bluetooth is not supported on this device"

    invoke-static {p0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ld/m;->a:Ld/l;

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "device_name"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    iget-object p0, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothDeviceNamePreferenceController"

    const-string p1, "device name null warning"

    invoke-static {p0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->d:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->c:Ld/l;

    iget-object p0, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;->d:Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController$a;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
