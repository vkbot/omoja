.class public Lcom/mega/nexus/os/storage/MegaStorageManager;
.super Ljava/lang/Object;
.source "MegaStorageManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Landroid/os/storage/StorageManager;Ljava/lang/String;)Ljava/util/UUID;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "uuid"    # Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1
    .param p0, "uuid"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static findEmulatedForPrivate(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "privateVol"    # Landroid/os/storage/VolumeInfo;

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static format(Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "volId"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->format(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static getPrimaryStorageSize(Landroid/os/storage/StorageManager;)J
    .locals 2
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;

    .line 45
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVolumeList(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;

    .line 19
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumePaths(Landroid/os/storage/StorageManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;

    .line 41
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeState(Landroid/os/storage/StorageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "mountPoint"    # Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumes(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 1
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isUserKeyUnlocked(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 15
    invoke-static {p0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public static mount(Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "volId"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->mount(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static registerListener(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
    .locals 0
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .line 63
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 64
    return-void
.end method

.method public static unmount(Landroid/os/storage/StorageManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "volId"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static unregisterListener(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V
    .locals 0
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 69
    return-void
.end method

.method public static wipeAdoptableDisks(Landroid/os/storage/StorageManager;)V
    .locals 0
    .param p0, "storageManager"    # Landroid/os/storage/StorageManager;

    .line 72
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 73
    return-void
.end method
