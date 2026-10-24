.class public Lcom/mega/nexus/os/storage/MegaStorageVolume;
.super Ljava/lang/Object;
.source "MegaStorageVolume.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getId(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 19
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 11
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageId(Landroid/os/storage/StorageVolume;)I
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 15
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getFatVolumeId()I

    move-result v0

    return v0
.end method

.method public static getUserLabel(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p0, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .line 7
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUserLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
