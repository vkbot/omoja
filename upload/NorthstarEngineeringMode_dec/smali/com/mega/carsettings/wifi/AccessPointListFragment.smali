.class public abstract Lcom/mega/carsettings/wifi/AccessPointListFragment;
.super Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;
.source "SourceFile"


# instance fields
.field public c:Landroidx/preference/PreferenceGroup;

.field public d:Landroid/net/wifi/WifiManager;

.field public e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->e:Landroid/content/Context;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->s()I

    move-result p1

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->r()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public q(Lf/d;)Lcom/mega/carsettings/wifi/AccessPointPreference;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/mega/carsettings/wifi/AccessPointPreference;-><init>(Landroid/content/Context;Lf/d;)V

    return-object v0
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()I
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->e:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->d:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->d:Landroid/net/wifi/WifiManager;

    :cond_1
    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->d:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public u()V
    .locals 0

    return-void
.end method
