.class public final Li1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Li1/b;

.field public final c:Landroid/net/ConnectivityManager;

.field public final d:Landroid/net/ConnectivityManager;

.field public final e:Li1/c;

.field public final f:Li1/c;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li1/d;->g:Z

    iput-boolean v0, p0, Li1/d;->h:Z

    iput-boolean v0, p0, Li1/d;->i:Z

    iput-object p1, p0, Li1/d;->a:Landroid/content/Context;

    new-instance v6, Lcom/callisto/auto/gatherer/model/BluetoothBean;

    invoke-direct {v6}, Lcom/callisto/auto/gatherer/model/BluetoothBean;-><init>()V

    new-instance v8, Lcom/callisto/auto/gatherer/model/WifiStateBean;

    invoke-direct {v8}, Lcom/callisto/auto/gatherer/model/WifiStateBean;-><init>()V

    new-instance v9, Lcom/callisto/auto/gatherer/model/HotspotBean;

    invoke-direct {v9}, Lcom/callisto/auto/gatherer/model/HotspotBean;-><init>()V

    new-instance v10, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v10, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object v11

    new-instance v0, Li1/b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Li1/b;-><init>(Li1/d;Lcom/callisto/auto/gatherer/model/WifiStateBean;Lcom/callisto/auto/gatherer/model/BaseRequest;Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;Lcom/callisto/auto/gatherer/model/BluetoothBean;Lcom/callisto/auto/gatherer/model/HotspotBean;)V

    iput-object v0, p0, Li1/d;->b:Li1/b;

    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Li1/d;->c:Landroid/net/ConnectivityManager;

    new-instance v7, Li1/c;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Li1/c;-><init>(Li1/d;Ljava/lang/Object;Lcom/callisto/auto/gatherer/model/BaseRequest;Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;I)V

    iput-object v7, p0, Li1/d;->e:Li1/c;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Li1/d;->d:Landroid/net/ConnectivityManager;

    new-instance p1, Li1/c;

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Li1/c;-><init>(Li1/d;Ljava/lang/Object;Lcom/callisto/auto/gatherer/model/BaseRequest;Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;I)V

    iput-object p1, p0, Li1/d;->f:Li1/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li1/d;->h:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li1/d;->i:Z

    return-void
.end method

.method public final c()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Li1/d;->b:Li1/b;

    iget-object v2, p0, Li1/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const-string v2, "wifi_ap"

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Li1/d;->f:Li1/c;

    iget-object v3, p0, Li1/d;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Li1/d;->e:Li1/c;

    iget-object v2, p0, Li1/d;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li1/d;->g:Z

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li1/d;->h:Z

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li1/d;->i:Z

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li1/d;->g:Z

    return-void
.end method
