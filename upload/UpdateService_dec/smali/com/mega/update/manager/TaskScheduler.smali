.class public Lcom/mega/update/manager/TaskScheduler;
.super Ljava/lang/Object;
.source "TaskScheduler.java"


# static fields
.field private static final ACTION_MAP_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final STATE_CHECK_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TaskScheduler"

.field private static final UPDATE_STATE:Ljava/lang/String; = ".update_stat"

.field private static sInstance:Lcom/mega/update/manager/TaskScheduler;


# instance fields
.field private mInfo:Lcom/mega/update/info/UpdateInfo;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/mega/update/manager/TaskScheduler$2;

    invoke-direct {v0}, Lcom/mega/update/manager/TaskScheduler$2;-><init>()V

    sput-object v0, Lcom/mega/update/manager/TaskScheduler;->ACTION_MAP_TABLE:Ljava/util/Map;

    .line 241
    new-instance v0, Lcom/mega/update/manager/TaskScheduler$3;

    invoke-direct {v0}, Lcom/mega/update/manager/TaskScheduler$3;-><init>()V

    sput-object v0, Lcom/mega/update/manager/TaskScheduler;->STATE_CHECK_TABLE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mLock:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private checkAction(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAction action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskScheduler"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    .line 278
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_0
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/mega/update/manager/TaskScheduler;->isAllowedChange(I)Z

    move-result v0

    return v0

    .line 274
    :cond_1
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/mega/update/manager/TaskScheduler;->isAllowedChange(I)Z

    move-result v0

    return v0

    .line 271
    :cond_2
    invoke-direct {p0, v0}, Lcom/mega/update/manager/TaskScheduler;->isAllowedChange(I)Z

    move-result v0

    return v0
.end method

.method private getActionTime(I)I
    .locals 1
    .param p1, "action"    # I

    .line 198
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    const/16 v0, 0x3e8

    return v0
.end method

.method private getStateLocked()Lcom/mega/update/service/UpdateState;
    .locals 3

    .line 103
    new-instance v0, Lcom/mega/update/service/UpdateState;

    invoke-direct {v0}, Lcom/mega/update/service/UpdateState;-><init>()V

    .line 104
    .local v0, "state":Lcom/mega/update/service/UpdateState;
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "TaskScheduler"

    const-string v2, "getStateLocked mInfo is null"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->reset()V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v1, Lcom/mega/update/info/UpdateInfo;->state:I

    invoke-virtual {v0, v1}, Lcom/mega/update/service/UpdateState;->setState(I)V

    .line 109
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v1, v1, Lcom/mega/update/info/UpdateInfo;->running:Z

    invoke-virtual {v0, v1}, Lcom/mega/update/service/UpdateState;->setRunning(Z)V

    .line 110
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v1, Lcom/mega/update/info/UpdateInfo;->errCode:I

    invoke-virtual {v0, v1}, Lcom/mega/update/service/UpdateState;->setErrorCode(I)V

    .line 111
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v1, Lcom/mega/update/info/UpdateInfo;->progress:I

    invoke-virtual {v0, v1}, Lcom/mega/update/service/UpdateState;->setProgress(I)V

    .line 112
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v1, v1, Lcom/mega/update/info/UpdateInfo;->errDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mega/update/service/UpdateState;->setErrorDesc(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v1, v1, Lcom/mega/update/info/UpdateInfo;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mega/update/service/UpdateState;->setFilename(Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method private isAllowedChange(I)Z
    .locals 5
    .param p1, "targetState"    # I

    .line 257
    sget-object v0, Lcom/mega/update/manager/TaskScheduler;->STATE_CHECK_TABLE:Ljava/util/Map;

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v1, Lcom/mega/update/info/UpdateInfo;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 258
    return v1

    .line 259
    :cond_0
    sget-object v0, Lcom/mega/update/manager/TaskScheduler;->STATE_CHECK_TABLE:Ljava/util/Map;

    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v2, v2, Lcom/mega/update/info/UpdateInfo;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 260
    .local v4, "s":I
    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 259
    .end local v4    # "s":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_2
    return v1
.end method

.method private reset()V
    .locals 13

    .line 40
    const-string v0, "TaskScheduler"

    const-string v1, "reset update info"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/mega/update/info/UpdateInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/mega/update/info/UpdateInfo;-><init>(ZII[IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    .line 43
    return-void
.end method

.method private saveLocked()V
    .locals 3

    .line 85
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskScheduler"

    invoke-static {v2, v1}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, ".update_stat"

    invoke-static {v2, v1}, Lcom/mega/update/util/PropertiesUtil;->writeFileByte(Ljava/lang/String;[B)V

    .line 88
    return-void
.end method

.method public static declared-synchronized self()Lcom/mega/update/manager/TaskScheduler;
    .locals 2

    const-class v0, Lcom/mega/update/manager/TaskScheduler;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/mega/update/manager/TaskScheduler;->sInstance:Lcom/mega/update/manager/TaskScheduler;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/mega/update/manager/TaskScheduler;

    invoke-direct {v1}, Lcom/mega/update/manager/TaskScheduler;-><init>()V

    sput-object v1, Lcom/mega/update/manager/TaskScheduler;->sInstance:Lcom/mega/update/manager/TaskScheduler;

    .line 36
    :cond_0
    sget-object v1, Lcom/mega/update/manager/TaskScheduler;->sInstance:Lcom/mega/update/manager/TaskScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private triggerActionLocked()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v0, v0, Lcom/mega/update/info/UpdateInfo;->running:Z

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->saveLocked()V

    .line 287
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v0, v0, Lcom/mega/update/info/UpdateInfo;->actions:[I

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v1, Lcom/mega/update/info/UpdateInfo;->step:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    new-instance v0, Lcom/mega/update/task/ActivateTask;

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v1, v1, Lcom/mega/update/info/UpdateInfo;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v2, v2, Lcom/mega/update/info/UpdateInfo;->state:I

    invoke-direct {v0, v1, v2}, Lcom/mega/update/task/ActivateTask;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/mega/update/task/ActivateTask;->start()V

    .line 296
    goto :goto_0

    .line 292
    :cond_2
    new-instance v0, Lcom/mega/update/task/FlashTask;

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v1, v1, Lcom/mega/update/info/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mega/update/task/FlashTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mega/update/task/FlashTask;->start()V

    .line 293
    goto :goto_0

    .line 289
    :cond_3
    new-instance v0, Lcom/mega/update/task/LoadTask;

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v1, v1, Lcom/mega/update/info/UpdateInfo;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v2, v2, Lcom/mega/update/info/UpdateInfo;->encInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v3, v3, Lcom/mega/update/info/UpdateInfo;->force:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/mega/update/task/LoadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/mega/update/task/LoadTask;->start()V

    .line 290
    nop

    .line 300
    :goto_0
    return-void
.end method

.method private turnNextLocked()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v0, v0, Lcom/mega/update/info/UpdateInfo;->actions:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v1, Lcom/mega/update/info/UpdateInfo;->step:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 235
    const/4 v0, 0x0

    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v1, v0, Lcom/mega/update/info/UpdateInfo;->step:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mega/update/info/UpdateInfo;->step:I

    .line 238
    return v2
.end method


# virtual methods
.method public declared-synchronized applyAction(Lcom/mega/update/service/UpdateOption;)I
    .locals 7
    .param p1, "option"    # Lcom/mega/update/service/UpdateOption;

    monitor-enter p0

    .line 129
    :try_start_0
    const-string v0, "TaskScheduler"

    const-string v1, "applyAction enter"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v0, v0, Lcom/mega/update/info/UpdateInfo;->running:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "TaskScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task is running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v2, v2, Lcom/mega/update/info/UpdateInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 135
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/mega/update/service/UpdateOption;->getAction()I

    move-result v0

    .line 136
    .local v0, "action":I
    sget-object v1, Lcom/mega/update/manager/TaskScheduler;->ACTION_MAP_TABLE:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x34

    if-nez v1, :cond_1

    .line 137
    const-string v1, "TaskScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit p0

    return v2

    .line 140
    :cond_1
    :try_start_2
    sget-object v1, Lcom/mega/update/manager/TaskScheduler;->ACTION_MAP_TABLE:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 141
    .local v1, "list":[I
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    if-ne v5, v4, :cond_2

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateOption;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    const-string v2, "TaskScheduler"

    const-string v3, "Filename is none"

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    const/16 v2, 0x46

    monitor-exit p0

    return v2

    .line 146
    :cond_2
    :try_start_3
    aget v4, v1, v3

    invoke-direct {p0, v4}, Lcom/mega/update/manager/TaskScheduler;->checkAction(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 147
    const-string v4, "TaskScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry denied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v1, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    monitor-exit p0

    return v2

    .line 150
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput-object v1, v2, Lcom/mega/update/info/UpdateInfo;->actions:[I

    .line 151
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateOption;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mega/update/info/UpdateInfo;->filename:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateOption;->getEncInfo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/mega/update/info/UpdateInfo;->encInfo:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    invoke-virtual {p1}, Lcom/mega/update/service/UpdateOption;->getForce()Z

    move-result v4

    iput-boolean v4, v2, Lcom/mega/update/info/UpdateInfo;->force:Z

    .line 154
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput-boolean v5, v2, Lcom/mega/update/info/UpdateInfo;->running:Z

    .line 155
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput v3, v2, Lcom/mega/update/info/UpdateInfo;->step:I

    .line 156
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput v3, v2, Lcom/mega/update/info/UpdateInfo;->progress:I

    .line 157
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput v3, v2, Lcom/mega/update/info/UpdateInfo;->errCode:I

    .line 158
    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    const-string v4, ""

    iput-object v4, v2, Lcom/mega/update/info/UpdateInfo;->errDesc:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->triggerActionLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    monitor-exit p0

    return v3

    .line 128
    .end local v0    # "action":I
    .end local v1    # "list":[I
    .end local p1    # "option":Lcom/mega/update/service/UpdateOption;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public flush()V
    .locals 3

    .line 92
    :goto_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ".update_stat"

    invoke-static {v1}, Lcom/mega/update/util/PropertiesUtil;->readFileByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 93
    .local v0, "jsonInfo":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    .end local v0    # "jsonInfo":Ljava/lang/String;
    return-void

    .line 95
    .restart local v0    # "jsonInfo":Ljava/lang/String;
    :cond_0
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 99
    .end local v0    # "jsonInfo":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized getState()Lcom/mega/update/service/UpdateState;
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->getStateLocked()Lcom/mega/update/service/UpdateState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 118
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v0, v0, Lcom/mega/update/info/UpdateInfo;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 164
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "err"    # I
    .param p2, "desc"    # Ljava/lang/String;

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput p1, v0, Lcom/mega/update/info/UpdateInfo;->errCode:I

    .line 230
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput-object p2, v0, Lcom/mega/update/info/UpdateInfo;->errDesc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 228
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    .end local p1    # "err":I
    .end local p2    # "desc":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onProgress(I)Z
    .locals 5
    .param p1, "progress"    # I

    monitor-enter p0

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "totalTime":I
    const/4 v1, 0x0

    .line 213
    .local v1, "curTime":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v3, v3, Lcom/mega/update/info/UpdateInfo;->actions:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v3, v3, Lcom/mega/update/info/UpdateInfo;->actions:[I

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/mega/update/manager/TaskScheduler;->getActionTime(I)I

    move-result v3

    .line 215
    .local v3, "stepTime":I
    iget-object v4, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v4, v4, Lcom/mega/update/info/UpdateInfo;->step:I

    if-ne v2, v4, :cond_0

    .line 216
    mul-int v4, p1, v3

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v4, v0

    move v1, v4

    .line 218
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    :cond_0
    add-int/2addr v0, v3

    .line 213
    .end local v3    # "stepTime":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_1
    mul-int/lit8 v2, v1, 0x64

    div-int/2addr v2, v0

    .line 221
    .local v2, "curProgress":I
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v3, v3, Lcom/mega/update/info/UpdateInfo;->progress:I

    if-le v2, v3, :cond_2

    .line 222
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput v2, v3, Lcom/mega/update/info/UpdateInfo;->progress:I

    .line 224
    :cond_2
    invoke-static {}, Lcom/mega/update/manager/UpdateNotifier;->self()Lcom/mega/update/manager/UpdateNotifier;

    move-result-object v3

    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->getStateLocked()Lcom/mega/update/service/UpdateState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mega/update/manager/UpdateNotifier;->notifyStateChange(Lcom/mega/update/service/UpdateState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    .line 210
    .end local v0    # "totalTime":I
    .end local v1    # "curTime":I
    .end local v2    # "curProgress":I
    .end local p1    # "progress":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restore()Z
    .locals 7

    monitor-enter p0

    .line 46
    :try_start_0
    const-string v0, ".update_stat"

    invoke-static {v0}, Lcom/mega/update/util/PropertiesUtil;->readFileByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 47
    .local v0, "jsonBytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return v1

    .line 51
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 52
    .local v2, "jsonInfo":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return v1

    .line 56
    :cond_1
    :try_start_2
    const-string v3, "TaskScheduler"

    invoke-static {v3, v2}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/manager/TaskScheduler$1;

    invoke-direct {v4, p0}, Lcom/mega/update/manager/TaskScheduler$1;-><init>(Lcom/mega/update/manager/TaskScheduler;)V

    invoke-virtual {v4}, Lcom/mega/update/manager/TaskScheduler$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/info/UpdateInfo;

    iput-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    nop

    .line 64
    :try_start_4
    iget-boolean v3, v3, Lcom/mega/update/info/UpdateInfo;->running:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v3, v3, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v5, 0x16

    if-ne v3, v5, :cond_2

    .line 65
    const-string v1, "TaskScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume task "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-object v5, v5, Lcom/mega/update/info/UpdateInfo;->actions:[I

    iget-object v6, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v6, v6, Lcom/mega/update/info/UpdateInfo;->step:I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->triggerActionLocked()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v3, v3, Lcom/mega/update/info/UpdateInfo;->running:Z

    if-eqz v3, :cond_6

    .line 68
    const-string v3, "TaskScheduler"

    const-string v5, "task stop unexceptedly, maybe Sudden power outage!!"

    invoke-static {v3, v5}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput-boolean v1, v3, Lcom/mega/update/info/UpdateInfo;->running:Z

    .line 70
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    const/16 v5, 0xa

    iput v5, v3, Lcom/mega/update/info/UpdateInfo;->errCode:I

    .line 71
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v3, v3, Lcom/mega/update/info/UpdateInfo;->state:I

    if-ne v3, v4, :cond_3

    .line 72
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    const/4 v3, 0x3

    iput v3, v1, Lcom/mega/update/info/UpdateInfo;->state:I

    goto :goto_0

    .line 73
    :cond_3
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v3, v3, Lcom/mega/update/info/UpdateInfo;->state:I

    if-ne v3, v5, :cond_4

    .line 74
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    const/16 v3, 0xb

    iput v3, v1, Lcom/mega/update/info/UpdateInfo;->state:I

    goto :goto_0

    .line 75
    :cond_4
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v3, v3, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v5, 0x15

    if-ne v3, v5, :cond_5

    .line 76
    iget-object v1, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    const/16 v3, 0x19

    iput v3, v1, Lcom/mega/update/info/UpdateInfo;->state:I

    goto :goto_0

    .line 78
    :cond_5
    iget-object v3, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput v1, v3, Lcom/mega/update/info/UpdateInfo;->state:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    :cond_6
    :goto_0
    monitor-exit p0

    return v4

    .line 59
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    :try_start_5
    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 61
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->reset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 62
    monitor-exit p0

    return v1

    .line 45
    .end local v0    # "jsonBytes":[B
    .end local v2    # "jsonInfo":Ljava/lang/String;
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchState(I)Z
    .locals 3
    .param p1, "state"    # I

    monitor-enter p0

    .line 168
    :try_start_0
    const-string v0, "TaskScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch state into : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logStg(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/mega/update/manager/TaskScheduler;->isAllowedChange(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 170
    monitor-exit p0

    return v1

    .line 173
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput p1, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    .line 174
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v0, v0, Lcom/mega/update/info/UpdateInfo;->state:I

    const/16 v2, 0x19

    if-ne v0, v2, :cond_5

    .line 187
    .end local p0    # "this":Lcom/mega/update/manager/TaskScheduler;
    :cond_2
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput-boolean v1, v0, Lcom/mega/update/info/UpdateInfo;->running:Z

    goto :goto_1

    .line 177
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->turnNextLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->triggerActionLocked()V

    goto :goto_1

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput-boolean v1, v0, Lcom/mega/update/info/UpdateInfo;->running:Z

    .line 181
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iput v1, v0, Lcom/mega/update/info/UpdateInfo;->errCode:I

    .line 189
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->saveLocked()V

    .line 190
    invoke-static {}, Lcom/mega/update/manager/UpdateNotifier;->self()Lcom/mega/update/manager/UpdateNotifier;

    move-result-object v0

    invoke-direct {p0}, Lcom/mega/update/manager/TaskScheduler;->getStateLocked()Lcom/mega/update/service/UpdateState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mega/update/manager/UpdateNotifier;->notifyStateChange(Lcom/mega/update/service/UpdateState;)V

    .line 191
    iget-object v0, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget-boolean v0, v0, Lcom/mega/update/info/UpdateInfo;->running:Z

    if-nez v0, :cond_6

    .line 192
    const-string v0, "sys.update.state"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mega/update/manager/TaskScheduler;->mInfo:Lcom/mega/update/info/UpdateInfo;

    iget v2, v2, Lcom/mega/update/info/UpdateInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_6
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 167
    .end local p1    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
