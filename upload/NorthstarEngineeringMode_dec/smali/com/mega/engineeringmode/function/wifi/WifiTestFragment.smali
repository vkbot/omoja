.class public Lcom/mega/engineeringmode/function/wifi/WifiTestFragment;
.super Lcom/mega/carsettings/wifi/WifiSettingsFragment;
.source "SourceFile"


# instance fields
.field public l:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 2

    iget-object p0, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestFragment;->l:Landroid/content/Context;

    if-eqz p0, :cond_0

    const v0, 0x7f1201e3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lk2/d;->a(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/wifi/WifiTestFragment;->l:Landroid/content/Context;

    return-void
.end method

.method public final p(Ljava/util/ArrayList;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d;

    iget-object v2, v1, Lf/d;->m1:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->s()V

    return v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->p(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public final w()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->e()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateAccessPoints called for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTestFragment"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v3, v1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->o(Landroidx/preference/PreferenceGroup;)V

    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v3, v1, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->o(Landroidx/preference/PreferenceGroup;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->t(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/d;

    invoke-virtual {v6}, Lf/d;->k()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v6, Lf/d;->f1:I

    const/4 v8, 0x3

    if-ne v8, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v6}, Lcom/mega/carsettings/wifi/AccessPointPreference;->d(Lf/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lf/d;->l()Z

    move-result v8

    const-string v9, " -- "

    if-eqz v8, :cond_5

    iget-object v8, v6, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v8}, Lr2/c;->f(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v5, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v5, v7}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->p(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mega/carsettings/wifi/AccessPointPreference;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v7, v6, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v6, Lf/d;->l1:Landroid/net/wifi/WifiInfo;

    iget-object v6, v6, Lf/d;->m1:Landroid/net/NetworkInfo;

    iget-object v5, v5, Lcom/mega/carsettings/wifi/AccessPointPreference;->r:Lf/d;

    invoke-virtual {v5, v7, v8, v6}, Lf/d;->r(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    goto :goto_2

    :cond_3
    new-instance v5, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8, v6}, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;-><init>(Landroid/content/Context;Lf/d;)V

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v7, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v7, v7, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_1
    invoke-virtual {v5}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "connected name = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v6, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v5, v1

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v8, v7}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->p(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/mega/carsettings/wifi/AccessPointPreference;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_4

    :cond_6
    new-instance v8, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10, v6}, Lcom/mega/engineeringmode/function/wifi/WifiAccessPointPreferenceImpl;-><init>(Landroid/content/Context;Lf/d;)V

    invoke-virtual {v8, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v7, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v7, v7, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_3
    invoke-virtual {v8}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "available name = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lf/d;->d1:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v1, v0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    iget-object v2, v0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->i:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->u()V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    iget-object v2, v0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    iget-object v3, v0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_b
    iput-object v1, v0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->b:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->h:Lcom/mega/carsettings/wifi/AccessPointListFragment;

    invoke-virtual {v0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->u()V

    invoke-virtual {p0, v5}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->u(Z)V

    :cond_c
    :goto_7
    return-void
.end method
