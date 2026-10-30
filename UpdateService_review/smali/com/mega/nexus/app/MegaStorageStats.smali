.class public Lcom/mega/nexus/app/MegaStorageStats;
.super Ljava/lang/Object;
.source "MegaStorageStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCodeBytes(Landroid/app/usage/StorageStats;)J
    .locals 2
    .param p0, "stats"    # Landroid/app/usage/StorageStats;

    .line 7
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v0

    return-wide v0
.end method
