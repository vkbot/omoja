.class public Lcom/mega/carsettings/bluetooth/BluetoothDiscoverableController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public c:Z


# virtual methods
.method public final b(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_discoverable"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    invoke-static {p1, p0}, Ld/f;->a0(Landroid/bluetooth/BluetoothAdapter;I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x15

    invoke-static {p1, p0}, Ld/f;->a0(Landroid/bluetooth/BluetoothAdapter;I)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDiscoverableController;->c:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDiscoverableController;->c:Z

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDiscoverableController;->c:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDiscoverableController;->c:Z

    return-void
.end method
