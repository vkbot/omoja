.class public Landroid/net/NetworkScoreManager;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearScores()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableScoring()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCallerActiveScorer(I)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
