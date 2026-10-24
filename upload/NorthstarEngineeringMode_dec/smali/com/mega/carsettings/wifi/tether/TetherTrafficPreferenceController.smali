.class public Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;
.super Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;
.source "SourceFile"


# instance fields
.field public e:I


# virtual methods
.method public final b(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_hotspot_traffic_limit"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->h(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_hotspot_traffic_limit"

    return-object p0
.end method

.method public final h(Landroidx/preference/Preference;)V
    .locals 2

    iget v0, p0, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const p0, 0x7f12032a

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget p1, p0, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput p1, p0, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->h(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->g()V

    const/4 p0, 0x1

    return p0
.end method
