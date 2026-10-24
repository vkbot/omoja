.class public abstract Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;
    }
.end annotation


# instance fields
.field public final c:Landroid/net/wifi/WifiManager;

.field public final d:Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->d:Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->c:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 5

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->d:Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->e:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lr2/c;->i(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    new-instance v1, Lr2/a;

    invoke-direct {v1, v0}, Lr2/a;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iget-object v2, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->h:Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;

    iget-object v2, v2, Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr2/a;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->i:Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;

    iget-object v3, v2, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "66668888"

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lr2/a;->c(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_hotspot_device_limit"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lr2/a;->b(I)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->j:Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    iget v0, v0, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_hotspot_traffic_limit"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->e:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lr2/c;->j(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    const-string v0, "TetherSettingsFragment"

    const-string v2, "Wifi AP config changed while enabled, stop and restart"

    invoke-static {v0, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->k:Z

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->f:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lq2/b;->b(Landroid/net/ConnectivityManager;)V

    :cond_2
    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Lr2/a;->a()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-static {p0, v0}, Lr2/c;->q(Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)V

    :cond_3
    return-void
.end method
