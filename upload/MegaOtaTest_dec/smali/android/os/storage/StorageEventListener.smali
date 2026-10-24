.class public Landroid/os/storage/StorageEventListener;
.super Ljava/lang/Object;
.source "StorageEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
