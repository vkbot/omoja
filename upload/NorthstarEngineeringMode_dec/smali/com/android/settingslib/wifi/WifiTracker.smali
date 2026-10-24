.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$e;,
        Lcom/android/settingslib/wifi/WifiTracker$b;,
        Lcom/android/settingslib/wifi/WifiTracker$d;,
        Lcom/android/settingslib/wifi/WifiTracker$c;,
        Lcom/android/settingslib/wifi/WifiTracker$f;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/net/wifi/WifiManager;

.field public final c:Landroid/content/IntentFilter;

.field public final d:Landroid/net/ConnectivityManager;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Lcom/android/settingslib/wifi/WifiTracker$e;

.field public final g:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final h:Landroid/os/HandlerThread;

.field public i:Lcom/android/settingslib/wifi/WifiTracker$f;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final l:Landroid/util/ArraySet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public m:Z

.field public n:Z

.field public final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Landroid/net/NetworkInfo;

.field public final r:Landroid/net/NetworkRequest;

.field public s:Landroid/net/wifi/WifiInfo;

.field public final t:Z

.field public final u:Landroid/net/NetworkScoreManager;

.field public final v:Landroid/net/wifi/WifiNetworkScoreCache;

.field public w:Lcom/android/settingslib/wifi/WifiTracker$c;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final x:Lcom/android/settingslib/wifi/WifiTracker$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public y:Landroid/net/NetworkInfo;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 2
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.NETWORK_IDS_CHANGED"

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lr2/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    .line 16
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->l:Landroid/util/ArraySet;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Z

    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Z

    .line 17
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    .line 18
    new-instance v3, Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-direct {v3, p0}, Lcom/android/settingslib/wifi/WifiTracker$a;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Lcom/android/settingslib/wifi/WifiTracker$a;

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 20
    new-instance v3, Lcom/android/settingslib/wifi/WifiTracker$e;

    invoke-direct {v3, p0}, Lcom/android/settingslib/wifi/WifiTracker$e;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    const-class v3, Landroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->c:Landroid/content/IntentFilter;

    const-class v1, Landroid/net/NetworkScoreManager;

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkScoreManager;

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkScoreManager;

    .line 23
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WifiTracker{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 26
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0xf

    .line 27
    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->r:Landroid/net/NetworkRequest;

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->h:Landroid/os/HandlerThread;

    .line 30
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/os/Handler;

    .line 31
    new-instance v1, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v3, Lf/i;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lf/i;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {v1, v0, v3}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    .line 32
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->h()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/util/ArrayList;)Lf/d;
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d;

    iget-object v1, v0, Lf/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->b()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker$e;->e()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 15

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v5, v1

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Lr2/c;->l(Landroid/net/wifi/WifiManager;)Z

    move-result v3

    invoke-static {v2}, Lr2/c;->m(Landroid/net/wifi/WifiManager;)Z

    move-result v4

    invoke-static {v2}, Lr2/c;->n(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "PSK"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "SUITE_B_192"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "SAE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iget-object v7, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "OWE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v3, :cond_5

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "filterScanResultsByCapabilities: Filtering SSID "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with capabilities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WifiTracker"

    invoke-static {v7, v6}, Lmega/log/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    const-string v0, "WifiTracker"

    const/4 v2, 0x0

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_b

    add-int/lit8 v6, v4, 0x5

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_8

    const-string v9, "Fetched scan results:  (count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "):\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v9, "  Group ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v4, v7, :cond_9

    const-string v9, "    ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    goto :goto_2

    :cond_a
    :goto_4
    const-string v3, "Fetched scan results: : empty or null"

    invoke-static {v0, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    if-eqz v7, :cond_c

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v7, :cond_c

    goto :goto_5

    :cond_d
    move-object v6, v1

    :goto_5
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/settingslib/wifi/WifiTracker;->m(Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    invoke-static {v12}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v12

    if-eqz v12, :cond_e

    iget-object v13, p0, Lcom/android/settingslib/wifi/WifiTracker;->l:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_f
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v12, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v14, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v12, v11}, Lf/d;->e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v11

    invoke-static {v11, v13, v14}, Lf/d;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/android/settingslib/wifi/WifiTracker;->f(Ljava/lang/String;Ljava/util/ArrayList;)Lf/d;

    move-result-object v11

    if-nez v11, :cond_10

    new-instance v11, Lf/d;

    invoke-direct {v11, v12, v9}, Lf/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_8

    :cond_10
    invoke-virtual {v11, v9}, Lf/d;->o(Ljava/util/List;)V

    :goto_8
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v12, Lf/f;

    invoke-direct {v12, v2, v11}, Lf/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_11

    invoke-virtual {v11, v1}, Lf/d;->q(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_9

    :cond_11
    if-ne v12, v10, :cond_12

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v11, v9}, Lf/d;->q(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_9

    :cond_12
    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v12, Lf/g;

    invoke-direct {v12, v2}, Lf/g;-><init>(I)V

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v11, v9}, Lf/d;->q(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_9

    :cond_13
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v11, v9}, Lf/d;->q(Landroid/net/wifi/WifiConfiguration;)V

    :goto_9
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lr2/c;->d(Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/settingslib/wifi/WifiTracker;->l(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lr2/c;->g(Landroid/net/wifi/WifiManager;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/android/settingslib/wifi/WifiTracker;->k(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_19

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v6, v4, v5}, Lf/d;->r(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    iget-object v4, v1, Lf/d;->j1:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_16

    if-eq v4, v6, :cond_18

    :cond_16
    if-nez v6, :cond_17

    goto :goto_a

    :cond_17
    iget-object v4, v1, Lf/d;->d1:Ljava/lang/String;

    iget-object v5, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v1, v1, Lf/d;->e1:Ljava/lang/String;

    iget-object v4, v6, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_18
    move v2, v10

    goto :goto_a

    :cond_19
    if-eqz v6, :cond_1b

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez v2, :cond_1b

    :cond_1a
    new-instance v0, Lf/d;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lf/d;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v6, v1, v4}, Lf/d;->r(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    const-string v1, "WifiTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add connection AP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nconnectionConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nhasConnectedInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-virtual {p0, v8}, Lcom/android/settingslib/wifi/WifiTracker;->i(Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, v2}, Lf/d;->s(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    goto :goto_b

    :cond_1c
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->b()V

    return-void

    :goto_c
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lr2/c;->e(Landroid/net/wifi/WifiManager;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLastInfo set: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mLastNetworkInfo set: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->c()V

    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->c:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$f;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$f;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Lcom/android/settingslib/wifi/WifiTracker$f;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->r:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Z

    :cond_0
    return-void
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting scores for Network Keys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkScoreManager;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->l:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Landroid/net/NetworkInfo;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLastNetworkInfo set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker$e;->j()V

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLastInfo set as: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_4

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v3, :cond_4

    move-object v0, v2

    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_9

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/d;

    invoke-virtual {v5}, Lf/d;->i()Z

    move-result v6

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Landroid/net/NetworkInfo;

    invoke-virtual {v5, v0, v7, v8}, Lf/d;->r(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lf/d;->i()Z

    move-result v4

    if-eq v6, v4, :cond_6

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_6
    move v4, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v5, v6}, Lf/d;->s(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v3, v2

    move v4, v3

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->b()V

    :cond_b
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k(Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-static {v2, v1}, Lr2/c;->h(Landroid/net/wifi/WifiManager;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OSU:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/settingslib/wifi/WifiTracker;->f(Ljava/lang/String;Ljava/util/ArrayList;)Lf/d;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Lf/d;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v4}, Lf/d;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Lf/d;->o(Ljava/util/List;)V

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final l(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    const-string v6, "FQDN:"

    invoke-static {v6, v5}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lf/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Lf/d;->f(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    invoke-static {v7, v5, v6}, Lf/d;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5, p2}, Lcom/android/settingslib/wifi/WifiTracker;->f(Ljava/lang/String;Ljava/util/ArrayList;)Lf/d;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Lf/d;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v4, v2}, Lf/d;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v3}, Lf/d;->q(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v5, v4, v2}, Lf/d;->p(Ljava/util/List;Ljava/util/List;)V

    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final m(Ljava/util/ArrayList;)Landroid/util/ArrayMap;
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Z

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x3a98

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x7530

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lf/h;

    invoke-direct {v0, v4, v5, v2, v3}, Lf/h;-><init>(JJ)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "[IBSS]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lf/d;->e(Landroid/content/Context;Landroid/net/wifi/ScanResult;)I

    move-result v4

    invoke-static {v4, v2, v3}, Lf/d;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-object p1
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Lcom/android/settingslib/wifi/WifiTracker$e;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiNetworkScoreCache;->unregisterListener()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->d()V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkScoreManager;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->h:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$c;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$c;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$c;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$c;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "WifiTracker"

    const-string v3, "Scanner resume"

    invoke-static {v2, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->h()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStop()V
    .locals 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Lcom/android/settingslib/wifi/WifiTracker$a;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Lcom/android/settingslib/wifi/WifiTracker$f;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkScoreManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->l:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v5, "WifiTracker"

    const-string v6, "Scanner pause"

    invoke-static {v5, v6}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Lcom/android/settingslib/wifi/WifiTracker$c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Z

    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
