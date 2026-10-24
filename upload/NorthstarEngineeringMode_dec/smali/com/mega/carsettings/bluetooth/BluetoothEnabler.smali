.class public Lcom/mega/carsettings/bluetooth/BluetoothEnabler;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lw0/c$a;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/bluetooth/BluetoothAdapter;

.field public final e:Landroid/content/IntentFilter;

.field public final f:Ls0/f;

.field public final g:Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;-><init>(Lcom/mega/carsettings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->g:Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->c:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    new-instance p2, Ls0/f;

    invoke-direct {p2, p1, p0}, Ls0/f;-><init>(Landroid/content/Context;Lw0/c$a;)V

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->f:Ls0/f;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->e:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onSummaryChanged: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothEnabler"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "toggle_bluetooth"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleStateChanged state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of v2, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_0

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->f:Ls0/f;

    iget-object v0, p0, Ls0/f;->e:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls0/f;->d:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    :goto_0
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of p1, p0, Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return v0

    :cond_3
    return p2
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->f:Ls0/f;

    iget-object v0, p0, Ls0/f;->e:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw0/c;->a()V

    iget-object v0, p0, Ls0/f;->d:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->g(I)V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->e:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->g:Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->g:Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
