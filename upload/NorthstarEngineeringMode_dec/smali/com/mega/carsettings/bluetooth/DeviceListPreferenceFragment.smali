.class public abstract Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Ld/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$b;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public d:Ld/d$c;

.field public e:Landroid/bluetooth/BluetoothAdapter;

.field public f:Ld/m;

.field public g:Landroidx/preference/PreferenceGroup;

.field public h:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$b;

.field public i:Ld/g;

.field public j:Ls0/j;

.field public final k:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;-><init>()V

    sget-object v0, Ld/d;->a:Ld/d$a;

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->d:Ld/d$c;

    new-instance v0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;-><init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->k:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;

    return-void
.end method


# virtual methods
.method public b(Ld/g;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->e:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    const-string v2, "DeviceListPreferenceFragment"

    if-eq v0, v1, :cond_0

    const-string p1, "Bluetooth disable "

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->d:Ld/d$c;

    iget-object v1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ld/d$c;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDeviceAdded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_1

    const-string p1, "Trying to add a device preference to null group/category"

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no HumanReadableName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->p(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v2, v1, p1}, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Ld/g;)V

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :goto_0
    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$b;

    if-eqz p0, :cond_7

    check-cast p0, Ls0/e;

    iget-object p0, p0, Ls0/e;->r:Ljava/lang/Object;

    check-cast p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;

    if-lez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "BluetoothSettingsFragment"

    const-string/jumbo p1, "showPairedDeviceList error not added "

    invoke-static {p0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->e:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->g:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->o()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final h(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBluetoothStateChanged="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->x()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p1, p1, Ld/m;->b:Ld/h;

    invoke-virtual {p1}, Ld/h;->c()Ld/g;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->k:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p1, p1, Ld/m;->b:Ld/h;

    invoke-virtual {p1, v0}, Ld/h;->e(Ld/g;)V

    :cond_1
    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    invoke-virtual {p1, v1}, Ld/g;->l(Ld/g$a;)Z

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Ld/g;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bondState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceListPreferenceFragment"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc

    if-eq p1, p2, :cond_0

    const/16 p1, 0xa

    if-ne p1, p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->x()V

    :cond_1
    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->e:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Lcom/mega/carsettings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->e:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->h(I)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0}, Ld/h;->c()Ld/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld/g;->g1:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->k:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0, v1}, Ld/h;->e(Ld/g;)V

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    invoke-virtual {v0, v2}, Ld/g;->l(Ld/g$a;)Z

    iput-object v1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    iput-object v1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    :cond_1
    return-void
.end method

.method public final t(Ld/g;)V
    .locals 1

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0, p1}, Ld/h;->e(Ld/g;)V

    invoke-virtual {p1}, Ld/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p1, p1, Ld/m;->b:Ld/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld/h;->e(Ld/g;)V

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p0, p0, Ld/m;->a:Ld/l;

    invoke-virtual {p0}, Ld/l;->d()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->k:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;

    invoke-virtual {p1, p0}, Ld/g;->k(Ld/g$a;)V

    :goto_0
    return-void
.end method

.method public final u()Ld/g;
    .locals 2

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p0, p0, Ld/m;->b:Ld/h;

    invoke-virtual {p0}, Ld/h;->d()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lf/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ls0/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls0/i;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/g;

    return-object p0
.end method

.method public final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract w()Ljava/lang/String;
.end method

.method public final x()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "refreshDeviceList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceListPreferenceFragment"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->o(Landroidx/preference/PreferenceGroup;)V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0}, Ld/h;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/g;

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->b(Ld/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->g:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    return-void
.end method

.method public final y(Ld/g;)V
    .locals 2

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object v0, v0, Ld/m;->b:Ld/h;

    invoke-virtual {v0, p1}, Ld/h;->e(Ld/g;)V

    iget-object v0, p1, Ld/g;->r:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    iget-object v0, p1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePairError="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceListPreferenceFragment"

    invoke-static {v0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p0, p0, Ld/m;->b:Ld/h;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ld/h;->e(Ld/g;)V

    :cond_1
    return-void
.end method
