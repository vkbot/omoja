.class public Lcom/mega/carsettings/preference/AbsCarPreferenceFragment;
.super Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "pref_res_id"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment;->q(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method public final q(Landroidx/preference/PreferenceGroup;)V
    .locals 7

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment;->q(Landroidx/preference/PreferenceGroup;)V

    goto :goto_2

    :cond_0
    sget-object v3, Lcom/mega/carsettings/car/a;->b:Lcom/mega/carsettings/car/a;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/mega/carsettings/car/a;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/carsettings/car/CarPreferenceStore$a;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/mega/carsettings/car/a;->a()V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->getId()I

    move-result v3

    invoke-interface {v6}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->c()I

    move-result v4

    const-class v5, Lcom/mega/carsettings/car/b;

    monitor-enter v5

    :try_start_0
    invoke-static {v3, v4}, Lmega/car/livedata/CarPropertyLiveData;->obtain(II)Lmega/car/livedata/CarPropertyLiveData;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    new-instance v4, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;

    invoke-direct {v4, v2, v6}, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;-><init>(Landroidx/preference/Preference;Lcom/mega/carsettings/car/CarPreferenceStore$a;)V

    invoke-virtual {v3, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
