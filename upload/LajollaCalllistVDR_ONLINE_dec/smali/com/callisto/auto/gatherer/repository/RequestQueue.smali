.class public Lcom/callisto/auto/gatherer/repository/RequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestQueue"

.field private static instance:Lcom/callisto/auto/gatherer/repository/RequestQueue;


# instance fields
.field private apiService:Lcom/callisto/auto/gatherer/api/ApiService;

.field private currentCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/callisto/auto/gatherer/model/HostResponse;",
            ">;"
        }
    .end annotation
.end field

.field private requestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/callisto/auto/gatherer/model/BaseRequest;",
            ">;"
        }
    .end annotation
.end field

.field private retryCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->requestQueue:Ljava/util/Queue;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->getInstance()Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->getApiService()Lcom/callisto/auto/gatherer/api/ApiService;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->apiService:Lcom/callisto/auto/gatherer/api/ApiService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->retryCount:I

    return-void
.end method

.method public static synthetic access$002(Lcom/callisto/auto/gatherer/repository/RequestQueue;Lretrofit2/Call;)Lretrofit2/Call;
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->currentCall:Lretrofit2/Call;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/callisto/auto/gatherer/repository/RequestQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->executeNextRequest()V

    return-void
.end method

.method public static synthetic access$200(Lcom/callisto/auto/gatherer/repository/RequestQueue;)I
    .locals 0

    iget p0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->retryCount:I

    return p0
.end method

.method public static synthetic access$202(Lcom/callisto/auto/gatherer/repository/RequestQueue;I)I
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->retryCount:I

    return p1
.end method

.method public static synthetic access$208(Lcom/callisto/auto/gatherer/repository/RequestQueue;)I
    .locals 2

    iget v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->retryCount:I

    return v0
.end method

.method private declared-synchronized executeNextRequest()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->apiService:Lcom/callisto/auto/gatherer/api/ApiService;

    invoke-interface {v1, v0}, Lcom/callisto/auto/gatherer/api/ApiService;->reportData(Lcom/callisto/auto/gatherer/model/BaseRequest;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->currentCall:Lretrofit2/Call;

    new-instance v1, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;

    invoke-direct {v1, p0}, Lcom/callisto/auto/gatherer/repository/RequestQueue$1;-><init>(Lcom/callisto/auto/gatherer/repository/RequestQueue;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/callisto/auto/gatherer/repository/RequestQueue;
    .locals 2

    const-class v0, Lcom/callisto/auto/gatherer/repository/RequestQueue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callisto/auto/gatherer/repository/RequestQueue;->instance:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    if-nez v1, :cond_0

    new-instance v1, Lcom/callisto/auto/gatherer/repository/RequestQueue;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/repository/RequestQueue;-><init>()V

    sput-object v1, Lcom/callisto/auto/gatherer/repository/RequestQueue;->instance:Lcom/callisto/auto/gatherer/repository/RequestQueue;

    :cond_0
    sget-object v1, Lcom/callisto/auto/gatherer/repository/RequestQueue;->instance:Lcom/callisto/auto/gatherer/repository/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->currentCall:Lretrofit2/Call;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/callisto/auto/gatherer/repository/RequestQueue;->executeNextRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelAllRequests()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->requestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->currentCall:Lretrofit2/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->currentCall:Lretrofit2/Call;

    const/4 v0, 0x0

    iput v0, p0, Lcom/callisto/auto/gatherer/repository/RequestQueue;->retryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
