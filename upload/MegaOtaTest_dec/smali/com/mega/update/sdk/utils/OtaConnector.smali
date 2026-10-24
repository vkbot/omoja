.class public Lcom/mega/update/sdk/utils/OtaConnector;
.super Ljava/lang/Object;
.source "OtaConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;,
        Lcom/mega/update/sdk/utils/OtaConnector$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OtaConnector"

.field private static sInstance:Lcom/mega/update/sdk/utils/OtaConnector;


# instance fields
.field private mCbMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/mega/update/sdk/utils/OtaConnector$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

.field private mRxCallback:Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    .line 42
    invoke-virtual {p0}, Lcom/mega/update/sdk/utils/OtaConnector;->connect()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/sdk/utils/OtaConnector;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/utils/OtaConnector;

    .line 16
    iget-object v0, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static declared-synchronized self()Lcom/mega/update/sdk/utils/OtaConnector;
    .locals 2

    const-class v0, Lcom/mega/update/sdk/utils/OtaConnector;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/mega/update/sdk/utils/OtaConnector;->sInstance:Lcom/mega/update/sdk/utils/OtaConnector;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/mega/update/sdk/utils/OtaConnector;

    invoke-direct {v1}, Lcom/mega/update/sdk/utils/OtaConnector;-><init>()V

    sput-object v1, Lcom/mega/update/sdk/utils/OtaConnector;->sInstance:Lcom/mega/update/sdk/utils/OtaConnector;

    .line 59
    :cond_0
    sget-object v1, Lcom/mega/update/sdk/utils/OtaConnector;->sInstance:Lcom/mega/update/sdk/utils/OtaConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Lcom/mega/update/sdk/utils/OtaConnector$Callback;
    .param p2, "topic"    # Ljava/lang/String;

    .line 63
    const-string v0, "callback add failed "

    const-string v1, "OtaConnector"

    const/4 v2, 0x0

    .line 65
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 66
    .local v3, "registCallback":Z
    iget-object v4, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v4, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v4, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 68
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/sdk/utils/OtaConnector$Callback;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const/4 v3, 0x1

    .line 71
    :cond_0
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/sdk/utils/OtaConnector$Callback;>;"
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 74
    .restart local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/sdk/utils/OtaConnector$Callback;>;"
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v5, p2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v3, 0x1

    .line 78
    :goto_0
    if-eqz v3, :cond_3

    .line 80
    :try_start_0
    iget-object v5, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    iget-object v6, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mRxCallback:Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;

    invoke-interface {v5, p2, v6}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    .line 84
    if-eqz v2, :cond_3

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 84
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 81
    :catch_0
    move-exception v5

    .line 82
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v5    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_3

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 84
    :goto_2
    if-eqz v2, :cond_2

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    throw v5

    .line 89
    :cond_3
    :goto_3
    return-void
.end method

.method public connect()V
    .locals 3

    .line 47
    :try_start_0
    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    .line 48
    new-instance v0, Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;

    invoke-direct {v0, p0}, Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;-><init>(Lcom/mega/update/sdk/utils/OtaConnector;)V

    iput-object v0, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mRxCallback:Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 51
    const-string v1, "OtaConnector"

    const-string v2, "init failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lcom/mega/update/sdk/utils/OtaConnector$Callback;
    .param p2, "topic"    # Ljava/lang/String;

    .line 92
    const-string v0, "callback add failed "

    const-string v1, "OtaConnector"

    const/4 v2, 0x0

    .line 93
    .local v2, "ret":I
    iget-object v3, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 95
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/sdk/utils/OtaConnector$Callback;>;"
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    :try_start_0
    iget-object v4, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    iget-object v5, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mRxCallback:Lcom/mega/update/sdk/utils/OtaConnector$RxCallback;

    invoke-interface {v4, p2, v5}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 102
    if-eqz v2, :cond_1

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_1

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 102
    :goto_1
    if-eqz v2, :cond_0

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    throw v4

    .line 108
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/mega/update/sdk/utils/OtaConnector$Callback;>;"
    :cond_1
    :goto_2
    return-void
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

    .line 111
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/mega/update/sdk/utils/OtaUtil;->getStringFromArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OtaConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mega/update/sdk/utils/OtaConnector;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    invoke-interface {v2, p1, p2}, Lvendor/mega/message_center/V1_0/IMessageCenter;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    return v0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 120
    const-string v3, "send fail"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v0
.end method
