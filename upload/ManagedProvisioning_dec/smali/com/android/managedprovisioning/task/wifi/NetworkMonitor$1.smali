.class Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;->this$0:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkMonitor.onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;->this$0:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    monitor-enter p2

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;->this$0:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-static {v0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->access$000(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)Lcom/android/managedprovisioning/common/Utils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/managedprovisioning/common/Utils;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "NetworkMonitor: not connected to network"

    .line 106
    invoke-static {p0}, Lcom/android/managedprovisioning/common/ProvisionLogger;->logd(Ljava/lang/String;)V

    .line 107
    monitor-exit p2

    return-void

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;->this$0:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-static {p1}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->access$100(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p0, p0, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$1;->this$0:Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;

    invoke-static {p0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;->access$100(Lcom/android/managedprovisioning/task/wifi/NetworkMonitor;)Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/managedprovisioning/task/wifi/NetworkMonitor$NetworkConnectedCallback;->onNetworkConnected()V

    .line 112
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
