.class public final Lcom/android/settingslib/wifi/WifiTracker$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiTracker"

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "WifiTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateWifiState: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    if-eqz v0, :cond_0

    const-string v2, "WifiTracker"

    const-string v3, "Scanner resume"

    invoke-static {v2, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    if-eqz p2, :cond_2

    const-string v3, "WifiTracker"

    const-string v4, "Scanner pause"

    invoke-static {v3, v4}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p2, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Z

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$e;->k(I)V

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    iput-boolean v1, p1, Lcom/android/settingslib/wifi/WifiTracker;->m:Z

    const-string/jumbo v0, "resultsUpdated"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/settingslib/wifi/WifiTracker;->n:Z

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->c()V

    goto/16 :goto_4

    :cond_4
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lr2/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    :cond_5
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->j(Landroid/net/NetworkInfo;)V

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/WifiTracker;->c()V

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "NetworkInfo state="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WifiTracker"

    invoke-static {v4, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_c

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_6

    goto/16 :goto_2

    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v0, :cond_b

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Landroid/net/NetworkInfo;

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "mNetworkInfo="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",info="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, p1, :cond_8

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_f

    :cond_8
    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Landroid/net/NetworkInfo;

    invoke-static {}, Lt0/c;->a()Lt0/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "notifyObserver = com.android.settingslib.wifi.WifiTracker"

    const-string v0, "c"

    invoke-static {v0, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Le/a;->a:Ljava/lang/Thread;

    if-nez p2, :cond_9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    sput-object p2, Le/a;->a:Ljava/lang/Thread;

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    sget-object v0, Le/a;->a:Ljava/lang/Thread;

    const-string v3, "com.android.settingslib.wifi.WifiTracker"

    if-ne p2, v0, :cond_a

    iget-object p0, p0, Lt0/c;->a:Ljava/util/Vector;

    new-instance p2, Lt0/a;

    invoke-direct {p2, v1, v3, p1}, Lt0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_a
    new-instance p2, Lf/l;

    invoke-direct {p2, v2, v3, p0, p1}, Lf/l;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Le/a;->b(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_b
    :goto_1
    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Landroid/net/NetworkInfo;

    goto :goto_4

    :cond_c
    :goto_2
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Landroid/net/NetworkInfo;

    goto :goto_4

    :cond_d
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p2, p1, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/net/ConnectivityManager;

    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lr2/c;->e(Landroid/net/wifi/WifiManager;)Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/WifiTracker;->j(Landroid/net/NetworkInfo;)V

    goto :goto_4

    :cond_e
    :goto_3
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->c()V

    :cond_f
    :goto_4
    return-void
.end method
