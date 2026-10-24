.class public Lcom/mega/update/rpc/MegaConnector;
.super Ljava/lang/Object;
.source "MegaConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/rpc/MegaConnector$ValueResult;,
        Lcom/mega/update/rpc/MegaConnector$ConnectException;,
        Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;,
        Lcom/mega/update/rpc/MegaConnector$RxCallback;,
        Lcom/mega/update/rpc/MegaConnector$Callback;
    }
.end annotation


# static fields
.field private static final SERVICE_RECONNECT_DELAY_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MegaConnector"

.field private static final WAIT_FOR_HAL_TIMEOUT_MS:J = 0x1388L

.field private static sInstance:Lcom/mega/update/rpc/MegaConnector;


# instance fields
.field private mCbMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/mega/update/rpc/MegaConnector$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

.field private final mMsgDeathRecipient:Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;

.field private mRxCallback:Lcom/mega/update/rpc/MegaConnector$RxCallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;-><init>(Lcom/mega/update/rpc/MegaConnector;Lcom/mega/update/rpc/MegaConnector$1;)V

    iput-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgDeathRecipient:Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$RxCallback;

    invoke-direct {v0, p0}, Lcom/mega/update/rpc/MegaConnector$RxCallback;-><init>(Lcom/mega/update/rpc/MegaConnector;)V

    iput-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mRxCallback:Lcom/mega/update/rpc/MegaConnector$RxCallback;

    .line 72
    iput-object v1, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 73
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/mega/update/rpc/MegaConnector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 23
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/rpc/MegaConnector;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 23
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/update/rpc/MegaConnector;)Lvendor/mega/message_center/V1_0/IMessageCenter;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 23
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mega/update/rpc/MegaConnector;Lvendor/mega/message_center/V1_0/IMessageCenter;)Lvendor/mega/message_center/V1_0/IMessageCenter;
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/rpc/MegaConnector;
    .param p1, "x1"    # Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 23
    iput-object p1, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mega/update/rpc/MegaConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/rpc/MegaConnector;

    .line 23
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->scheduleServiceReconnectionLocked()V

    return-void
.end method

.method private declared-synchronized getService()Lvendor/mega/message_center/V1_0/IMessageCenter;
    .locals 4

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 79
    :try_start_1
    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    .line 80
    .local v0, "msgCenter":Lvendor/mega/message_center/V1_0/IMessageCenter;
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgDeathRecipient:Lcom/mega/update/rpc/MegaConnector$MsgDeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/mega/message_center/V1_0/IMessageCenter;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iput-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 87
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->registerAllCallBack()V

    .line 88
    const-string v1, "MegaConnector"

    const-string v2, "Service is connected"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "msgCenter":Lvendor/mega/message_center/V1_0/IMessageCenter;
    goto :goto_0

    .line 84
    .end local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    .restart local v0    # "msgCenter":Lvendor/mega/message_center/V1_0/IMessageCenter;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to link to IMessageCenter service death notifications"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IMessageCenter service not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v0    # "msgCenter":Lvendor/mega/message_center/V1_0/IMessageCenter;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "exception":Ljava/util/NoSuchElementException;
    :try_start_2
    const-string v1, "MegaConnector"

    const-string v2, "IMessageCenter service not registered yet"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v0    # "exception":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "exp":Landroid/os/RemoteException;
    const-string v1, "MegaConnector"

    const-string v2, "Failed to get IMessageCenter service"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v0    # "exp":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerAllCallBack()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 114
    const-string v0, "MegaConnector"

    const-string v1, "registerAllCallBack"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v3

    iget-object v4, p0, Lcom/mega/update/rpc/MegaConnector;->mRxCallback:Lcom/mega/update/rpc/MegaConnector$RxCallback;

    invoke-interface {v3, v2, v4}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v3

    .line 119
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 120
    const-string v4, "MegaConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " register failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ret":I
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    monitor-exit v0

    .line 127
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .restart local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MegaConnector"

    const-string v2, "Failed to call registerAllCallBack"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private scheduleServiceReconnectionLocked()V
    .locals 7

    .line 99
    const-string v0, "MegaConnector"

    const-string v1, "Reconnecting service in 500 ms"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mega/update/rpc/MegaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 101
    .local v0, "msgCenter":Lvendor/mega/message_center/V1_0/IMessageCenter;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 102
    .local v1, "start":J
    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 104
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 109
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 106
    .local v3, "exception":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Sleep was interrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 111
    .end local v3    # "exception":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public static declared-synchronized self()Lcom/mega/update/rpc/MegaConnector;
    .locals 2

    const-class v0, Lcom/mega/update/rpc/MegaConnector;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/mega/update/rpc/MegaConnector;->sInstance:Lcom/mega/update/rpc/MegaConnector;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lcom/mega/update/rpc/MegaConnector;

    invoke-direct {v1}, Lcom/mega/update/rpc/MegaConnector;-><init>()V

    sput-object v1, Lcom/mega/update/rpc/MegaConnector;->sInstance:Lcom/mega/update/rpc/MegaConnector;

    .line 134
    :cond_0
    sget-object v1, Lcom/mega/update/rpc/MegaConnector;->sInstance:Lcom/mega/update/rpc/MegaConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lcom/mega/update/rpc/MegaConnector$Callback;
    .param p2, "topic"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "ret":I
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/rpc/MegaConnector$Callback;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v3, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/rpc/MegaConnector$Callback;>;"
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v2

    iget-object v3, p0, Lcom/mega/update/rpc/MegaConnector;->mRxCallback:Lcom/mega/update/rpc/MegaConnector$RxCallback;

    invoke-interface {v2, p2, v3}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 152
    if-eqz v0, :cond_1

    .line 153
    :try_start_2
    const-string v2, "MegaConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback add failed, topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 152
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .end local v2    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_1

    .line 153
    :try_start_4
    const-string v2, "MegaConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback add failed, topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 156
    :cond_1
    :goto_2
    monitor-exit v1

    .line 157
    return-void

    .line 152
    :goto_3
    if-eqz v0, :cond_2

    .line 153
    const-string v3, "MegaConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback add failed, topic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    nop

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    .end local p1    # "callback":Lcom/mega/update/rpc/MegaConnector$Callback;
    .end local p2    # "topic":Ljava/lang/String;
    throw v2

    .line 156
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    .restart local p1    # "callback":Lcom/mega/update/rpc/MegaConnector$Callback;
    .restart local p2    # "topic":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public removeCallback(Lcom/mega/update/rpc/MegaConnector$Callback;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lcom/mega/update/rpc/MegaConnector$Callback;
    .param p2, "topic"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "ret":I
    iget-object v1, p0, Lcom/mega/update/rpc/MegaConnector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/mega/update/rpc/MegaConnector;->mCbMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 167
    :try_start_1
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v2

    iget-object v3, p0, Lcom/mega/update/rpc/MegaConnector;->mRxCallback:Lcom/mega/update/rpc/MegaConnector$RxCallback;

    invoke-interface {v2, p2, v3}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 171
    if-eqz v0, :cond_2

    .line 172
    :try_start_2
    const-string v2, "MegaConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback remove failed , topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 171
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .end local v2    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_2

    .line 172
    :try_start_4
    const-string v2, "MegaConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback remove failed , topic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 171
    :goto_1
    if-eqz v0, :cond_1

    .line 172
    const-string v3, "MegaConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback remove failed , topic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    nop

    .end local v0    # "ret":I
    .end local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    .end local p1    # "callback":Lcom/mega/update/rpc/MegaConnector$Callback;
    .end local p2    # "topic":Ljava/lang/String;
    throw v2

    .line 176
    .restart local v0    # "ret":I
    .restart local p0    # "this":Lcom/mega/update/rpc/MegaConnector;
    .restart local p1    # "callback":Lcom/mega/update/rpc/MegaConnector$Callback;
    .restart local p2    # "topic":Ljava/lang/String;
    :cond_2
    :goto_2
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 17
    .param p1, "req"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "res"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mega/update/rpc/MegaConnector$ConnectException;
        }
    .end annotation

    .line 217
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const-string v6, "unregisterRxCallback failed "

    const-string v7, "MegaConnector"

    const-string v8, "registerRxCallback failed "

    const-string v9, ", ctx=("

    const-string v10, ")"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " response: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " timeout: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " value: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, "req_ctx":Ljava/lang/String;
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$ValueResult;

    const/4 v12, 0x0

    invoke-direct {v0, v12}, Lcom/mega/update/rpc/MegaConnector$ValueResult;-><init>(Lcom/mega/update/rpc/MegaConnector$1;)V

    move-object v12, v0

    .line 219
    .local v12, "wapper":Lcom/mega/update/rpc/MegaConnector$ValueResult;, "Lcom/mega/update/rpc/MegaConnector$ValueResult<Ljava/util/ArrayList<Ljava/lang/Byte;>;>;"
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$1;

    invoke-direct {v0, v1, v12}, Lcom/mega/update/rpc/MegaConnector$1;-><init>(Lcom/mega/update/rpc/MegaConnector;Lcom/mega/update/rpc/MegaConnector$ValueResult;)V

    move-object v13, v0

    .line 233
    .local v13, "resCallback":Lvendor/mega/message_center/V1_0/IMsgRxCallback$Stub;
    const/4 v14, -0x1

    .line 235
    .local v14, "ret":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    invoke-interface {v0, v4, v13}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v14, v0

    .line 239
    if-nez v14, :cond_0

    :goto_0
    goto :goto_1

    .line 240
    :cond_0
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$ConnectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/mega/update/rpc/MegaConnector$ConnectException;-><init>(Lcom/mega/update/rpc/MegaConnector;Ljava/lang/String;)V

    throw v0

    .line 239
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    if-nez v14, :cond_5

    goto :goto_0

    .line 244
    :goto_1
    const/4 v8, 0x0

    .line 246
    .local v8, "send_ret":Z
    const-wide/16 v15, 0x3e8

    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    .line 247
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v15, 0x1

    invoke-direct {v0, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v12, Lcom/mega/update/rpc/MegaConnector$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    .line 248
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v8, v0

    .line 249
    iget-object v0, v12, Lcom/mega/update/rpc/MegaConnector$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    int-to-long v2, v5

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v15}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    goto :goto_2

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    invoke-interface {v0, v4, v13}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v14, v0

    .line 259
    if-eqz v14, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 259
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 256
    :catch_2
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v14, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 263
    :cond_1
    :goto_4
    if-eqz v8, :cond_3

    .line 266
    iget-object v0, v12, Lcom/mega/update/rpc/MegaConnector$ValueResult;->ret:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, v12, Lcom/mega/update/rpc/MegaConnector$ValueResult;->ret:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 267
    :cond_2
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response timeout, ctx=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector$ConnectException;-><init>(Lcom/mega/update/rpc/MegaConnector;Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send request failed, ctx=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector$ConnectException;-><init>(Lcom/mega/update/rpc/MegaConnector;Ljava/lang/String;)V

    throw v0

    .line 259
    :goto_5
    if-eqz v14, :cond_4

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_4
    throw v0

    .line 240
    .end local v8    # "send_ret":Z
    :cond_5
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector$ConnectException;-><init>(Lcom/mega/update/rpc/MegaConnector;Ljava/lang/String;)V

    throw v0

    .line 239
    :goto_6
    if-eqz v14, :cond_6

    .line 240
    new-instance v0, Lcom/mega/update/rpc/MegaConnector$ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mega/update/rpc/MegaConnector$ConnectException;-><init>(Lcom/mega/update/rpc/MegaConnector;Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_6
    throw v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .line 182
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public send(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 187
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>> Mega, topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaConnector"

    invoke-static {v1, v0}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/rpc/MegaConnector;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/mega/message_center/V1_0/IMessageCenter;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_0
    return v0

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 196
    const-string v3, "send fail"

    invoke-static {v1, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return v0
.end method
