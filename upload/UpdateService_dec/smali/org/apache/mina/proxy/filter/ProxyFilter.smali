.class public Lorg/apache/mina/proxy/filter/ProxyFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProxyFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 65
    return-void
.end method

.method private getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 121
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 123
    .local v0, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 132
    return-object v0

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not managed by this filter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 110
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    .line 199
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .line 146
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 148
    .local v0, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    monitor-enter v0

    .line 149
    :try_start_0
    move-object v1, p3

    check-cast v1, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 151
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_2

    .line 156
    :cond_0
    sget-object v2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    sget-object v2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, " Data Read: {} ({})"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 163
    sget-object v2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    sget-object v2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, " Pre-handshake - passing to handler"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 167
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .line 168
    .local v2, "pos":I
    invoke-interface {v0, p1, v1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 171
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    if-eq v3, v2, :cond_4

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 174
    .end local v2    # "pos":I
    :cond_3
    goto :goto_0

    .line 172
    .restart local v2    # "pos":I
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    .line 177
    .end local v2    # "pos":I
    :cond_5
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    sget-object v2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    sget-object v2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, " Passing remaining data to next filter"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 182
    :cond_6
    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 185
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_7
    :goto_2
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    if-eqz v0, :cond_0

    .line 257
    return-void

    .line 260
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 261
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 79
    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A filter chain cannot contain more than one ProxyFilter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 94
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 95
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 358
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v3, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 360
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    sget-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 283
    :cond_0
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 285
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  get proxyIoSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 289
    :cond_1
    invoke-virtual {v0, p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setProxyFilter(Lorg/apache/mina/proxy/filter/ProxyFilter;)V

    .line 292
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v1

    .line 296
    .local v1, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    if-nez v1, :cond_4

    .line 297
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v2

    .line 299
    .local v2, "request":Lorg/apache/mina/proxy/handlers/ProxyRequest;
    instance-of v3, v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v3, :cond_3

    .line 300
    move-object v3, v2

    check-cast v3, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .line 301
    .local v3, "req":Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    invoke-virtual {v3}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 302
    new-instance v4, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    invoke-direct {v4, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    move-object v1, v4

    goto :goto_0

    .line 304
    :cond_2
    new-instance v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-direct {v4, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    move-object v1, v4

    .line 306
    .end local v3    # "req":Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    :goto_0
    goto :goto_1

    .line 307
    :cond_3
    new-instance v3, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    invoke-direct {v3, v0}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    move-object v1, v3

    .line 310
    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setHandler(Lorg/apache/mina/proxy/ProxyLogicHandler;)V

    .line 311
    invoke-interface {v1, p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 314
    .end local v2    # "request":Lorg/apache/mina/proxy/handlers/ProxyRequest;
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v2

    new-instance v3, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v4, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v3, p1, p2, v4}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v2, v3}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 316
    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 344
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/event/IoSessionEvent;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 345
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 329
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v3, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 331
    return-void
.end method

.method public writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p4, "isHandshakeData"    # Z

    .line 212
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 214
    .local v0, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    monitor-enter v0

    .line 215
    :try_start_0
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 218
    :cond_0
    if-eqz p4, :cond_2

    .line 219
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "   handshake data: {}"

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    :cond_1
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 230
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Write request on closed session. Request ignored."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_3
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Handshaking is not complete yet. Buffering write request."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 238
    :cond_4
    invoke-interface {v0, p1, p3}, Lorg/apache/mina/proxy/ProxyLogicHandler;->enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 241
    :cond_5
    :goto_0
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
