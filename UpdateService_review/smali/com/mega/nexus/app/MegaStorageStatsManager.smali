.class public Lcom/mega/nexus/app/MegaStorageStatsManager;
.super Ljava/lang/Object;
.source "MegaStorageStatsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheQuotaBytes(Landroid/app/usage/StorageStatsManager;Ljava/lang/String;I)J
    .locals 2
    .param p0, "stats"    # Landroid/app/usage/StorageStatsManager;
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method
