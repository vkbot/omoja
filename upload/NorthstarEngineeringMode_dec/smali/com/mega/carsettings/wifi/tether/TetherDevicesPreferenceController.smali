.class public Lcom/mega/carsettings/wifi/tether/TetherDevicesPreferenceController;
.super Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;
.source "SourceFile"


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_hotspot_device_limit"

    return-object p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "wifi_hotspot_device_limit"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->g()V

    const/4 p0, 0x1

    return p0
.end method
