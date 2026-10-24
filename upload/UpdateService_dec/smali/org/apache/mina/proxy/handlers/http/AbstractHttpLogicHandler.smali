.class public abstract Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.super Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.source "AbstractHttpLogicHandler.java"


# static fields
.field private static final CRLF_DELIMITER:[B

.field private static final DECODER:Ljava/lang/String;

.field private static final HTTP_DELIMITER:[B

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private contentLength:I

.field private entityBodyLimitPosition:I

.field private entityBodyStartPosition:I

.field private hasChunkedData:Z

.field private parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

.field private responseData:Lorg/apache/mina/core/buffer/IoBuffer;

.field private waitingChunkedData:Z

.field private waitingFooters:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".Decoder"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 66
    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 107
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "x2"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    return-void
.end method

.method private reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 342
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Reconnecting to proxy ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 349
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;-><init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/proxy/session/ProxyIoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/ProxyConnector;->connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    .line 369
    return-void
.end method

.method private writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 320
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->toHttpString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    .line 323
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    sget-object v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "   write:\n{}"

    const-string v4, "\r"

    const-string v5, "\\r"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, "\\n\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    nop

    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Unable to send HTTP request: "

    invoke-virtual {p0, v1, v0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;
    .locals 10
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "  parseResponse()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 384
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "responseLines":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "statusLine":[Ljava/lang/String;
    array-length v3, v2

    const-string v5, "). Response: "

    if-lt v3, v4, :cond_3

    .line 396
    const/4 v3, 0x1

    aget-object v6, v2, v3

    const-string v7, "^\\d\\d\\d.*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 403
    aget-object v7, v0, v6

    const-string v8, ":\\s?"

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "args":[Ljava/lang/String;
    aget-object v8, v7, v1

    aget-object v9, v7, v3

    invoke-static {v5, v8, v9, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 402
    .end local v7    # "args":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 407
    .end local v6    # "i":I
    :cond_1
    new-instance v4, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    aget-object v1, v2, v1

    aget-object v3, v2, v3

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v4

    .line 397
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid response code ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid response status line ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 10
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "buf"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " messageReceived()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 122
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    .line 123
    .local v0, "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    if-nez v0, :cond_1

    .line 124
    new-instance v1, Lorg/apache/mina/proxy/utils/IoBufferDecoder;

    sget-object v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-direct {v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;-><init>([B)V

    move-object v0, v1

    .line 125
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->DECODER:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 131
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-nez v1, :cond_2

    .line 133
    monitor-exit p0

    return-void

    .line 137
    .restart local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "responseHeader":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    iput v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    .line 140
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    sget-object v4, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "  response header received:\n{}"

    const-string v6, "\r"

    const-string v7, "\\r"

    .line 142
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, "\\n\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->decodeResponse(Ljava/lang/String;)Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 149
    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 150
    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0x133

    if-gt v4, v5, :cond_4

    goto :goto_0

    .line 156
    :cond_4
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Length"

    invoke-static {v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "contentLengthHeader":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 160
    iput v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 163
    invoke-virtual {v0, v5, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    goto :goto_1

    .line 151
    .end local v4    # "contentLengthHeader":Ljava/lang/String;
    :cond_6
    :goto_0
    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 152
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->setHandshakeComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 167
    .end local v1    # "responseHeader":Ljava/lang/String;
    :cond_7
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-nez v1, :cond_b

    .line 168
    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-lez v1, :cond_9

    .line 169
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .local v1, "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v1, :cond_8

    .line 171
    monitor-exit p0

    return-void

    .line 173
    .restart local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_8
    :try_start_4
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 174
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 175
    iput v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 178
    .end local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_9
    const-string v1, "chunked"

    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Transfer-Encoding"

    invoke-static {v4, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 181
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Retrieving additional http response chunks"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 185
    :cond_a
    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    .line 186
    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    .line 190
    :cond_b
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    if-eqz v1, :cond_14

    .line 192
    :goto_2
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_11

    .line 193
    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v1, :cond_e

    .line 194
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 195
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    .restart local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v1, :cond_c

    .line 197
    monitor-exit p0

    return-void

    .line 200
    .restart local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "chunkSize":Ljava/lang/String;
    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 202
    .local v6, "pos":I
    if-ltz v6, :cond_d

    .line 203
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_3

    .line 205
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 207
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 208
    if-lez v7, :cond_e

    .line 209
    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 210
    invoke-virtual {v0, v7, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    .line 214
    .end local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "chunkSize":Ljava/lang/String;
    .end local v6    # "pos":I
    :cond_e
    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    if-nez v1, :cond_f

    .line 215
    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingChunkedData:Z

    .line 216
    iput-boolean v2, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    .line 217
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    .line 218
    goto :goto_4

    .line 221
    :cond_f
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    .restart local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v1, :cond_10

    .line 223
    monitor-exit p0

    return-void

    .line 225
    .restart local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_10
    :try_start_6
    iput v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 226
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v4, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 227
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 228
    nop

    .end local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    goto/16 :goto_2

    .line 231
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_11
    :goto_4
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    if-eqz v1, :cond_14

    .line 232
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 233
    invoke-virtual {v0, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    .restart local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    if-nez v1, :cond_12

    .line 235
    monitor-exit p0

    return-void

    .line 238
    .restart local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_12
    :try_start_7
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v5

    if-ne v5, v4, :cond_13

    .line 239
    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->waitingFooters:Z

    .line 240
    goto :goto_5

    .line 244
    .end local p0    # "this":Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
    :cond_13
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "footer":Ljava/lang/String;
    const-string v6, ":\\s?"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "f":[Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v7

    aget-object v8, v6, v3

    aget-object v9, v6, v2

    invoke-static {v7, v8, v9, v3}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v7, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 248
    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    sget-object v8, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->CRLF_DELIMITER:[B

    invoke-virtual {v7, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 249
    nop

    .end local v1    # "tmp":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "footer":Ljava/lang/String;
    .end local v6    # "f":[Ljava/lang/String;
    goto :goto_4

    .line 252
    :cond_14
    :goto_5
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 254
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 255
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "  end of response received:\n{}"

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 256
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-interface {v1, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    :cond_15
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyStartPosition:I

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 261
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    iget v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->entityBodyLimitPosition:I

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 262
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->setBody(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->responseData:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 268
    iget-object v4, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {p0, v4}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    .line 270
    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->parsedResponse:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    .line 271
    iput-boolean v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->hasChunkedData:Z

    .line 272
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->contentLength:I

    .line 273
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->HTTP_DELIMITER:[B

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    .line 275
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-nez v1, :cond_16

    .line 276
    invoke-virtual {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    :cond_16
    nop

    .line 285
    monitor-exit p0

    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_8
    instance-of v2, v1, Lorg/apache/mina/proxy/ProxyAuthException;

    if-eqz v2, :cond_17

    .line 280
    move-object v2, v1

    check-cast v2, Lorg/apache/mina/proxy/ProxyAuthException;

    throw v2

    .line 283
    :cond_17
    new-instance v2, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v3, "Handshake failed"

    invoke-direct {v2, v3, v1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 117
    .end local v0    # "decoder":Lorg/apache/mina/proxy/utils/IoBufferDecoder;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "request"    # Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    .line 303
    invoke-virtual {p0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 305
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isReconnectionNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->reconnect(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest0(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    .line 310
    :goto_0
    return-void
.end method
