.class public Lcom/mega/carsettings/bluetooth/BluetoothPairedDeviceListFragment;
.super Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    sget-object v0, Ld/d;->b:Ld/d$b;

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->d:Ld/d$c;

    return-void
.end method


# virtual methods
.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    instance-of v1, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    iget-object v0, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {v0}, Ld/g;->i()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click to connect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothPairedDeviceListFragment"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object p1, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0}, Ld/h;->c()Ld/g;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", busy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceListPreferenceFragment"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->a:Ld/l;

    invoke-virtual {v0}, Ld/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->a:Ld/l;

    iput-boolean v1, v0, Ld/l;->e:Z

    iget-object v0, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_3
    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->u()Ld/g;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->t(Ld/g;)V

    goto :goto_0

    :cond_4
    new-instance v2, Ls0/g;

    invoke-direct {v2, p0, p1}, Ls0/g;-><init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;Ld/g;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    new-instance p1, Ls0/j;

    invoke-direct {p1, p0, v2}, Ls0/j;-><init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    invoke-virtual {v0, p1}, Ld/g;->k(Ld/g$a;)V

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    invoke-virtual {p0}, Ld/g;->c()V

    :cond_5
    :goto_0
    return v1

    :cond_6
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

    const p0, 0x7f150002

    return p0
.end method

.method public final w()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "paired_devices"

    return-object p0
.end method
