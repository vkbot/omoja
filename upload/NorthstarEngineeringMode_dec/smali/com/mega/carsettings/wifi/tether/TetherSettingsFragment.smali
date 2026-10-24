.class public Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;
.super Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;


# static fields
.field public static final synthetic m:I


# instance fields
.field public final d:Landroid/os/Handler;

.field public e:Landroid/net/wifi/WifiManager;

.field public f:Landroid/net/ConnectivityManager;

.field public g:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

.field public h:Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;

.field public i:Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;

.field public j:Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;

.field public k:Z

.field public final l:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->d:Landroid/os/Handler;

    new-instance v0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;-><init>(Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;)V

    iput-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->l:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "getSystemService null warning = connectivity"

    const-string v0, "AbsSettingsPreferenceFragment"

    invoke-static {v0, p1}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->f:Landroid/net/ConnectivityManager;

    iget-object p1, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->e:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->g:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    iget-object v1, v0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->h:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;

    iget-object v0, v0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->f:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lr2/c;->r(Landroid/net/wifi/WifiManager;Lr2/c$a;)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->e:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->l:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;

    invoke-static {v0, p0}, Lr2/c;->r(Landroid/net/wifi/WifiManager;Lr2/c$a;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->g:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    iget-object v1, v0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->f:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lr2/c;->j(Landroid/net/wifi/WifiManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->h(I)V

    invoke-static {}, Le/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v0, v0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->h:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController$a;

    invoke-static {v1, v2, v0}, Lr2/c;->o(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/ExecutorService;Lr2/c$a;)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->e:Landroid/net/wifi/WifiManager;

    invoke-static {}, Le/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->l:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;

    invoke-static {v0, v1, p0}, Lr2/c;->o(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/ExecutorService;Lr2/c$a;)V

    return-void
.end method

.method public final q(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    invoke-direct {v1, p1, p0}, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V

    iput-object v1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->g:Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;

    iget-object v2, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V

    iget-object v3, v1, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lr2/c;->i(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v3, 0x7f120305

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;->e:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->h:Lcom/mega/carsettings/wifi/tether/TetherSSIDPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;

    iget-object v2, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V

    const-string v2, "66668888"

    iput-object v2, v1, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;->e:Ljava/lang/String;

    iget-object v2, v1, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lr2/c;->i(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;->e:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->i:Lcom/mega/carsettings/wifi/tether/TetherPasswordPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;

    iget-object v2, p0, Lcom/mega/carsettings/preference/AbsSettingsPreferenceFragment;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V

    const/16 v2, 0x64

    iput v2, v1, Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;->e:I

    iput-object v1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->j:Lcom/mega/carsettings/wifi/tether/TetherTrafficPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mega/carsettings/wifi/tether/TetherDevicesPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/mega/carsettings/wifi/tether/TetherBasePreferenceController$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mega/carsettings/wifi/DataUsageController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/mega/carsettings/wifi/DataUsageController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final r()I
    .locals 0

    const p0, 0x7f150003

    return p0
.end method
