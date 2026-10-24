.class public Lcom/callisto/auto/gatherer/repository/RetrofitClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RetrofitClient"

.field private static final TIMEOUT_SECONDS:I = 0x1e

.field private static volatile instance:Lcom/callisto/auto/gatherer/repository/RetrofitClient;


# instance fields
.field private retrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->createHeaderInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->createResponseInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "http://192.168.225.1:18080/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->lambda$createRetryInterceptor$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->lambda$createHeaderInterceptor$1(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->lambda$createResponseInterceptor$2(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private createHeaderInterceptor()Lokhttp3/Interceptor;
    .locals 2

    new-instance v0, Lcom/callisto/auto/gatherer/repository/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/callisto/auto/gatherer/repository/a;-><init>(I)V

    return-object v0
.end method

.method private createLoggingInterceptor()Lokhttp3/Interceptor;
    .locals 2

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method

.method private createResponseInterceptor()Lokhttp3/Interceptor;
    .locals 2

    new-instance v0, Lcom/callisto/auto/gatherer/repository/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/callisto/auto/gatherer/repository/a;-><init>(I)V

    return-object v0
.end method

.method private createRetryInterceptor()Lokhttp3/Interceptor;
    .locals 2

    new-instance v0, Lcom/callisto/auto/gatherer/repository/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callisto/auto/gatherer/repository/a;-><init>(I)V

    return-object v0
.end method

.method public static getInstance()Lcom/callisto/auto/gatherer/repository/RetrofitClient;
    .locals 2

    sget-object v0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->instance:Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->instance:Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    invoke-direct {v1}, Lcom/callisto/auto/gatherer/repository/RetrofitClient;-><init>()V

    sput-object v1, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->instance:Lcom/callisto/auto/gatherer/repository/RetrofitClient;

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
    sget-object v0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->instance:Lcom/callisto/auto/gatherer/repository/RetrofitClient;

    return-object v0
.end method

.method private static synthetic lambda$createHeaderInterceptor$1(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lx2/k;

    invoke-direct {v2}, Lx2/k;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/RequestBody;->writeTo(Lx2/l;)V

    invoke-virtual {v2}, Lx2/k;->V()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "User-Agent"

    const-string v3, "ICC"

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createResponseInterceptor$2(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    sget-object v0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static synthetic lambda$createRetryInterceptor$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    move-exception v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_2
    throw v1
.end method


# virtual methods
.method public getApiService()Lcom/callisto/auto/gatherer/api/ApiService;
    .locals 2

    iget-object v0, p0, Lcom/callisto/auto/gatherer/repository/RetrofitClient;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/callisto/auto/gatherer/api/ApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callisto/auto/gatherer/api/ApiService;

    return-object v0
.end method
