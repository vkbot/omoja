.class public Lcom/mega/carsettings/wifi/WifiSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$d;


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:Lz0/b;

.field public final b:Ls0/b;

.field public c:Landroid/net/wifi/WifiManager;

.field public d:Lcom/android/settingslib/wifi/WifiTracker;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

.field public i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

.field public final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lz0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz0/b;-><init>(Lcom/mega/carsettings/wifi/WifiSettingsFragment;I)V

    iput-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->a:Lz0/b;

    new-instance v0, Ls0/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->b:Ls0/b;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->x()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->x()V

    return-void
.end method

.method public final k(I)V
    .locals 4

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p1, p1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->a:Lz0/b;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p1, p1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    :goto_2
    instance-of p1, p1, Lcom/mega/carsettings/wifi/AccessPointPreference;

    if-eqz p1, :cond_4

    const-string p1, "Did not force update APs due to existing APs displayed"

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSettingsFragment"

    invoke-static {p1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ly0/a;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lz0/b;

    invoke-direct {v0, p0, v1}, Lz0/b;-><init>(Lcom/mega/carsettings/wifi/WifiSettingsFragment;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->x()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->s()V

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p1, p1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->t(Z)V

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->s()V

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p1, p1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->t(Z)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    :goto_3
    return-void
.end method

.method public final o(Lf/d;)V
    .locals 7

    iget-object v0, p1, Lf/d;->e1:Ljava/lang/String;

    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v1, v0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->p(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v0, p1}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->q(Lf/d;)Lcom/mega/carsettings/wifi/AccessPointPreference;

    move-result-object v0

    :cond_0
    iget-object p1, v0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p1, Lf/d;->d1:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "key_ssid"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "key_security"

    iget v3, p1, Lf/d;->f1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_speed"

    iget v3, p1, Lf/d;->o1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_psktype"

    iget v3, p1, Lf/d;->h1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "eap_psktype"

    iget v3, p1, Lf/d;->i1:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p1, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_2

    const-string v3, "key_config"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string v2, "key_wifiinfo"

    iget-object v3, p1, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p1, Lf/d;->r:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "key_scanresults"

    iget-object v4, p1, Lf/d;->x:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    iget-object v6, p1, Lf/d;->y:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "key_scorednetworkcache"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lf/d;->Z:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, p1, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_3

    const-string v3, "key_networkinfo"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    iget-object v2, p1, Lf/d;->q1:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "key_fqdn"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "key_is_psk_sae_transition_mode"

    iget-boolean v3, p1, Lf/d;->s1:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_is_owe_transition_mode"

    iget-boolean p1, p1, Lf/d;->t1:Z

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p1, p1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->u(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settingslib/wifi/WifiTracker$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const p3, 0x7f0d0120

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a045d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->e:Landroid/view/View;

    const p2, 0x7f0a045c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->f:Landroid/view/View;

    const p2, 0x7f0a02e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->g:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string/jumbo p3, "wifi_connected_list"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iput-object p2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string/jumbo p3, "wifi_available_list"

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iput-object p2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->j:Landroid/os/Handler;

    new-instance p3, Lf/c;

    const/4 v0, 0x3

    invoke-direct {p3, v0, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    return-void
.end method

.method public p(Ljava/util/ArrayList;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->s()V

    return v1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/d;

    invoke-virtual {p1}, Lf/d;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->s()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->o(Lf/d;)V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x0

    if-nez v0, :cond_5

    move-object v0, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    if-eq v0, p1, :cond_6

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->s()V

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->o(Lf/d;)V

    return v2

    :cond_6
    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    :goto_3
    check-cast v3, Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {v3}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    return v2
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/String;
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

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->k(I)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->t(Z)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->t(Z)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->u(Z)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->u(Z)V

    return-void
.end method

.method public final t(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final u(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->e:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final v(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->e()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateAccessPoints called for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiSettingsFragment"

    invoke-static {v3, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v4, v2, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v4}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->o(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->t(Z)V

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->p(Ljava/util/ArrayList;)Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v4, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/d;

    invoke-virtual {v6}, Lf/d;->k()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Lcom/mega/carsettings/wifi/AccessPointPreference;->d(Lf/d;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v7, v5}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->p(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mega/carsettings/wifi/AccessPointPreference;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_1
    iget-object v7, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v7, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateAccessPoints found duplicate key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v7, v6}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->q(Lf/d;)Lcom/mega/carsettings/wifi/AccessPointPreference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v5, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v5, v5, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_1
    invoke-virtual {v6}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    :goto_2
    move v5, v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v2, v1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    iget-object v3, v1, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v1}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->u()V

    if-nez v5, :cond_7

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->j:Landroid/os/Handler;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->b:Ls0/b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->j:Landroid/os/Handler;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->a:Lz0/b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
