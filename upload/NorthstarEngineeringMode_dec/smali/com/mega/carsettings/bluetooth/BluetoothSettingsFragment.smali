.class public Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Ld/c;


# instance fields
.field public a:Ld/l;

.field public b:Ld/m;

.field public c:Ls0/a;

.field public d:Ls0/c;

.field public e:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

.field public f:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final f(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->i:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final h(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBluetoothStateChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->p(I)V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BluetoothSettingsFragment"

    const-string v0, "hidePairedDeviceList error not added "

    invoke-static {p0, v0}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->e:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->g:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Ld/m;->a(Landroid/content/Context;)Ld/m;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->b:Ld/m;

    iget-object v0, v0, Ld/m;->a:Ld/l;

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    new-instance v0, Ls0/a;

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    invoke-direct {v0, p1, v1}, Ls0/a;-><init>(Landroid/content/Context;Ld/l;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->c:Ls0/a;

    new-instance v0, Ls0/c;

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->b:Ld/m;

    invoke-direct {v0, v1}, Ls0/c;-><init>(Ld/m;)V

    iput-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->d:Ls0/c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->j:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->k:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p0, 0x7f0d0051

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->b:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->b:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->d:Ls0/c;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/l;->e:Z

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    iget v3, v0, Ld/l;->c:I

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ld/l;->c(I)V

    :cond_1
    iget v1, v0, Ld/l;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->p(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/l;->e:Z

    iget-object v0, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->c:Ls0/a;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->j:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Ls0/a;->d:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Ls0/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, v0, Ls0/a;->d:Z

    iget-object v0, v0, Ls0/a;->b:Ld/l;

    iget-object v0, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Ld/f;->a0(Landroid/bluetooth/BluetoothAdapter;I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->b:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->b:Ld/m;

    iget-object v0, v0, Ld/m;->d:Ld/e;

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->d:Ls0/c;

    iget-object v0, v0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->d:Ls0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "stopScan"

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Ls0/c;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "bluetooth_available_list"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->f:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v0, "bluetooth_paired_list"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->e:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    new-instance v0, Ls0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ls0/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->h:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$b;

    const p2, 0x7f0a0091

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->g:Landroid/view/View;

    const p2, 0x7f0a008c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->h:Landroid/view/View;

    const p2, 0x7f0a02e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->i:Landroid/view/View;

    return-void
.end method

.method public final p(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateContent:state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    const-string v2, "BluetoothSettingsFragment"

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->c:Ls0/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->j:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Ls0/a;->d:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Ls0/a;->c:Landroid/content/IntentFilter;

    iget-object v4, p1, Ls0/a;->a:Landroid/content/Context;

    invoke-virtual {v4, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p1, Ls0/a;->d:Z

    iget-object p1, p1, Ls0/a;->b:Ld/l;

    iget-object v3, p1, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_2

    iget-object p1, p1, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1, v4}, Ld/f;->a0(Landroid/bluetooth/BluetoothAdapter;I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "showDeviceList error not added "

    invoke-static {v2, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->f:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startScanningNow:isInterrupt="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    invoke-virtual {v1}, Ld/l;->b()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    invoke-virtual {p1}, Ld/l;->b()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->f(Z)V

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    invoke-virtual {p0}, Ld/l;->d()V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->a:Ld/l;

    iput-boolean v1, p1, Ld/l;->e:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "hideDeviceList error not added "

    invoke-static {v2, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->f:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->h:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/mega/carsettings/bluetooth/BluetoothSettingsFragment;->o()V

    :goto_3
    return-void
.end method
