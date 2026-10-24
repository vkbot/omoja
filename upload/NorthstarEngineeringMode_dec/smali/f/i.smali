.class public final Lf/i;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lf/i;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final networkCacheUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lf/i;->a:Lcom/android/settingslib/wifi/WifiTracker;

    iget-boolean v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Score cache was updated with networks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lf/i;->a:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/d;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v2, v3}, Lf/d;->s(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->b()V

    :cond_3
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
