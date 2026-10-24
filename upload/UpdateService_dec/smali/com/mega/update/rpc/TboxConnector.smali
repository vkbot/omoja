.class public Lcom/mega/update/rpc/TboxConnector;
.super Ljava/lang/Object;
.source "TboxConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;,
        Lcom/mega/update/rpc/TboxConnector$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/mega/update/rpc/TboxConnector;


# instance fields
.field private mCbMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/mega/update/rpc/TboxConnector$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mRxCallback:Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;

.field private mTboxProtocol:Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/mega/update/rpc/TboxConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/mega/update/rpc/TboxConnector;->mInstance:Lcom/mega/update/rpc/TboxConnector;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;

    invoke-direct {v0, p0}, Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;-><init>(Lcom/mega/update/rpc/TboxConnector;)V

    iput-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mRxCallback:Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mCbMap:Ljava/util/Hashtable;

    .line 23
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/update/rpc/TboxConnector;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/rpc/TboxConnector;

    .line 14
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mCbMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/rpc/TboxConnector;)Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/rpc/TboxConnector;

    .line 14
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mTboxProtocol:Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mega/update/rpc/TboxConnector;Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;)Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    .locals 0
    .param p0, "x0"    # Lcom/mega/update/rpc/TboxConnector;
    .param p1, "x1"    # Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    .line 14
    iput-object p1, p0, Lcom/mega/update/rpc/TboxConnector;->mTboxProtocol:Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/mega/update/rpc/TboxConnector;
    .locals 2

    const-class v0, Lcom/mega/update/rpc/TboxConnector;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/mega/update/rpc/TboxConnector;->mInstance:Lcom/mega/update/rpc/TboxConnector;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/mega/update/rpc/TboxConnector;

    invoke-direct {v1}, Lcom/mega/update/rpc/TboxConnector;-><init>()V

    sput-object v1, Lcom/mega/update/rpc/TboxConnector;->mInstance:Lcom/mega/update/rpc/TboxConnector;

    .line 67
    :cond_0
    sget-object v1, Lcom/mega/update/rpc/TboxConnector;->mInstance:Lcom/mega/update/rpc/TboxConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getTboxProtocol()Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mTboxProtocol:Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->getService(Z)Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mTboxProtocol:Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    .line 45
    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Lcom/mega/update/rpc/TboxConnector$1;

    invoke-direct {v1, p0}, Lcom/mega/update/rpc/TboxConnector$1;-><init>(Lcom/mega/update/rpc/TboxConnector;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 60
    .end local p0    # "this":Lcom/mega/update/rpc/TboxConnector;
    :cond_0
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mTboxProtocol:Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addCallback(Ljava/lang/String;Lcom/mega/update/rpc/TboxConnector$Callback;)V
    .locals 3
    .param p1, "eventID"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mega/update/rpc/TboxConnector$Callback;

    .line 71
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/rpc/TboxConnector;->getTboxProtocol()Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    move-result-object v0

    .line 74
    .local v0, "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/mega/update/rpc/TboxConnector;->mRxCallback:Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;

    invoke-interface {v0, p1, v1}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->registerRxCallback(Ljava/lang/String;Lvendor/mega/tboxprotocol/V1_0/ITboxRxCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    :cond_0
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    sget-object v1, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    const-string v2, "addCallback failed"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public isTboxConnected()Z
    .locals 3

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/rpc/TboxConnector;->getTboxProtocol()Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    move-result-object v0

    .line 99
    .local v0, "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->isTboxConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 105
    .end local v0    # "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    :cond_0
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    sget-object v1, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    const-string v2, "isTboxConnected failed"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventID"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/mega/update/rpc/TboxConnector;->mCbMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/rpc/TboxConnector;->getTboxProtocol()Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    move-result-object v0

    .line 87
    .local v0, "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mega/update/rpc/TboxConnector;->mRxCallback:Lcom/mega/update/rpc/TboxConnector$TboxRxCallback;

    invoke-interface {v0, p1, v1}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/tboxprotocol/V1_0/ITboxRxCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    :cond_0
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    sget-object v1, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    const-string v2, "removeCallback failed"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "eventID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 110
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    sget-object v0, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>> send eventID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/mega/update/rpc/TboxConnector;->getTboxProtocol()Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;

    move-result-object v1

    .line 113
    .local v1, "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    if-eqz v1, :cond_1

    .line 114
    invoke-interface {v1, p1, p2}, Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 115
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_0
    return v0

    .line 123
    .end local v1    # "tp":Lvendor/mega/tboxprotocol/V1_0/ITboxProtocol;
    :cond_1
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    sget-object v2, Lcom/mega/update/rpc/TboxConnector;->TAG:Ljava/lang/String;

    const-string v3, "send failed"

    invoke-static {v2, v3}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
