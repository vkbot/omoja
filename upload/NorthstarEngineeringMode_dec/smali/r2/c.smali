.class public final Lr2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->RSSI_LEVELS:I

    sget-object v0, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lr2/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public static b(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/net/wifi/WifiManager;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public static d(Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/net/wifi/WifiManager;)Landroid/net/Network;
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->getHasEverConnected(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/net/wifi/WifiManager;Ljava/util/Set;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            "Ljava/util/Set<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/net/wifi/WifiManager;)Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/net/wifi/WifiManager;)I
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    return p0
.end method

.method public static k(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result p0

    return p0
.end method

.method public static l(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    return p0
.end method

.method public static n(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/ExecutorService;Lr2/c$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->registerSoftApCallback(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method public static p(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method public static q(Landroid/net/wifi/WifiManager;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method

.method public static r(Landroid/net/wifi/WifiManager;Lr2/c$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mega/nexus/net/wifi/MegaWifiManagerAdapter;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method
