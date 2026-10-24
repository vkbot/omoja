.class public Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$RxCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyNetworkRequest"

.field private static instance:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;


# instance fields
.field private UARTRPC_SECURE_TOPIC_REQ:Ljava/lang/String;

.field private UARTRPC_TEST_TOPIC_REQ:Ljava/lang/String;

.field private UARTRPC_TEST_TOPIC_RESP:Ljava/lang/String;

.field private mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

.field private mRxCallback:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$RxCallback;

.field private sendMsg:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uartrpc_test/resp"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->UARTRPC_TEST_TOPIC_RESP:Ljava/lang/String;

    const-string v0, "uartrpc_test/req"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->UARTRPC_TEST_TOPIC_REQ:Ljava/lang/String;

    const-string v0, "secureLog/logging"

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->UARTRPC_SECURE_TOPIC_REQ:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendMsg:I

    invoke-virtual {p0}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->connect()Z

    return-void
.end method

.method public static getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;
    .locals 2

    sget-object v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->instance:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    if-nez v0, :cond_1

    const-class v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->instance:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    if-nez v1, :cond_0

    new-instance v1, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;-><init>()V

    sput-object v1, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->instance:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->instance:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    return-object v0
.end method


# virtual methods
.method public connect()Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$RxCallback;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$RxCallback;-><init>(Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->mRxCallback:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$RxCallback;

    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "MyNetworkRequest"

    const-string v0, "connect: failed. "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->getInstance()Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->getApiService()Lcom/callisto/auto/gatherer/api/ApiService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callisto/auto/gatherer/api/ApiService;->reportData(Lcom/callisto/auto/gatherer/model/BaseRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$1;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest$1;-><init>(Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendSecureLog(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "MsgCenter sendMsg is:"

    iget-object v1, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->mMsgCenter:Lvendor/mega/message_center/V1_0/IMessageCenter;

    const-string v2, "MyNetworkRequest"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "MsgCenter is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->UARTRPC_SECURE_TOPIC_REQ:Ljava/lang/String;

    invoke-interface {v1, v4, p1}, Lvendor/mega/message_center/V1_0/IMessageCenter;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendMsg:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendMsg:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->sendMsg:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method
