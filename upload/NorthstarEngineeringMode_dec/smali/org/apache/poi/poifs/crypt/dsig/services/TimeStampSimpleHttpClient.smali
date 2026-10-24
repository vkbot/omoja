.class public Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$UnsafeTrustManager;,
        Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;,
        Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;
    }
.end annotation


# static fields
.field protected static final BASIC_AUTH:Ljava/lang/String; = "Authorization"

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final DEFAULT_TIMESTAMP_RESPONSE_SIZE:I = 0x989680

.field private static final LOG:La5/d;

.field private static MAX_TIMESTAMP_RESPONSE_SIZE:I = 0x0

.field protected static final REDIRECT_LOCATION:Ljava/lang/String; = "Location"

.field protected static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field protected config:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

.field protected contentTypeOut:Ljava/lang/String;

.field protected followRedirects:Z

.field protected final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ignoreHttpsCertificates:Z

.field protected proxy:Ljava/net/Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->LOG:La5/d;

    const v0, 0x989680

    sput v0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->MAX_TIMESTAMP_RESPONSE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->proxy:Ljava/net/Proxy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->contentTypeOut:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->ignoreHttpsCertificates:Z

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->followRedirects:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->lambda$recklessConnection$2(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->lambda$get$1(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic c([BLjava/net/HttpURLConnection;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->lambda$post$0([BLjava/net/HttpURLConnection;)V

    return-void
.end method

.method public static getMaxTimestampResponseSize()I
    .locals 1

    sget v0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->MAX_TIMESTAMP_RESPONSE_SIZE:I

    return v0
.end method

.method private static synthetic lambda$get$1(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$post$0([BLjava/net/HttpURLConnection;)V
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method private static synthetic lambda$recklessConnection$2(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static setMaxTimestampResponseSize(I)V
    .locals 0

    sput p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->MAX_TIMESTAMP_RESPONSE_SIZE:I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/m1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->isFollowRedirects()Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->handleRedirect(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;Z)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;

    move-result-object p0

    return-object p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->proxy:Ljava/net/Proxy;

    return-object p0
.end method

.method public handleRedirect(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;Z)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
    .locals 6

    const-string v0, "Error contacting TSP server "

    const-string v1, "Content-Type mismatch - expected `"

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iget-boolean v3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->ignoreHttpsCertificates:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->recklessConnection(Ljava/net/HttpURLConnection;)V

    :cond_0
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    new-instance v4, Lorg/apache/poi/poifs/crypt/dsig/services/f;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :try_start_0
    invoke-interface {p2, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;->handle(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", had status code "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->h()La5/b;

    move-result-object p1

    invoke-interface {p1, p0}, La5/b;->f(Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :pswitch_0
    const-string v0, "Location"

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    sget-object p3, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->LOG:La5/d;

    invoke-interface {p3}, La5/d;->g()La5/b;

    move-result-object p3

    const-string v1, "Received redirect: {} -> {}"

    invoke-interface {p3, p1, v1, v0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, v5}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->handleRedirect(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;Z)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :cond_1
    :try_start_1
    sget-object p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p2, "Redirect ignored - giving up: {} -> {}"

    invoke-interface {p0, p1, p2, v0}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string p1, "Content-Type"

    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->contentTypeOut:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->contentTypeOut:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', received \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->getMaxTimestampResponseSize()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->toByteArrayWithMaxLength(Ljava/io/InputStream;I)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_5

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    move-object p0, p1

    :goto_1
    new-instance p1, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;

    invoke-direct {p1, v3, p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$TimeStampSimpleHttpClientResponse;-><init>(I[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p0, :cond_6

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->config:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->contentTypeOut:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProxyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->setProxy(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspPass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isFollowRedirects()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->followRedirects:Z

    return p0
.end method

.method public isIgnoreHttpsCertificates()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->ignoreHttpsCertificates:Z

    return p0
.end method

.method public post(Ljava/lang/String;[B)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/a;

    invoke-direct {v0, p2}, Lorg/apache/poi/poifs/crypt/a;-><init>([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->isFollowRedirects()Z

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->handleRedirect(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$MethodHandler;Z)Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampHttpClient$TimeStampHttpClientResponse;

    move-result-object p0

    return-object p0
.end method

.method public recklessConnection(Ljava/net/HttpURLConnection;)V
    .locals 4

    instance-of p0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    :try_start_0
    const-string p0, "TLS"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$UnsafeTrustManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$UnsafeTrustManager;-><init>(Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {}, Lorg/apache/poi/util/RandomSingleton;->getInstance()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance p0, Lorg/apache/poi/poifs/crypt/dsig/services/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to reckless wrap connection."

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Authorization"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-static {p1, v1, p2}, La4/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Basic "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public setContentTypeIn(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->header:Ljava/util/Map;

    const-string v0, "Content-Type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentTypeOut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->contentTypeOut:Ljava/lang/String;

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->followRedirects:Z

    return-void
.end method

.method public setIgnoreHttpsCertificates(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->ignoreHttpsCertificates:Z

    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    const/16 v0, 0x50

    :cond_1
    invoke-direct {v3, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->proxy:Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampSimpleHttpClient;->proxy:Ljava/net/Proxy;

    :catch_0
    :goto_1
    return-void
.end method
