.class public Lcom/mega/nexus/app/usage/MegaStorageStatsManager;
.super Ljava/lang/Object;
.source "MegaStorageStatsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFreeBytes(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)J
    .locals 2
    .param p0, "storageStatsManager"    # Landroid/app/usage/StorageStatsManager;
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalBytes(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)J
    .locals 2
    .param p0, "storageStatsManager"    # Landroid/app/usage/StorageStatsManager;
    .param p1, "storageUuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/util/UUID;)J

    move-result-wide v0

    return-wide v0
.end method
