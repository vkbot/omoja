.class public Lcom/mega/update/task/LoadTask;
.super Ljava/lang/Object;
.source "LoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/task/LoadTask$ValueResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadTask"

.field private static final TEMP_MANIFEST:Ljava/lang/String; = ".temp_manifest"


# instance fields
.field private mEncInfo:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mForce:Z

.field private mLock:Ljava/lang/Object;

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "encInfo"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/LoadTask;->mLock:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/mega/update/task/LoadTask;->mFilename:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/mega/update/task/LoadTask;->mEncInfo:Ljava/lang/String;

    .line 40
    iput-boolean p3, p0, Lcom/mega/update/task/LoadTask;->mForce:Z

    .line 41
    return-void
.end method

.method private cancelTask()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/mega/update/task/LoadTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/task/LoadTask;->mTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/mega/update/task/LoadTask;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/update/task/LoadTask;->mTask:Ljava/util/TimerTask;

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private convertInfo(Lcom/mega/update/info/ManifestInfo;)Z
    .locals 10
    .param p1, "manifest"    # Lcom/mega/update/info/ManifestInfo;

    .line 76
    iget-object v0, p1, Lcom/mega/update/info/ManifestInfo;->softwareinfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 77
    .local v1, "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    iget-boolean v2, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->no_check_version:Z

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need check version for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoadTask"

    invoke-static {v3, v2}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mega/update/manager/DeviceManager;->getVersion(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;

    move-result-object v2

    .line 82
    .local v2, "res":Lcom/mega/update/manager/Result;
    iget v3, v2, Lcom/mega/update/manager/Result;->ret:I

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-eqz v3, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertInfo, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 84
    return v4

    .line 86
    :cond_1
    iget-boolean v3, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->multi:Z

    if-eqz v3, :cond_4

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "convert":Z
    iget-object v6, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;

    .line 89
    .local v7, "vendor":Lcom/mega/update/info/ManifestInfo$VendorInfo;
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->vendor_id:Ljava/lang/String;

    iget-object v9, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 90
    const/4 v3, 0x1

    .line 91
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->base_version:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->base_version:Ljava/lang/String;

    .line 92
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->basefile:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->basefile:Ljava/lang/String;

    .line 93
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->build_date:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->build_date:Ljava/lang/String;

    .line 94
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->build_time:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->build_time:Ljava/lang/String;

    .line 95
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->build_version:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->build_version:Ljava/lang/String;

    .line 96
    iget v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->delta:I

    iput v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->delta:I

    .line 97
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filename:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filename:Ljava/lang/String;

    .line 98
    iget-object v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->sha256:Ljava/lang/String;

    iput-object v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->sha256:Ljava/lang/String;

    .line 99
    iget-wide v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->filesize:J

    iput-wide v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->filesize:J

    .line 100
    iget-wide v8, v7, Lcom/mega/update/info/ManifestInfo$VendorInfo;->package_offset:J

    iput-wide v8, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_offset:J

    .line 102
    .end local v7    # "vendor":Lcom/mega/update/info/ManifestInfo$VendorInfo;
    :cond_2
    goto :goto_1

    .line 103
    :cond_3
    if-nez v3, :cond_4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " vendor id not found: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_vendor_id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 105
    return v4

    .line 108
    .end local v1    # "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .end local v2    # "res":Lcom/mega/update/manager/Result;
    .end local v3    # "convert":Z
    :cond_4
    goto/16 :goto_0

    .line 109
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private loadInternal()V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadInternal file :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/update/task/LoadTask;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoadTask"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/mega/update/task/LoadTask;->verifyPackage()V

    .line 124
    return-void
.end method

.method private reportFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mega/update/manager/TaskScheduler;->onError(ILjava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 115
    return-void
.end method

.method private reportSuccess()V
    .locals 2

    .line 118
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 119
    return-void
.end method

.method private runTask()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/mega/update/task/LoadTask;->loadInternal()V

    goto :goto_0

    .line 57
    :cond_0
    const/16 v0, 0x34

    const-string v1, "switch state to 1(LOADING) failed"

    invoke-direct {p0, v0, v1}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method

.method private saveTempManifest(Lcom/mega/update/info/ManifestInfo;)V
    .locals 3
    .param p1, "mani"    # Lcom/mega/update/info/ManifestInfo;

    .line 127
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, ".temp_manifest"

    invoke-static {v2, v1}, Lcom/mega/update/util/PropertiesUtil;->writeFileByte(Ljava/lang/String;[B)V

    .line 129
    const-string v1, "LoadTask"

    const-string v2, "save temp manifest"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private signatureVerify()Z
    .locals 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method private verifyPackage()V
    .locals 5

    .line 133
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mega/update/task/LoadTask;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "LoadTask"

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mega/update/task/LoadTask;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mega/update/task/LoadTask;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/mega/update/task/LoadTask;->signatureVerify()Z

    move-result v1

    const/4 v3, 0x5

    if-nez v1, :cond_1

    .line 141
    const-string v1, "signature verify failed"

    invoke-direct {p0, v3, v1}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 142
    return-void

    .line 145
    :cond_1
    const-string v1, "lunch manifest and verify"

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/mega/update/task/LoadTask;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/mega/update/util/FileHelper;->lunchManifest(Ljava/lang/String;Z)Lcom/mega/update/info/ManifestInfo;

    move-result-object v1

    .line 147
    .local v1, "manifest":Lcom/mega/update/info/ManifestInfo;
    if-nez v1, :cond_2

    .line 148
    const/4 v2, 0x6

    const-string v3, "package verify failed!"

    invoke-direct {p0, v2, v3}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 149
    return-void

    .line 152
    :cond_2
    invoke-direct {p0, v1}, Lcom/mega/update/task/LoadTask;->convertInfo(Lcom/mega/update/info/ManifestInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 153
    const-string v3, "convert sofeware Info error"

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_3
    iget-object v2, v1, Lcom/mega/update/info/ManifestInfo;->softwareinfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    const-string v2, "manifest.json softwareinfo is empty"

    invoke-direct {p0, v3, v2}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 159
    return-void

    .line 162
    :cond_4
    invoke-direct {p0, v1}, Lcom/mega/update/task/LoadTask;->saveTempManifest(Lcom/mega/update/info/ManifestInfo;)V

    .line 164
    invoke-direct {p0}, Lcom/mega/update/task/LoadTask;->reportSuccess()V

    .line 165
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/task/LoadTask;->runTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/16 v1, 0x47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load task unknown error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mega/update/task/LoadTask;->reportFailure(ILjava/lang/String;)V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 168
    const-string v0, "LoadTask"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/mega/update/task/AsyncTasksPool;->self()Lcom/mega/update/task/AsyncTasksPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mega/update/task/AsyncTasksPool;->executeTask(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public startImmediate()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/mega/update/task/LoadTask;->runTask()V

    .line 174
    return-void
.end method
