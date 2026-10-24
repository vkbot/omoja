.class public Lcom/mega/ota/test/UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbReceiver.java"


# static fields
.field private static final MOUNTED_PREFIX:Ljava/lang/String; = "/mnt/media_rw"

.field private static final MOUNTED_PREFIX_SD:Ljava/lang/String; = "/mnt/media_rw/SD_"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIUsbListener:Lcom/mega/ota/test/IUsbListener;

.field private volatile mMounted:Z

.field private mSourceVolume:Landroid/os/storage/StorageVolume;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mega/ota/test/IUsbListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mega/ota/test/IUsbListener;

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const-string v0, "mega_ota_2.0"

    iput-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mIUsbListener:Lcom/mega/ota/test/IUsbListener;

    .line 28
    iput-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/ota/test/UsbReceiver;->mMounted:Z

    .line 33
    iput-object p1, p0, Lcom/mega/ota/test/UsbReceiver;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/mega/ota/test/UsbReceiver;->mIUsbListener:Lcom/mega/ota/test/IUsbListener;

    .line 35
    return-void
.end method

.method private findPlugoutVolume()V
    .locals 6

    .line 89
    const-string v0, "mega_ota_2.0"

    const-string v1, " UsbReceiver findPlugoutVolume enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 95
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UsbReceiver findPlugoutVolume name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    iput-object v3, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 98
    invoke-direct {p0}, Lcom/mega/ota/test/UsbReceiver;->onStateChanged()V

    .line 99
    goto :goto_1

    .line 101
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    goto :goto_0

    .line 102
    :cond_2
    :goto_1
    return-void
.end method

.method private onStateChanged()V
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " UsbReceiver onStateChanged usbVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega_ota_2.0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, " UsbReceiver onStateChanged volume mounted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/ota/test/UsbReceiver;->mMounted:Z

    .line 109
    iget-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mIUsbListener:Lcom/mega/ota/test/IUsbListener;

    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-interface {v0, v1}, Lcom/mega/ota/test/IUsbListener;->attached(Landroid/os/storage/StorageVolume;)V

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "unmounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ejecting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    :cond_1
    const-string v0, " UsbReceiver onStateChanged volume unmounted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/ota/test/UsbReceiver;->mMounted:Z

    .line 115
    iget-object v0, p0, Lcom/mega/ota/test/UsbReceiver;->mIUsbListener:Lcom/mega/ota/test/IUsbListener;

    invoke-interface {v0}, Lcom/mega/ota/test/IUsbListener;->detached()V

    .line 117
    :cond_2
    return-void
.end method


# virtual methods
.method public findPluginVolume()V
    .locals 8

    .line 64
    const-string v0, "mega_ota_2.0"

    const-string v1, " UsbReceiver findPluginVolume enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/mega/ota/test/UsbReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 70
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getInternalPath()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "inernalPath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "uDiskRootPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " UsbReceiver findPluginVolume inernalPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uDiskRootPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    const-string v6, "/mnt/media_rw/SD_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    const-string v6, "/mnt/media_rw"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    iput-object v3, p0, Lcom/mega/ota/test/UsbReceiver;->mSourceVolume:Landroid/os/storage/StorageVolume;

    .line 82
    invoke-direct {p0}, Lcom/mega/ota/test/UsbReceiver;->onStateChanged()V

    .line 85
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    .end local v4    # "inernalPath":Ljava/lang/String;
    .end local v5    # "uDiskRootPath":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 86
    :cond_4
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    const-string v0, "mega_ota_2.0"

    const-string v1, " UsbReceiver onReceive enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    return-void

    .line 49
    :cond_1
    const/4 v1, -0x1

    const-string v2, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, "state":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/mega/ota/test/UsbReceiver;->mMounted:Z

    if-nez v2, :cond_2

    .line 52
    const-string v2, " UsbReceiver onReceive state_mounted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/mega/ota/test/UsbReceiver;->findPluginVolume()V

    .line 54
    return-void

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/mega/ota/test/UsbReceiver;->mMounted:Z

    if-eqz v2, :cond_4

    .line 58
    const-string v2, " UsbReceiver onReceive state_unmounted"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/mega/ota/test/UsbReceiver;->findPlugoutVolume()V

    .line 61
    :cond_4
    return-void

    .line 42
    .end local v1    # "state":I
    :cond_5
    :goto_0
    return-void
.end method
