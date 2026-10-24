.class public Lcom/mega/carsettings/wifi/WifiSwitchController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SourceFile"


# direct methods
.method public static g(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    throw v0
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_wifi"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Ll1/a;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0, p1}, Ll1/a;-><init>(ILjava/lang/Object;Z)V

    invoke-static {}, Le/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0
.end method
