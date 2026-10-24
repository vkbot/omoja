.class public Lcom/mega/carsettings/bluetooth/BluetoothAvailableDeviceListFragment;
.super Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    sget-object v0, Ld/d;->c:Ld/d$d;

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->d:Ld/d$c;

    return-void
.end method


# virtual methods
.method public final b(Ld/g;)V
    .locals 1

    iget-boolean v0, p1, Ld/g;->f1:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->b(Ld/g;)V

    :cond_0
    return-void
.end method

.method public final c(Ld/g;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", errorReason="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothAvailableDeviceListFragment"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p1, p1, Ld/m;->a:Ld/l;

    invoke-virtual {p1}, Ld/l;->b()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BluetoothAvailableDeviceListFragment"

    const-string/jumbo v0, "scanning refresh"

    invoke-static {p1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->x()V

    :cond_0
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    invoke-super {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    instance-of v1, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_9

    check-cast p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {p1}, Ld/g;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0}, Ld/h;->c()Ld/g;

    move-result-object v0

    const-string v2, "DeviceListPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startPairing="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", busy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->a:Ld/l;

    invoke-virtual {v0}, Ld/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->a:Ld/l;

    iput-boolean v1, v0, Ld/l;->e:Z

    iget-object v0, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_2
    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->u()Ld/g;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v3, "DeviceListPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setAutoConnect:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ld/g;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", auto=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Ld/g;->y:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Ld/g;->c1:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/n;

    invoke-interface {v6}, Ld/n;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/n;

    const-string v5, "DeviceListPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setAutoConnect profile:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    const/16 v6, 0x64

    invoke-interface {v4, v5, v6}, Ld/n;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_1

    :cond_6
    :goto_2
    new-instance v2, Ls0/h;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Ls0/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    new-instance p1, Ls0/j;

    invoke-direct {p1, p0, v2}, Ls0/j;-><init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    invoke-virtual {v0, p1}, Ld/g;->k(Ld/g$a;)V

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    invoke-virtual {p0}, Ld/g;->c()V

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->y(Ld/g;)V

    :cond_8
    :goto_4
    return v1

    :cond_9
    return v0
.end method

.method public final q(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final r()I
    .locals 0

    const/high16 p0, 0x7f150000

    return p0
.end method

.method public final w()Ljava/lang/String;
    .locals 0

    const-string p0, "available_devices"

    return-object p0
.end method
