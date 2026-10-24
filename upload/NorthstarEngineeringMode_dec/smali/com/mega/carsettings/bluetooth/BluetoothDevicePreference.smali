.class public Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public final c:Ld/g;

.field public final r:Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/g;)V
    .locals 1
    .param p2    # Ld/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference$a;

    invoke-direct {p1, p0}, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference$a;-><init>(Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;)V

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->r:Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference$a;

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {v0}, Ld/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ld/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v2, v0, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "noHumanReadableName: name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ld/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", aliasName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothDevicePreference"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void
.end method

.method public final compareTo(Landroidx/preference/Preference;)I
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 4
    :cond_0
    check-cast p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    .line 5
    invoke-virtual {p0, p1}, Ld/g;->a(Ld/g;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {p0, p1}, Ld/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {p0}, Ld/g;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->r:Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference$a;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {p0, v0}, Ld/g;->k(Ld/g$a;)V

    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->r:Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference$a;

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;->c:Ld/g;

    invoke-virtual {p0, v0}, Ld/g;->l(Ld/g$a;)Z

    return-void
.end method
