.class public Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
.super Lorg/apache/mina/proxy/handlers/ProxyRequest;
.source "HttpProxyRequest.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private final httpURI:Ljava/lang/String;

.field private final httpVerb:Ljava/lang/String;

.field private httpVersion:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "httpURI"    # Ljava/lang/String;

    .line 122
    const-string v0, "GET"

    const-string v1, "HTTP/1.0"

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "httpURI"    # Ljava/lang/String;
    .param p2, "httpVersion"    # Ljava/lang/String;

    .line 133
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "httpURI"    # Ljava/lang/String;
    .param p3, "httpVersion"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "httpVerb"    # Ljava/lang/String;
    .param p2, "httpURI"    # Ljava/lang/String;
    .param p3, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 159
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    .line 160
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;

    .line 80
    const-string v0, "HTTP/1.0"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;)V
    .locals 1
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "httpVersion"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;
    .param p2, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 103
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lorg/apache/mina/proxy/handlers/ProxyRequest;-><init>()V

    .line 104
    const-string v0, "CONNECT"

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    .line 111
    :goto_0
    iput-object p2, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    .line 113
    return-void
.end method


# virtual methods
.method public varargs checkRequiredProperties([Ljava/lang/String;)V
    .locals 5
    .param p1, "propNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 261
    .local v3, "propertyName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 269
    return-void

    .line 266
    :cond_2
    const-string v1, "property(ies) missing in request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v1, Lorg/apache/mina/proxy/ProxyAuthException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final declared-synchronized getHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    .line 198
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 200
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/net/MalformedURLException;
    :try_start_2
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Malformed URL"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->host:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getHttpURI()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpURI:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpVerb()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVerb:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 232
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->headers:Ljava/util/Map;

    .line 233
    return-void
.end method

.method public setHttpVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpVersion"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->httpVersion:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->properties:Ljava/util/Map;

    .line 249
    return-void
.end method

.method public toHttpString()Ljava/lang/String;
    .locals 8

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const/4 v2, 0x0

    .line 282
    .local v2, "hostHeaderFound":Z
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 283
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 284
    .local v4, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v2, :cond_0

    .line 285
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "host"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 288
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_1

    .line 291
    .end local v4    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    goto :goto_0

    .line 293
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    const-string v3, "Host: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
