.class public Lcom/mega/carsettings/wifi/DataUsageController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lw0/c$a;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/carsettings/wifi/DataUsageController;->c:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/wifi/DataUsageController;->d:I

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_mobile_net"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()Landroid/telephony/TelephonyManager;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "is valid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    const-string v2, "DataUsageController"

    iget v3, p0, Lcom/mega/carsettings/wifi/DataUsageController;->d:I

    if-gt v3, v1, :cond_0

    const-string v1, "no valid subscription id"

    invoke-static {v2, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/carsettings/wifi/DataUsageController;->c:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMobileDataEnabled: enabled="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DataUsageController"

    invoke-static {v0, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/DataUsageController;->g()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of p2, p0, Landroidx/preference/TwoStatePreference;

    if-eqz p2, :cond_0

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    iget v1, p0, Lcom/mega/carsettings/wifi/DataUsageController;->d:I

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    const-string v1, "DataUsageController"

    const-string v2, "no valid subscription id"

    invoke-static {v1, v2}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/DataUsageController;->g()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/DataUsageController;->g()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of v1, p0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
