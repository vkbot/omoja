.class public abstract Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.super Ljava/lang/Object;
.source "AbstractProxyLogicHandler.java"

# interfaces
.implements Lorg/apache/mina/proxy/ProxyLogicHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private handshakeComplete:Z

.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private writeRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1
    .param p1, "proxyIoSession"    # Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    .line 72
    iput-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 73
    return-void
.end method


# virtual methods
.method protected closeSession(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method protected closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 196
    if-eqz p2, :cond_0

    .line 197
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 203
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 204
    return-void
.end method

.method public declared-synchronized enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    .line 186
    .end local p0    # "this":Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    invoke-direct {v1, p1, p2}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 181
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized flushPendingWriteRequests()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " flushPendingWriteRequests()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 161
    .end local p0    # "this":Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 162
    monitor-exit p0

    return-void

    .line 166
    .restart local p0    # "this":Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    move-object v1, v0

    .local v1, "scheduledWrite":Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    if-eqz v0, :cond_3

    .line 167
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Flushing buffered write request: {}"

    invoke-static {v1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    .end local p0    # "this":Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    invoke-static {v1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$100(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/mina/proxy/filter/ProxyFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 175
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 156
    .end local v1    # "scheduledWrite":Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    return-object v0
.end method

.method public getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method protected getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    return-object v0
.end method

.method public isHandshakeComplete()Z
    .locals 1

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    monitor-exit p0

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final setHandshakeComplete()V
    .locals 4

    .line 131
    monitor-enter p0

    .line 132
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    .line 136
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/ProxyConnector;->fireConnected(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    .line 138
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "  handshake completed"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 144
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->flushPendingSessionEvents()V

    .line 145
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->flushPendingWriteRequests()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Unable to flush pending write requests"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 133
    .end local v0    # "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "data"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .line 105
    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    invoke-direct {v0, p2}, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 107
    .local v0, "writeBuffer":Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "   session write: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_0
    new-instance v1, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    .line 112
    .local v1, "writeFuture":Lorg/apache/mina/core/future/WriteFuture;
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    new-instance v4, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v4, v0, v1}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    .line 114
    return-object v1
.end method
