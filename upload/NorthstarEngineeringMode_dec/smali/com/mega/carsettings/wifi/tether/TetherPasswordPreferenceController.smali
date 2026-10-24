.class public Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;
.super Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;


# virtual methods
.method public final b(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_hotspot_password"

    return-object p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->g()V

    const/4 p0, 0x1

    return p0
.end method
