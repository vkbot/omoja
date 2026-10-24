.class public Lcom/mega/update/task/FlashTask;
.super Ljava/lang/Object;
.source "FlashTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/mega/update/manager/ITriggerNotifier;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashTask"

.field private static final TEMP_MANIFEST:Ljava/lang/String; = ".temp_manifest"


# instance fields
.field private mFilename:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mOrderInfos:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/mega/update/info/ManifestInfo$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRemainUntrigerCount:I

.field private mStatusWatcher:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mega/update/manager/Result;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/FlashTask;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mega/update/task/FlashTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    .line 40
    iput-object p1, p0, Lcom/mega/update/task/FlashTask;->mFilename:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/task/FlashTask;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/task/FlashTask;

    .line 24
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private cancelTask()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private flashInternal()V
    .locals 14

    .line 135
    const-string v0, "FlashTask"

    const-string v1, "flashInternal"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->loadTempManifest()Lcom/mega/update/info/ManifestInfo;

    move-result-object v1

    .line 137
    .local v1, "manifest":Lcom/mega/update/info/ManifestInfo;
    if-nez v1, :cond_0

    .line 138
    const/16 v0, 0x33

    const-string v2, "manifest.json not found"

    invoke-direct {p0, v0, v2}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v2, v1, Lcom/mega/update/info/ManifestInfo;->softwareinfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 143
    .local v3, "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    iget-object v4, p0, Lcom/mega/update/task/FlashTask;->mFilename:Ljava/lang/String;

    iput-object v4, v3, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->package_file:Ljava/lang/String;

    .line 144
    iget-object v4, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    iget-object v5, v3, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->order:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v3    # "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    iput v2, p0, Lcom/mega/update/task/FlashTask;->mRemainUntrigerCount:I

    .line 148
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->startTimer()V

    .line 149
    iget-object v2, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 152
    .local v2, "order":Ljava/lang/Integer;
    :goto_1
    const/16 v3, 0x1f

    :try_start_0
    iget-object v4, p0, Lcom/mega/update/task/FlashTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 153
    iget-object v4, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 154
    .local v4, "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mega/update/manager/DeviceManager;->onReset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;

    move-result-object v5

    .line 155
    .local v5, "resetRes":Lcom/mega/update/manager/Result;
    iget v6, v5, Lcom/mega/update/manager/Result;->ret:I

    if-eqz v6, :cond_2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v6, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    iget-object v6, v6, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reset failed: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 157
    return-void

    .line 159
    :cond_2
    iget-boolean v6, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->ignore_same_version:Z

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->build_version:Ljava/lang/String;

    iget-object v7, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore same version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->current_version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    :cond_3
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v6

    invoke-virtual {v6, v4, p0}, Lcom/mega/update/manager/DeviceManager;->onFlash(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;

    move-result-object v6

    .line 163
    .local v6, "flashRes":Lcom/mega/update/manager/Result;
    iget v7, v6, Lcom/mega/update/manager/Result;->ret:I

    if-eqz v7, :cond_4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " flash start failed: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 165
    return-void

    .line 167
    :cond_4
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->startCountdown()V

    .line 168
    iget-object v7, p0, Lcom/mega/update/task/FlashTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mega/update/manager/Result;

    .line 169
    .local v7, "result":Lcom/mega/update/manager/Result;
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->cancelTask()V

    .line 170
    iget v8, p0, Lcom/mega/update/task/FlashTask;->mRemainUntrigerCount:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/mega/update/task/FlashTask;->mRemainUntrigerCount:I

    .line 171
    iget v8, v7, Lcom/mega/update/manager/Result;->ret:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "flash result failed: "

    if-eqz v8, :cond_5

    .line 172
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 173
    return-void

    .line 175
    :cond_5
    iget-object v8, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    iget v10, p0, Lcom/mega/update/task/FlashTask;->mRemainUntrigerCount:I

    sub-int/2addr v8, v10

    .line 176
    .local v8, "index":I
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    int-to-double v12, v8

    mul-double/2addr v12, v10

    iget-object v10, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->size()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v12, v10

    double-to-int v10, v12

    .line 177
    .local v10, "total":I
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/mega/update/manager/TaskScheduler;->onProgress(I)Z

    .line 178
    iget v11, v7, Lcom/mega/update/manager/Result;->ret:I

    if-eqz v11, :cond_6

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v11, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    iget-object v11, v11, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 180
    return-void

    .line 182
    :cond_6
    iget-object v9, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_7

    .line 183
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->reportSuccess()V

    .line 184
    nop

    .line 195
    .end local v4    # "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .end local v5    # "resetRes":Lcom/mega/update/manager/Result;
    .end local v6    # "flashRes":Lcom/mega/update/manager/Result;
    .end local v7    # "result":Lcom/mega/update/manager/Result;
    .end local v8    # "index":I
    .end local v10    # "total":I
    return-void

    .line 186
    .restart local v4    # "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .restart local v5    # "resetRes":Lcom/mega/update/manager/Result;
    .restart local v6    # "flashRes":Lcom/mega/update/manager/Result;
    .restart local v7    # "result":Lcom/mega/update/manager/Result;
    .restart local v8    # "index":I
    .restart local v10    # "total":I
    :cond_7
    iget-object v9, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v9, v2}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object v2, v9

    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onUpdateTrigged  order:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .end local v4    # "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    .end local v5    # "resetRes":Lcom/mega/update/manager/Result;
    .end local v6    # "flashRes":Lcom/mega/update/manager/Result;
    .end local v7    # "result":Lcom/mega/update/manager/Result;
    .end local v8    # "index":I
    .end local v10    # "total":I
    :goto_2
    goto/16 :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v5, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    iget-object v5, v5, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->devicename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "flashing crash failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method private loadTempManifest()Lcom/mega/update/info/ManifestInfo;
    .locals 5

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "result":Lcom/mega/update/info/ManifestInfo;
    const-string v1, ".temp_manifest"

    invoke-static {v1}, Lcom/mega/update/util/PropertiesUtil;->readFileByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 121
    .local v1, "jsonBytes":[B
    if-eqz v1, :cond_0

    .line 122
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 123
    .local v2, "jsonInfo":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/task/FlashTask$2;

    invoke-direct {v4, p0}, Lcom/mega/update/task/FlashTask$2;-><init>(Lcom/mega/update/task/FlashTask;)V

    invoke-virtual {v4}, Lcom/mega/update/task/FlashTask$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/info/ManifestInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 131
    .end local v2    # "jsonInfo":Ljava/lang/String;
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private reportFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->stopTimer()V

    .line 109
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mega/update/manager/TaskScheduler;->onError(ILjava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 111
    return-void
.end method

.method private reportSuccess()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->stopTimer()V

    .line 115
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 116
    return-void
.end method

.method private runTask()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->flashInternal()V

    goto :goto_0

    .line 57
    :cond_0
    const/16 v0, 0x34

    const-string v1, "switch state to 10(FALSHING) failed"

    invoke-direct {p0, v0, v1}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 59
    :goto_0
    return-void
.end method

.method private startCountdown()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    .line 73
    :cond_0
    new-instance v1, Lcom/mega/update/task/FlashTask$1;

    invoke-direct {v1, p0}, Lcom/mega/update/task/FlashTask$1;-><init>(Lcom/mega/update/task/FlashTask;)V

    iput-object v1, p0, Lcom/mega/update/task/FlashTask;->mTask:Ljava/util/TimerTask;

    .line 85
    iget-object v2, p0, Lcom/mega/update/task/FlashTask;->mTimer:Ljava/util/Timer;

    const-wide/32 v3, 0xdbba0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 86
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTimer()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/FlashTask;->mTimer:Ljava/util/Timer;

    .line 65
    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->cancelTask()V

    .line 100
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 102
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/task/FlashTask;->mTimer:Ljava/util/Timer;

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 6
    .param p1, "devProgress"    # I

    .line 208
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    iget v1, p0, Lcom/mega/update/task/FlashTask;->mRemainUntrigerCount:I

    sub-int/2addr v0, v1

    .line 209
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 214
    .local v1, "progress":F
    int-to-float v2, v0

    add-float/2addr v2, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/mega/update/task/FlashTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 215
    .local v2, "total":I
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mega/update/manager/TaskScheduler;->onProgress(I)Z

    .line 216
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->startCountdown()V

    .line 217
    return-void
.end method

.method public onStatusChanged(Lcom/mega/update/manager/Result;)V
    .locals 1
    .param p1, "result"    # Lcom/mega/update/manager/Result;

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/task/FlashTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 204
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->runTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flash unknown error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mega/update/task/FlashTask;->reportFailure(ILjava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 220
    const-string v0, "FlashTask"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/mega/update/task/AsyncTasksPool;->self()Lcom/mega/update/task/AsyncTasksPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mega/update/task/AsyncTasksPool;->executeTask(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public startImmediate()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/mega/update/task/FlashTask;->runTask()V

    .line 226
    return-void
.end method
