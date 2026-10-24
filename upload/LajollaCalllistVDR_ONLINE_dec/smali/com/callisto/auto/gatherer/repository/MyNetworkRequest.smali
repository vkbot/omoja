.class public Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyNetworkRequest"

.field private static instance:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
