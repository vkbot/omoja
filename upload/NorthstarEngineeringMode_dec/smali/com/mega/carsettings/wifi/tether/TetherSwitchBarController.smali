.class public Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;
.super Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;
.source "SourceFile"


# instance fields
.field public final e:Landroid/net/ConnectivityManager;

.field public final f:Landroid/net/wifi/WifiManager;

.field public final g:Landroid/os/Handler;

.field public final h:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V

    new-instance p2, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;

    invoke-direct {p2, p0}, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;-><init>(Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;)V

    iput-object p2, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->h:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;

    invoke-static {}, Ly0/a;->a()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->f:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_wifi_ap"

    return-object p0
.end method

.method public final h(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "apState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherSwitchBarController"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->g:Landroid/os/Handler;

    const/4 v0, 0x5

    const-string v1, "TetherSwitchBarController"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "start tether"

    invoke-static {v1, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->f:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lr2/c;->i(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    new-instance v2, Lr2/a;

    invoke-direct {v2, v1}, Lr2/a;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    invoke-virtual {v2}, Lr2/a;->a()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-static {p1, v1}, Lr2/c;->q(Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)V

    new-instance p1, Lf/c;

    invoke-direct {p1, v0, p0}, Lf/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "stop tether"

    invoke-static {v1, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, v0, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
