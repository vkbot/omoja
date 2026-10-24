.class public Landroid/net/NetworkScoreManager;
.super Ljava/lang/Object;
.source "NetworkScoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkScoreManager$RecommendationsEnabledSetting;,
        Landroid/net/NetworkScoreManager$CacheUpdateFilter;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_ACTIVE:Ljava/lang/String; = "android.net.scoring.CHANGE_ACTIVE"

.field public static final ACTION_CUSTOM_ENABLE:Ljava/lang/String; = "android.net.scoring.CUSTOM_ENABLE"

.field public static final ACTION_RECOMMEND_NETWORKS:Ljava/lang/String; = "android.net.action.RECOMMEND_NETWORKS"

.field public static final ACTION_SCORER_CHANGED:Ljava/lang/String; = "android.net.scoring.SCORER_CHANGED"

.field public static final ACTION_SCORE_NETWORKS:Ljava/lang/String; = "android.net.scoring.SCORE_NETWORKS"

.field public static final CACHE_FILTER_CURRENT_NETWORK:I = 0x1

.field public static final CACHE_FILTER_NONE:I = 0x0

.field public static final CACHE_FILTER_SCAN_RESULTS:I = 0x2

.field public static final EXTRA_NETWORKS_TO_SCORE:Ljava/lang/String; = "networksToScore"

.field public static final EXTRA_NEW_SCORER:Ljava/lang/String; = "newScorer"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final NETWORK_AVAILABLE_NOTIFICATION_CHANNEL_ID_META_DATA:Ljava/lang/String; = "android.net.wifi.notification_channel_id_network_available"

.field public static final RECOMMENDATIONS_ENABLED_FORCED_OFF:I = -0x1

.field public static final RECOMMENDATIONS_ENABLED_OFF:I = 0x0

.field public static final RECOMMENDATIONS_ENABLED_ON:I = 0x1

.field public static final RECOMMENDATION_SERVICE_LABEL_META_DATA:Ljava/lang/String; = "android.net.scoring.recommendation_service_label"

.field public static final USE_OPEN_WIFI_PACKAGE_META_DATA:Ljava/lang/String; = "android.net.wifi.use_open_wifi_package"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearScores()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableScoring()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCallerActiveScorer(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 281
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .param p3, "filterType"    # I

    .line 295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .line 308
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
