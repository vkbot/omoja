.class public Lcom/mega/update/task/ActivateTask;
.super Ljava/lang/Object;
.source "ActivateTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/mega/update/manager/ITriggerNotifier;


# static fields
.field private static final BUILD_LABEL:Ljava/lang/String;

.field public static final BUILD_LABEL_PROPERTY:Ljava/lang/String; = "ro.build.label"

.field private static final TAG:Ljava/lang/String; = "ActivateTask"

.field private static final TEMP_MANIFEST:Ljava/lang/String; = ".temp_manifest"

.field public static final WIPE_USERDATA_NEXT_PROPERTY:Ljava/lang/String; = "sys.state.monitor.wipe_userdata_next"


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

.field private mResume:Z

.field private mState:I

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
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "ro.build.label"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/task/ActivateTask;->BUILD_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/ActivateTask;->mLock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/update/task/ActivateTask;->mResume:Z

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    .line 47
    iput p2, p0, Lcom/mega/update/task/ActivateTask;->mState:I

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mega/update/task/ActivateTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    .line 49
    iput-object p1, p0, Lcom/mega/update/task/ActivateTask;->mFilename:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/task/ActivateTask;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/task/ActivateTask;

    .line 27
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private activeInternal()V
    .locals 13

    .line 160
    const-string v0, "ActivateTask"

    const-string v1, "activeInternal"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->loadTempManifest()Lcom/mega/update/info/ManifestInfo;

    move-result-object v1

    .line 162
    .local v1, "manifest":Lcom/mega/update/info/ManifestInfo;
    const/16 v2, 0x17

    if-nez v1, :cond_0

    .line 163
    const/16 v0, 0x33

    const-string v3, "manifest.json not found"

    invoke-direct {p0, v2, v0, v3}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    .line 164
    return-void

    .line 167
    :cond_0
    iget-object v3, v1, Lcom/mega/update/info/ManifestInfo;->softwareinfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    .line 168
    .local v4, "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add info order:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->order:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v5, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    iget-object v6, v4, Lcom/mega/update/info/ManifestInfo$DeviceInfo;->order:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v4    # "info":Lcom/mega/update/info/ManifestInfo$DeviceInfo;
    goto :goto_0

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    iput v3, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    .line 173
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->startTimer()V

    .line 174
    iget-object v3, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 175
    .local v3, "order":I
    new-instance v4, Lcom/mega/update/manager/Result;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/mega/update/manager/Result;-><init>(ILjava/lang/String;)V

    .line 177
    .local v4, "res":Lcom/mega/update/manager/Result;
    :goto_1
    iget-object v5, p0, Lcom/mega/update/task/ActivateTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 178
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    invoke-virtual {v5, v6, p0}, Lcom/mega/update/manager/DeviceManager;->onUpgrade(Lcom/mega/update/info/ManifestInfo$DeviceInfo;Lcom/mega/update/manager/ITriggerNotifier;)Lcom/mega/update/manager/Result;

    move-result-object v4

    .line 179
    iget v5, v4, Lcom/mega/update/manager/Result;->ret:I

    const/16 v6, 0x20

    if-eqz v5, :cond_2

    .line 180
    goto :goto_2

    .line 182
    :cond_2
    const-string v5, "start wait!!!"

    invoke-static {v0, v5}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->startCountdown()V

    .line 185
    iget-object v5, p0, Lcom/mega/update/task/ActivateTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mega/update/manager/Result;

    move-object v4, v5

    .line 186
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->cancelTask()V

    .line 187
    iget v5, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    .line 188
    iget-object v5, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    iget v7, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    sub-int/2addr v5, v7

    .line 189
    .local v5, "index":I
    int-to-double v7, v5

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    iget-object v11, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v11}, Ljava/util/TreeMap;->size()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v7, v11

    double-to-int v7, v7

    .line 190
    .local v7, "total":I
    iget v8, v4, Lcom/mega/update/manager/Result;->ret:I

    if-eqz v8, :cond_3

    .line 191
    goto :goto_2

    .line 193
    :cond_3
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mega/update/manager/TaskScheduler;->onProgress(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    nop

    .line 200
    .end local v5    # "index":I
    .end local v7    # "total":I
    iget v5, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    .line 201
    iget-object v5, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    iget v7, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    sub-int/2addr v5, v7

    .line 202
    .restart local v5    # "index":I
    int-to-double v7, v5

    mul-double/2addr v7, v9

    iget-object v9, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    .line 203
    .restart local v7    # "total":I
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mega/update/manager/TaskScheduler;->onProgress(I)Z

    .line 204
    iget-object v8, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v3, v8, :cond_a

    .line 205
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->reportSuccess()V

    .line 206
    nop

    .line 211
    .end local v5    # "index":I
    .end local v7    # "total":I
    :goto_2
    iget v5, v4, Lcom/mega/update/manager/Result;->ret:I

    if-eqz v5, :cond_7

    .line 212
    iget-object v5, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 213
    .local v5, "key":I
    const/4 v7, 0x0

    .line 215
    .local v7, "resetErr":Z
    :goto_3
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v8

    iget-object v9, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mega/update/info/ManifestInfo$DeviceInfo;

    invoke-virtual {v8, v9}, Lcom/mega/update/manager/DeviceManager;->onReset(Lcom/mega/update/info/ManifestInfo$DeviceInfo;)Lcom/mega/update/manager/Result;

    move-result-object v8

    iget v8, v8, Lcom/mega/update/manager/Result;->ret:I

    if-eqz v8, :cond_4

    .line 216
    const/4 v7, 0x1

    .line 218
    :cond_4
    if-ne v5, v3, :cond_6

    .line 219
    nop

    .line 224
    if-eqz v7, :cond_5

    .line 225
    const/16 v0, 0x19

    const-string v2, "active fail, go reset error"

    invoke-direct {p0, v0, v6, v2}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    goto :goto_4

    .line 227
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active fail, reset success: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/mega/update/manager/Result;->desc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v6, v0}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    .line 229
    .end local v5    # "key":I
    .end local v7    # "resetErr":Z
    :goto_4
    goto/16 :goto_6

    .line 221
    .restart local v5    # "key":I
    .restart local v7    # "resetErr":Z
    :cond_6
    iget-object v8, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActive reset order:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 230
    .end local v5    # "key":I
    .end local v7    # "resetErr":Z
    :cond_7
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v2

    const/16 v5, 0x16

    invoke-virtual {v2, v5}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 231
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mega/update/manager/TaskScheduler;->flush()V

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUILD_LABEL="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mega/update/task/ActivateTask;->BUILD_LABEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, v1, Lcom/mega/update/info/ManifestInfo;->label:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/mega/update/info/ManifestInfo;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcom/mega/update/info/ManifestInfo;->label:Ljava/lang/String;

    sget-object v5, Lcom/mega/update/task/ActivateTask;->BUILD_LABEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 235
    const-string v2, "sys.state.monitor.wipe_userdata_next"

    const-string v5, "true"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-wide/16 v5, 0x1388

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    goto :goto_5

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v5, "sleep delay error5000"

    invoke-static {v0, v5}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_5
    iget-boolean v2, v1, Lcom/mega/update/info/ManifestInfo;->non_reboot:Z

    if-eqz v2, :cond_9

    .line 243
    const-string v2, "no need reboot host"

    invoke-static {v0, v2}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->checkState()V

    goto :goto_6

    .line 246
    :cond_9
    invoke-static {}, Lcom/mega/update/manager/DeviceManager;->self()Lcom/mega/update/manager/DeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mega/update/manager/DeviceManager;->rebootHost()V

    .line 249
    :goto_6
    return-void

    .line 208
    .local v5, "index":I
    .local v7, "total":I
    :cond_a
    iget-object v6, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 209
    .end local v5    # "index":I
    .end local v7    # "total":I
    goto/16 :goto_1

    .line 194
    :catch_1
    move-exception v5

    .line 195
    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "acitivate fail!!!"

    invoke-static {v0, v7}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "active error: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v6, v0}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    .line 198
    return-void
.end method

.method private cancelTask()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    .line 115
    :cond_0
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkState()V
    .locals 2

    .line 155
    const-string v0, "ActivateTask"

    const-string v1, "Skip check state"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 157
    return-void
.end method

.method private loadTempManifest()Lcom/mega/update/info/ManifestInfo;
    .locals 5

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "result":Lcom/mega/update/info/ManifestInfo;
    const-string v1, ".temp_manifest"

    invoke-static {v1}, Lcom/mega/update/util/PropertiesUtil;->readFileByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 141
    .local v1, "jsonBytes":[B
    if-eqz v1, :cond_0

    .line 142
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 143
    .local v2, "jsonInfo":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/task/ActivateTask$2;

    invoke-direct {v4, p0}, Lcom/mega/update/task/ActivateTask$2;-><init>(Lcom/mega/update/task/ActivateTask;)V

    invoke-virtual {v4}, Lcom/mega/update/task/ActivateTask$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/info/ManifestInfo;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 151
    .end local v2    # "jsonInfo":Ljava/lang/String;
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private reportFailure(IILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "code"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->stopTimer()V

    .line 129
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mega/update/manager/TaskScheduler;->onError(ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 131
    return-void
.end method

.method private reportSuccess()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->stopTimer()V

    .line 135
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    .line 136
    return-void
.end method

.method private runTask()V
    .locals 5

    .line 63
    iget v0, p0, Lcom/mega/update/task/ActivateTask;->mState:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->checkState()V

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "switch state to 21(ACTIVATING) failed"

    const/16 v2, 0x34

    const/16 v3, 0x15

    const/16 v4, 0x19

    if-ne v0, v4, :cond_2

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/update/task/ActivateTask;->mResume:Z

    .line 67
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->activeInternal()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, v4, v2, v1}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mega/update/manager/TaskScheduler;->switchState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->activeInternal()V

    goto :goto_0

    .line 76
    :cond_3
    const/16 v0, 0x17

    invoke-direct {p0, v0, v2, v1}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    .line 79
    :goto_0
    return-void
.end method

.method private startCountdown()V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    .line 93
    :cond_0
    new-instance v1, Lcom/mega/update/task/ActivateTask$1;

    invoke-direct {v1, p0}, Lcom/mega/update/task/ActivateTask$1;-><init>(Lcom/mega/update/task/ActivateTask;)V

    iput-object v1, p0, Lcom/mega/update/task/ActivateTask;->mTask:Ljava/util/TimerTask;

    .line 105
    iget-object v2, p0, Lcom/mega/update/task/ActivateTask;->mTimer:Ljava/util/Timer;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTimer()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mega/update/task/ActivateTask;->mTimer:Ljava/util/Timer;

    .line 85
    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->cancelTask()V

    .line 120
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/task/ActivateTask;->mTimer:Ljava/util/Timer;

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 6
    .param p1, "devProgress"    # I

    .line 263
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    iget v1, p0, Lcom/mega/update/task/ActivateTask;->mRemainUntrigerCount:I

    sub-int/2addr v0, v1

    .line 264
    .local v0, "index":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 268
    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 269
    .local v1, "progress":F
    int-to-float v2, v0

    add-float/2addr v2, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/mega/update/task/ActivateTask;->mOrderInfos:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 270
    .local v2, "total":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activate progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivateTask"

    invoke-static {v4, v3}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/mega/update/manager/TaskScheduler;->self()Lcom/mega/update/manager/TaskScheduler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mega/update/manager/TaskScheduler;->onProgress(I)Z

    .line 272
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->startCountdown()V

    .line 273
    return-void
.end method

.method public onStatusChanged(Lcom/mega/update/manager/Result;)V
    .locals 2
    .param p1, "result"    # Lcom/mega/update/manager/Result;

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mega/update/manager/Result;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivateTask"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/task/ActivateTask;->mStatusWatcher:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 259
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->runTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x19

    const/16 v2, 0x47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "active task unknown error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/mega/update/task/ActivateTask;->reportFailure(IILjava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 276
    const-string v0, "ActivateTask"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/mega/update/task/AsyncTasksPool;->self()Lcom/mega/update/task/AsyncTasksPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mega/update/task/AsyncTasksPool;->executeTask(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public startImmediate()V
    .locals 0

    .line 281
    invoke-direct {p0}, Lcom/mega/update/task/ActivateTask;->runTask()V

    .line 282
    return-void
.end method
